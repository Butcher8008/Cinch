import 'package:flutter/material.dart';

import '../Models/CustomerModel.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerCard extends StatelessWidget {
  final CustomerModel customer;

  const CustomerCard({required this.customer});

  Future<void> _launchMaps() async {
    // Construct the address query string
    String addressQuery = Uri.encodeComponent(
      "${customer.address} ${customer.state}, ${customer.city} ${customer.zip}",
    );

    // Construct the Google Maps URL
    String mapsUrl = "https://www.google.com/maps/place/$addressQuery";
    var uri = Uri.parse(mapsUrl);

    // Launch the URL in the device's default browser
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $mapsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Color(0xFF0161B7), Color(0xFF059D2F)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customer.company,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${customer.email}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${customer.phone}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                const SizedBox(height: 4),
                GestureDetector(
                  onTap: _launchMaps,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "${customer.address}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${customer.city}, ${customer.state} ${customer.zip}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
