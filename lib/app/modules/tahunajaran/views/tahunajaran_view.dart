import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/tahunajaran_controller.dart';

class TahunajaranView extends GetView<TahunajaranController> {
  const TahunajaranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TahunajaranView'),
        centerTitle: true,
      ),
      body: Padding(
    	padding: const EdgeInsets.all(8.0),
    	child: Obx(
      	() {
        	if (!controller.isLoaded.value) {
          	return Center(child: CircularProgressIndicator());
        	}

        	if (controller.tahunajaran.value.data == null || controller.tahunajaran.value.data!.isEmpty) {
          	return Center(child: Text('Data kosong.'));
        	}

        	return ListView.builder(
          	itemCount: controller.tahunajaran.value.data?.length ?? 0,
          	itemBuilder: (context, index) {
            	final element = controller.tahunajaran.value.data![index];
            	return Card(
              	margin: const EdgeInsets.symmetric(vertical: 8.0),
              	elevation: 5,
              	child: Padding(
                	padding: const EdgeInsets.all(16.0),
                	child: Column(
                  	crossAxisAlignment: CrossAxisAlignment.start,
                  	children: [
                    	Text(
                      	'${element.name ?? 'N/A'}',
                      	style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    	),
                      SizedBox(height: 8),
                    	Text(
                      	'Jenis: ${element.sLastUpdate ?? 'N/A'}',
                      	style: TextStyle(fontSize: 14),
                    	),
                    	SizedBox(height: 8),
                    	Text(
                      	'Guru Pengajar: ${element.displayName != null && element.displayName!.isNotEmpty ? element.displayName![1] : 'N/A'}',
                      	style: TextStyle(fontSize: 14),
                    	),
                  	],
                	),
              	),
            	);
          	},
        	);
      	},
    	),
  	),
    );
  }
}
