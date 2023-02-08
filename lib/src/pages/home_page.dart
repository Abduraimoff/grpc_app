import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/src/bloc/bus_cubit/bus_cubit.dart';
import 'package:test_app/src/bloc/get_customer_cubit/get_customer_cubit.dart';
import 'package:test_app/src/generated/profile.pb.dart';
import 'package:test_app/src/pages/add_customer_page.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[200],
        title: const Text('Test App'),
        centerTitle: true,
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (context) => const AddCustomerPage(),
          );
          Navigator.push(context, route);
        },
        backgroundColor: Colors.blue[300],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _bodyWidget() {
    return BlocConsumer<BusCubit, BusState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is BusError) {
          return const Center(child: Text("ERROR"));
        }
        if (state is BusSuccess) {
          final data = state.data;
          return RefreshIndicator(
            onRefresh: () async {
              context.read<BusCubit>().loadBuses();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 300,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final bus = data.results[index];
                        return BusCard(bus: bus);
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      itemCount: data.results.length,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const ProfileWidget(),
                ],
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetCustomerCubit, GetCustomerState>(
      listener: (context, state) {
        if (state is GetCustomerError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error ?? 'Error'),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is GetCustomerLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is GetCustomerSuccess) {
          final data = state.data;

          return Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4facfe),
                    Color(0xFF00f2fe),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Id:  ${data?.id.substring(0, 3)}',
                    style: _style2(),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Username: ${data?.username}',
                    style: _style2(),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'First name: ${data?.firstName}',
                    style: _style2(),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Last name: ${data?.lastName}',
                    style: _style2(),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Phone number: ${data?.phoneNumber}',
                    style: _style2(),
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class BusCard extends StatelessWidget {
  final BusReadResponse bus;

  const BusCard({
    super.key,
    required this.bus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF457fca),
            Color(0xFF5691c8),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.memoryNetwork(
                fadeInDuration: const Duration(milliseconds: 200),
                placeholder: kTransparentImage,
                imageErrorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.directions_bus_rounded,
                  size: 40,
                ),
                image: bus.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    bus.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Departure Station:',
                    style: _style2(),
                  ),
                  Text(
                    bus.departureStation,
                    style: _style3(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Arrival Station:',
                    style: _style2(),
                  ),
                  Text(
                    bus.arrivalStation,
                    style: _style3(),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${bus.departureTime}  -->  ${bus.arrivalTime}',
                        style: _style3().copyWith(color: Colors.yellow),
                      ),
                      Text(
                        '(${bus.rangeTime})',
                        style: _style3().copyWith(
                          color: Colors.yellow,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${bus.price} Uzs',
              style: _style3().copyWith(color: Colors.greenAccent),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle _style3() {
  return const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}

TextStyle _style2() {
  return const TextStyle(
    fontSize: 13,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
