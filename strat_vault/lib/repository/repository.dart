import 'package:strat_vault/models/map.dart';

class Repository {
  List<CSMap> maps = [
    CSMap(name: 'Ancient', imagePath: 'lib/images/maps/ancient.jpg',
     calloutsPath: 'lib/images/callouts/ancient_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'Retake A Main Smoke': ['lib/images/ancient/smokes/a_retake_main_smoke.png', 'lib/images/ancient/smokes/a_retake_main_smoke1.png', 'lib/images/ancient/smokes/a_retake_main_smoke.mp4'],
            'CT Smoke for Fast A': ['lib/images/ancient/smokes/ct_smoke_for_fast_a.png', 'lib/images/ancient/smokes/ct_smoke_for_fast_a1.png', 'lib/images/ancient/smokes/ct_smoke_for_fast_a.mp4'],
            'CT Smoke from Donut': ['lib/images/ancient/smokes/ct_smoke_from_donut.png', 'lib/images/ancient/smokes/ct_smoke_from_donut1.png', 'lib/images/ancient/smokes/ct_smoke_from_donut.mp4'],
            'CT Smoke from Mid': ['lib/images/ancient/smokes/ct_smoke_from_mid.png', 'lib/images/ancient/smokes/ct_smoke_from_mid1.png', 'lib/images/ancient/smokes/ct_smoke_from_mid.mp4'],
            'Donut Smoke': ['lib/images/ancient/smokes/donut_smoke_a.png', 'lib/images/ancient/smokes/donut_smoke_a1.png', 'lib/images/ancient/smokes/donut_smoke_a.mp4'],
            'Donut Mid Smoke': ['lib/images/ancient/smokes/donut_smoke_for_rush_mid.png', 'lib/images/ancient/smokes/donut_smoke_for_rush_mid1.png', 'lib/images/ancient/smokes/donut_smoke_for_rush_mid.mp4'],
            'Donut Smoke from Elbow': ['lib/images/ancient/smokes/donut_smoke_from_elbow.png', 'lib/images/ancient/smokes/donut_smoke_from_elbow1.png', 'lib/images/ancient/smokes/donut_smoke_from_elbow.mp4'],
            'Full Exec': ['lib/images/ancient/smokes/full_exec_a.png','lib/images/ancient/smokes/full_exec_a_ct.png', 'lib/images/ancient/smokes/full_exec_a_donut.png',  'lib/images/ancient/smokes/full_exec_a_temple.png', 'lib/images/ancient/smokes/full_a_exec.mp4'],
            'Karrigan Donut Smoke': ['lib/images/ancient/smokes/karigan_donut_smoke.png', 'lib/images/ancient/smokes/karigan_donut_smoke1.png', 'lib/images/ancient/smokes/karigan_smoke.mp4'],
            'Isolate B Smoke': ['lib/images/ancient/smokes/isolate_b_smoke.png', 'lib/images/ancient/smokes/isolate_b_smoke1.png', 'lib/images/ancient/smokes/isolate_b_smoke.mp4'],
            'Retake A Donut Smoke': ['lib/images/ancient/smokes/isolate_b_smoke.png', 'lib/images/ancient/smokes/isolate_b_smoke1.png', 'lib/images/ancient/smokes/isolate_b_smoke.mp4'],
          },
          'B': {
              'Retake B Cave Smoke': ['lib/images/ancient/smokes/b_retake_cave_smoke.png', 'lib/images/ancient/smokes/b_retake_cave_smoke1.png', 'lib/images/ancient/smokes/b_retake_cave_smoke.mp4'],
              'Retake B Long Smoke': ['lib/images/ancient/smokes/b_retake_long_smoke.png', 'lib/images/ancient/smokes/b_retake_long_smoke1.png', 'lib/images/ancient/smokes/b_retake_long_smoke.mp4'],
              'Site Cave Smoke from tbase': ['lib/images/ancient/smokes/cave_site_smoke_from_tbase.png', 'lib/images/ancient/smokes/cave_site_smoke_from_tbase1.png', 'lib/images/ancient/smokes/cave_site_smoke_from_tbase.mp4'],
              'Heaven Cave Smoke from tbase': ['lib/images/ancient/smokes/cave_smoke_from_tbase.png', 'lib/images/ancient/smokes/cave_smoke_from_tbase1.png', 'lib/images/ancient/smokes/cave_smoke_from_tbase.mp4'],
              'CT Smoke': ['lib/images/ancient/smokes/ct_smoke_b.png', 'lib/images/ancient/smokes/ct_smoke_b1.png', 'lib/images/ancient/smokes/lib/images/ancient/smokes/ct_smoke_b.mp4'],
              'Doors Smoke from ctbase': ['lib/images/ancient/smokes/doors_smoke_from_ct.png', 'lib/images/ancient/smokes/doors_smoke_from_ct1.png', 'lib/images/ancient/smokes/doors_smoke_from_ct.mp4'],
              'Full Exec': ['lib/images/ancient/smokes/full_exec_b.png', 'lib/images/ancient/smokes/full_exec_b_cave.png','lib/images/ancient/smokes/full_exec_b_short.png','lib/images/ancient/smokes/full_exec_b_long.png',  'lib/images/ancient/smokes/full_b_exec.mp4'],
              'Long Smoke from Lane': ['lib/images/ancient/smokes/long_smoke_from_lane.png', 'lib/images/ancient/smokes/long_smoke_from_lane1.png', 'lib/images/ancient/smokes/long_smoke_from_lane.mp4'],
              'Mid Smoke from Elbow': ['lib/images/ancient/smokes/mid_smoke_from_elbow.png', 'lib/images/ancient/smokes/mid_smoke_from_elbow1.png', 'lib/images/ancient/smokes/mid_smoke_from_elbow.mp4'],
              'Mid Smoke from tbase': ['lib/images/ancient/smokes/mid_smoke_from_tbase.png', 'lib/images/ancient/smokes/mid_smoke_from_tbase1.png', 'lib/images/ancient/smokes/mid_smoke_from_tbase.mp4'],
              'Ropz Cave Smoke': ['lib/images/ancient/smokes/ropz_cave_smoke.png', 'lib/images/ancient/smokes/ropz_cave_smoke.png', 'lib/images/ancient/smokes/ropz_cave_smoke.mp4'],
              'Short Smoke': ['lib/images/ancient/smokes/short_smoke.png', 'lib/images/ancient/smokes/short_smoke1.png', 'lib/images/ancient/smokes/short_smoke.mp4'],
              'Site Cave Smoke from Doors': ['lib/images/ancient/smokes/smoke_cave_site_from_bdoors.png', 'lib/images/ancient/smokes/smoke_cave_site_from_bdoors1.png', 'lib/images/ancient/smokes/smoke_cave_site_from_bdoors.mp4'],
              'SunPayus Long Smoke': ['lib/images/ancient/smokes/SunPayus_long_smoke.png', 'lib/images/ancient/smokes/SunPayus_long_smoke1.png', 'lib/images/ancient/smokes/SunPayus_long_smoke.mp4'],
          },
        'Insta': {
              'Elbow Smoke Spawn 1': ['lib/images/ancient/smokes/insta_elbow_spawn1.png', 'lib/images/ancient/smokes/insta_elbow_spawn1.mp4'],
              'Elbow Smoke Spawn 2': ['lib/images/ancient/smokes/insta_elbow_spawn2.png', 'lib/images/ancient/smokes/insta_elbow_spawn2.mp4'],
              'Elbow Smoke Spawn 3': ['lib/images/ancient/smokes/insta_elbow_spawn3.png', 'lib/images/ancient/smokes/insta_elbow_spawn3.mp4'],
              'Elbow Smoke Spawn 4': ['lib/images/ancient/smokes/insta_elbow_spawn4.png', 'lib/images/ancient/smokes/insta_elbow_spawn4.mp4'],
              'Elbow Smoke Spawn 5': ['lib/images/ancient/smokes/insta_elbow_spawn5.png', 'lib/images/ancient/smokes/insta_elbow_spawn5.mp4'],
              'Mid Smoke  Spawn 2': ['lib/images/ancient/smokes/insta_smoke_spawn2.png', 'lib/images/ancient/smokes/insta_smoke_spawn2.mp4'],
              'Mid Smoke  Spawn 3': ['lib/images/ancient/smokes/insta_smoke_spawn3.png', 'lib/images/ancient/smokes/insta_smoke_spawn3.mp4'],
              'Mid Smoke  Spawn 4': ['lib/images/ancient/smokes/insta_smoke_spawn4.png', 'lib/images/ancient/smokes/insta_smoke_spawn4.mp4'],
              'Mid Smoke Spawn 5': ['lib/images/ancient/smokes/insta_smoke_spawn5.png', 'lib/images/ancient/smokes/insta_smoke_spawn5.mp4'],
          },
        },
        'Flashes': {
          'A': {
            'A Flash': ['lib/images/ancient/flashes/a_flash.mp4'],
            'Mid Flash' : ['lib/images/ancient/flashes/mid_flash.png', 'lib/images/ancient/flashes/mid_flash1.png', 'lib/images/ancient/flashes/mid_flash.mp4'],
          },
          'B': {
            'B Flash' : ['lib/images/ancient/flashes/b_flash.png', 'lib/images/ancient/flashes/b_flash1.png', 'lib/images/ancient/flashes/b_flash.mp4'],
          },
        },
        'Mollys':{
          'A ':{
            'Retake A Molly Boost' : ['lib/images/ancient/mollys/retake_a_molly_boost.png', 'lib/images/ancient/mollys/retake_a_molly_boost1.png', 'lib/images/ancient/mollys/retake_a_boost_molly.mp4'],
            'Fast Elbow Molly' :['lib/images/ancient/mollys/fast_elbow.mp4'],
          },
          'B':{
            'Lane Molly' : ['lib/images/ancient/mollys/molly_lane.png', 'lib/images/ancient/mollys/molly_lane.mp4'],
            'Ninja Molly' : ['lib/images/ancient/mollys/molly_ninja.png', 'lib/images/ancient/mollys/molly_ninja1.png', 'lib/images/ancient/mollys/molly_ninja.mp4']
          }
        }
     }),
     strats: Map<String, dynamic>.from({
     }),

     ),
    CSMap(name: 'Anubis', imagePath: 'lib/images/maps/anubis.jpg',
     calloutsPath: 'lib/images/callouts/anubis_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'Camera Smoke': ['lib/images/anubis/smokes/camera_smoke.png', 'lib/images/anubis/smokes/camera_smoke1.png', 'lib/images/anubis/smokes/camera_smoke.mp4'],
            'Camera Smoke from TOPMID': ['lib/images/anubis/smokes/camera_smoke_from_topmid.png', 'lib/images/anubis/smokes/camera_smoke_from_topmid1.png', 'lib/images/anubis/smokes/camera_smoke_from_topmid.mp4'],
            'Heaven Smoke': ['lib/images/anubis/smokes/heaven_smoke.png', 'lib/images/anubis/smokes/heaven_smoke1.png', 'lib/images/anubis/smokes/heaven_smoke_a.mp4'],
            'Mid Smoke from TSPAWN': ['lib/images/anubis/smokes/mid_smoke_from_tspawn1.png', 'lib/images/anubis/smokes/mid_smoke_from_tspawn.png', 'lib/images/anubis/smokes/mid_smoke_from_t_base.mp4'],
          },
          'B': {
            'Temple Smoke': ['lib/images/anubis/smokes/temple_smoke.png', 'lib/images/anubis/smokes/temple_smoke1.png', 'lib/images/anubis/smokes/temple_smoke.mp4'],
            'CT Smoke': ['lib/images/anubis/smokes/ct_smoke1.png', 'lib/images/anubis/smokes/ct_smoke.png', 'lib/images/anubis/smokes/ct_smoke_b.mp4'],
            'Cross Smoke': ['lib/images/anubis/smokes/cross_smoke.png', 'lib/images/anubis/smokes/cross_smoke1.png', 'lib/images/anubis/smokes/cross_smoke_for_b.mp4'],
            'Con Smoke from B MAIN': ['lib/images/anubis/smokes/connector_smoke_from_b_main.png', 'lib/images/anubis/smokes/connector_smoke_from_b_main1.png', 'lib/images/anubis/smokes/con_smoke_from_b_main.mp4'],
            'Con Smoke from TSPAWN': ['lib/images/anubis/smokes/con_smoke_from_tspawn.png', 'lib/images/anubis/smokes/con_smoke_from_tspawn1.png', 'lib/images/anubis/smokes/con_smoke_from_tbase.mp4'],
          },
        },
        'Flashes': {
          'A': {
            'A Flash': ['lib/images/anubis/flashes/a_flash.png', 'lib/images/anubis/flashes/a_flash1.png', 'lib/images/anubis/flashes/a_flash.mp4'],
          },
          'B': {
            'B Flash for JL': ['lib/images/anubis/flashes/b_flash.png', 'lib/images/anubis/flashes/b_flash1.png', 'lib/images/anubis/flashes/b_flash.mp4'],
            'B Flash for BACKSITE': ['lib/images/anubis/flashes/b_flash_second.png', 'lib/images/anubis/flashes/b_flash_second1.png', 'lib/images/anubis/flashes/b_flash_second.mp4']
          },
        },
        'Mollys':{
          'A': {
            'Headshot Molly': ['lib/images/anubis/mollys/molly_headshot.png', 'lib/images/anubis/mollys/molly_headshot1.png', 'lib/images/anubis/mollys/headshot_molly_on_a.mp4'],
          },
          'B': {
            'Pillar Molly': ['lib/images/anubis/mollys/molly_pilar.png', 'lib/images/anubis/mollys/molly_pilar1.png', 'lib/images/anubis/mollys/pillar_molly_b.mp4'],
          },
        }
     }),

     strats: Map<String, dynamic>.from({
     }),

     ),
CSMap(name: 'Dust 2', imagePath: 'lib/images/maps/dust2.jpg',
     calloutsPath: 'lib/images/callouts/dust2_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': 'Smoke',
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
          'execA': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakeB': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakec': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'faked': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakee': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          
        },
        'B': {
          'strat1': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'strat2': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
        },
     }),

     ),
CSMap(name: 'Nuke', imagePath: 'lib/images/maps/nuke.jpg',
     calloutsPath: 'lib/images/callouts/nuke_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': 'Smoke',
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
          'execA': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakeB': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakec': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'faked': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakee': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          
        },
        'B': {
          'strat1': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'strat2': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
        },
      }),

     ),
CSMap(name: 'Train', imagePath: 'lib/images/maps/train.jpg',
     calloutsPath: 'lib/images/callouts/train_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': 'Smoke',
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
          'execA': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakeB': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakec': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'faked': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakee': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          
        },
        'B': {
          'strat1': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'strat2': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
        },
     }),

     ),
CSMap(name: 'Overpass', imagePath: 'lib/images/maps/overpass.jpg',
     calloutsPath: 'lib/images/callouts/overpass_callouts.jpg',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': 'Smoke',
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
          'execA': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakeB': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakec': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'faked': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'fakee': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          
        },
        'B': {
          'strat1': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
          'strat2': ['lib/images/callouts/callouts_anubis.png', 'lib/images/callouts/inferno_callouts.png', 'lib/images/LampaArsa.mp4'],
        },
     }),

     ),
CSMap(name: 'Mirage', imagePath: 'lib/images/maps/mirage.jpg',
     calloutsPath: 'lib/images/callouts/mirage_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': {'Smoke', 'Molly', 'Flash' , 'Smoke1', 'Molly1', 'Flash1'},
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
         'A1': {'Smoke ', 'Molly', 'Flash'},
         'A2': 'Molly',
         'A3': 'Flash',
       },
       'B': {
         'B1': 'Smoke',
         'B2': 'Molly',
         'B3': 'Flash',
       },
     }),
    
     ),
    CSMap(name: 'Inferno', imagePath: 'lib/images/maps/inferno.jpg',
     calloutsPath: 'lib/images/callouts/inferno_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A1': {'Smoke', 'Molly', 'Flash' , 'Smoke1', 'Molly1', 'Flash1'},
            'A2': 'Smoke',
            'A3': 'Smoke',
          },
          'B': {
            'B1': 'Smoke',
            'B2': 'Smoke',
            'B3': 'Smoke',
          },
        },
        'Flashes': {
          'A': {
            'A1': 'Flash',
            'A2': 'Flash',
            'A3': 'Flash',
          },
          'B': {
            'B1': 'Flash',
            'B2': 'Flash',
            'B3': 'Flash',
          },
        },
     }),
     strats: Map<String, dynamic>.from({
       'A': {
         'A1': {'Smoke ', 'Molly', 'Flash'},
         'A2': 'Molly',
         'A3': 'Flash',
       },
       'B': {
         'B1': 'Smoke',
         'B2': 'Molly',
         'B3': 'Flash',
       },
     }),

      ),
    
    // CSMap(name: 'Anubis', imagePath: 'lib/images/maps/anubis.jpg', calloutsPath: 'lib/images/callouts/callouts_anubis.png'),
    // CSMap(name: 'Dust 2 ', imagePath: 'lib/images/maps/dust2.jpg', calloutsPath: 'lib/images/callouts/dust2_callouts.png'),
    // CSMap(name: 'Nuke', imagePath: 'lib/images/maps/nuke.jpg', calloutsPath: 'lib/images/callouts/nuke_callouts.png'),
    // CSMap(name: 'Train', imagePath: 'lib/images/maps/train.jpg', calloutsPath: 'lib/images/callouts/train_callouts.jpg'),
    // CSMap(name: 'Overpass', imagePath: 'lib/images/maps/overpass.jpg', calloutsPath: 'lib/images/callouts/overpass_callouts.jpg'),
    // CSMap(name: 'Mirage', imagePath: 'lib/images/maps/mirage.jpg', calloutsPath: 'lib/images/callouts/mirage_callouts.png'),
    // CSMap(name: 'Inferno', imagePath: 'lib/images/maps/inferno.jpg', calloutsPath: 'lib/images/callouts/inferno_callouts.png'),

  ];

  Repository();

  List<CSMap> get _maps => maps; 
}