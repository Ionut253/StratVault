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
        'Combo Short':[
          'lib/images/dust2/smokes/combo_short.png',
          'lib/images/dust2/smokes/combo_short1.png',
          'lib/images/dust2/smokes/combo_short2.png',
          'lib/images/dust2/smokes/combo_short3.png',
          'lib/images/dust2/smokes/combo_short.mp4'
        ],
        'Cross Smoke': [
          'lib/images/dust2/smokes/cross_smoke.png',
          'lib/images/dust2/smokes/cross_smoke1.png',
          'lib/images/dust2/smokes/cross_smoke.mp4'
        ],
        'CT Smoke from Short': [
          'lib/images/dust2/smokes/ct_smoke_from_short.png',
          'lib/images/dust2/smokes/ct_smoke_from_short1.png',
          'lib/images/dust2/smokes/ct_smoke_from_short.mp4'
        ],
        'Deep CT from Long':[
          'lib/images/dust2/smokes/deep_ct.png',
          'lib/images/dust2/smokes/deep_ct1.png',
          'lib/images/dust2/smokes/deep_ct.mp4'
        ],
        'Long Corner Smoke': [
          'lib/images/dust2/smokes/long_corner_smoke.png',
          'lib/images/dust2/smokes/long_corner_smoke1.png',
          'lib/images/dust2/smokes/long_corner_smoke.mp4'
        ],
        'Long Smoke':[
          'lib/images/dust2/smokes/long_smoke.png',
          'lib/images/dust2/smokes/long_smoke1.png',
          'lib/images/dust2/smokes/long_smoke.mp4'
        ],
        'Mid Doors Smoke':[
          'lib/images/dust2/smokes/mid_doors_smoke.png',
          'lib/images/dust2/smokes/mid_doors_smoke1.png',
          'lib/images/dust2/smokes/mid_doors_smoke.mp4'
        ],
        'Short Smoke From Long':[
          'lib/images/dust2/smokes/short_smoke_from_long.png',
          'lib/images/dust2/smokes/short_smoke_from_long1.png',
          'lib/images/dust2/smokes/short_smoke_from_long.mp4'
        ],
      },
      'B': {
        'B Doors Smoke From Catwalk':[
          'lib/images/dust2/smokes/b_doors_from_catwalk.png',
          'lib/images/dust2/smokes/b_doors_from_catwalk1.png',
          'lib/images/dust2/smokes/b_doors_from_catwalk.mp4'
        ],
        'Deep Doors Smoke':[
          'lib/images/dust2/smokes/deep_doors.png',
          'lib/images/dust2/smokes/deep_doors1.png',
          'lib/images/dust2/smokes/deep_doors.mp4'
        ],
        'Doors Smoke':[
          'lib/images/dust2/smokes/doors_smoke.png',
          'lib/images/dust2/smokes/doors_smoke1.png',
          'lib/images/dust2/smokes/doors_smoke.mp4'
        ],
        'Left Mid Smoke':[
          'lib/images/dust2/smokes/left_mid_smoke.png',
          'lib/images/dust2/smokes/left_mid_smoke1.png',
          'lib/images/dust2/smokes/left_mid_smoke.mp4'
        ],
        'Window Smoke': [
          'lib/images/dust2/smokes/window_smoke.png',
          'lib/images/dust2/smokes/window_smoke1.png',
          'lib/images/dust2/smokes/window_smoke.mp4'
        ],
        'Lurk B Smoke':[
          'lib/images/dust2/smokes/lurk_b_smoke.png',
          'lib/images/dust2/smokes/lurk_b_smoke1.png',
          'lib/images/dust2/smokes/lurk_b_smoke.mp4'
        ],
        'Mid to B Smoke': [
          'lib/images/dust2/smokes/mid_to_b.png',
          'lib/images/dust2/smokes/mid_to_b1.png',
          'lib/images/dust2/smokes/mid_to_b.mp4'
        ],
        'Mid to B Smoke from Catwalk ':[
          'lib/images/dust2/smokes/mid_to_b_from_catwalk.png',
          'lib/images/dust2/smokes/mid_to_b_from_catwalk1.png',
          'lib/images/dust2/smokes/mid_to_b_from_catwalk.mp4'
        ],
        'Xbox Smoke': [
          'lib/images/dust2/smokes/xbox_smoke.png',
          'lib/images/dust2/smokes/xbox_smoke1.png',
          'lib/images/dust2/smokes/xbox_smoke.mp4'
        ],
      },
    },
    'Flashes': {
      'A': {
        'Site Flash from Short': [
          'lib/images/dust2/flashes/a_flash_from_short.mp4'
        ],
        'Late Long Flash': [
          'lib/images/dust2/flashes/late_long_flash.png',
          'lib/images/dust2/flashes/late_long_flash1.png',
          'lib/images/dust2/flashes/late_long_flash.mp4'
        ],
        'Pop Flash Long': [
          'lib/images/dust2/flashes/pop_flash_long.png',
          'lib/images/dust2/flashes/pop_flash_long1.png',
          'lib/images/dust2/flashes/pop_flash_long.mp4'
        ],
        'Retake Long Flash':[
          'lib/images/dust2/flashes/retake_long_flash.mp4',
        ],
        'Rush Long Flash':[
          'lib/images/dust2/flashes/rush_long_flash.png',
          'lib/images/dust2/flashes/rush_long_flash1.png',
          'lib/images/dust2/flashes/rush_long_flash.mp4'
        ],
        'Short Flash': [
          'lib/images/dust2/flashes/short_flash.png',
          'lib/images/dust2/flashes/short_flash1.png',
          'lib/images/dust2/flashes/short_flash.mp4'
        ],
      },
      'B': {
        'B Flash from Tunnel': [
          'lib/images/dust2/flashes/b_flash.mp4'
        ],
        'Mid to B Flash': [
          'lib/images/dust2/flashes/mid_flash.png',
          'lib/images/dust2/flashes/mid_flash1.png',
          'lib/images/dust2/flashes/mid_flash.mp4'
        ],
        'Retake B Flash': [
          'lib/images/dust2/flashes/retake_b_flash.png',
          'lib/images/dust2/flashes/retake_b_flash1.png',
          'lib/images/dust2/flashes/retake_b_flash.mp4'
        ],
      },
    },
    'Mollys': {
      'A': {
        'Site Molly from Short': [
          'lib/images/dust2/mollys/molly_site_from_short.png',
          'lib/images/dust2/mollys/molly_site_from_short.mp4'
        ],
        'Car Molly from Long': [
          'lib/images/dust2/mollys/car_molly_from_long.png',
          'lib/images/dust2/mollys/car_molly_from_long.mp4'
        ],
      },
      'B': {
        'Back Plat Molly': [
          'lib/images/dust2/mollys/back_plat_molly.png',
          'lib/images/dust2/mollys/back_plat_molly.mp4'
        ],
        'Molly Site': [
          'lib/images/dust2/mollys/molly_site.png',
          'lib/images/dust2/mollys/molly_site.mp4'
        ],
        'Tunnel Molly':[
          'lib/images/dust2/mollys/tunnel_molly.png',
          'lib/images/dust2/mollys/tunnel_molly.mp4'
        ]
      },
      
    },
  }),
  strats: Map<String, dynamic>.from({}),
),
CSMap(name: 'Nuke', imagePath: 'lib/images/maps/nuke.jpg',
     calloutsPath: 'lib/images/callouts/nuke_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'Deep Outside Smokes': [
              'lib/images/nuke/smokes/garage_outside_smokes.png',
              'lib/images/nuke/smokes/garage_outside_smokes1.png',
              'lib/images/nuke/smokes/garage_outside_smokes2.png',
              'lib/images/nuke/smokes/garage_outside_smokes.mp4'
            ],
            'Garage Smoke': [
              'lib/images/nuke/smokes/garage_smoke.png',
              'lib/images/nuke/smokes/garage_smoke1.png',
              'lib/images/nuke/smokes/garage_smoke.mp4'
            ],
            'Heaven Smoke': [
              'lib/images/nuke/smokes/heave_smoke.png',
              'lib/images/nuke/smokes/heave_smoke1.png',
              'lib/images/nuke/smokes/heave_smoke.mp4'
            ],
            'Hut Smoke' :[
              'lib/images/nuke/smokes/hut_smoke.png',
              'lib/images/nuke/smokes/hut_smoke1.png',
              'lib/images/nuke/smokes/hut_smoke.mp4'
            ],
            'Outside Smokes':[
              'lib/images/nuke/smokes/outside_smokes.png',
              'lib/images/nuke/smokes/outside_smokes1.png',
              'lib/images/nuke/smokes/outside_smokes.mp4'
            ],
            'Site Smoke':[
              'lib/images/nuke/smokes/site_smoke.png',
              'lib/images/nuke/smokes/site_smoke1.png',
              'lib/images/nuke/smokes/site_smoke.mp4'
            ],
            'Take Main Smoke':[
              'lib/images/nuke/smokes/take_main_smoke.png',
              'lib/images/nuke/smokes/take_main_smoke1.png',
              'lib/images/nuke/smokes/take_main_smoke.mp4'
            ]
          },
          'B': {
            'Ramp Smoke': [
              'lib/images/nuke/smokes/ramp_smoke.png',
              'lib/images/nuke/smokes/ramp_smoke1.png',
              'lib/images/nuke/smokes/ramp_smoke.mp4'
            ],
            'Secret Smoke': [
              'lib/images/nuke/smokes/secret_smoke.png',
              'lib/images/nuke/smokes/secret_smoke1.png',
              'lib/images/nuke/smokes/secret_smoke.mp4'
            ],
            'Vent Rush': [
              'lib/images/nuke/smokes/vent_rush.png',
              'lib/images/nuke/smokes/vent_rush1.png',
              'lib/images/nuke/smokes/vent_rush.mp4'
            ],
          },
        },
        'Flashes': {
          'A': {
            'A Flash From Hut': [
              'lib/images/nuke/flashes/a_flash_from_hut.png',
              'lib/images/nuke/flashes/a_flash_from_hut1.png',
              'lib/images/nuke/flashes/a_flash_from_hut.mp4'
            ],
            'A Flash From Squeaky': [
              'lib/images/nuke/flashes/a_flash_from_squicky.png',
              'lib/images/nuke/flashes/a_flash_from_squicky1.png',
              'lib/images/nuke/flashes/a_flash_from_squicky.mp4'
            ],
            'Retake A Flash': [
              'lib/images/nuke/flashes/retake_a.png',
              'lib/images/nuke/flashes/retake_a1.png',
              'lib/images/nuke/flashes/retake_a.mp4'
            ],
            'Support Outside': [
              'lib/images/nuke/flashes/support_outside.png',
              'lib/images/nuke/flashes/support_outside1.png',
              'lib/images/nuke/flashes/support_outside.mp4'
            ]
          },
          'B': {
            'Ramp Flash': [
              'lib/images/nuke/flashes/ramp_flash.png',
              'lib/images/nuke/flashes/ramp_flash1.png',
              'lib/images/nuke/flashes/ramp_flash.mp4'
            ],
            'Retake B from Ramp': [
              'lib/images/nuke/flashes/retake_b_from_ramp.png',
              'lib/images/nuke/flashes/retake_b_from_ramp1.png',
              'lib/images/nuke/flashes/retake_b_from_ramp.mp4'
            ],
            'Retake B': [
              'lib/images/nuke/flashes/retake_b.png',
              'lib/images/nuke/flashes/retake_b1.png',
              'lib/images/nuke/flashes/retake_b.mp4'
            ],
            'Trophy Flash': [
              'lib/images/nuke/flashes/trophy_flash.mp4'
            ]
          },
        },
        'Mollys':{
          'A':{
            'A Site Molly':[
              'lib/images/nuke/mollys/a_site_molly.png',
              'lib/images/nuke/mollys/a_site_molly1.png',
              'lib/images/nuke/mollys/a_site_molly.mp4'
            ],
            'Fast Hut Molly':[
              'lib/images/nuke/mollys/fast_hut_molly.png',
              'lib/images/nuke/mollys/fast_hut_molly1.png',
              'lib/images/nuke/mollys/fast_hut_molly.mp4'
            ],
            'Molly Hut':[
              'lib/images/nuke/mollys/molly_hut.mp4'
            ]
          },
          'B':{
            '' : []
          }
        }
     }),
     strats: Map<String, dynamic>.from({
      }),

     ),
CSMap(name: 'Train', imagePath: 'lib/images/maps/train.jpg',
     calloutsPath: 'lib/images/callouts/train_callouts.png',
     utils: Map<String, dynamic>.from({
        'Smokes': {
          'A': {
            'A Site Smoke': [
              'lib/images/train/smokes/a_site_smoke.png',
              'lib/images/train/smokes/a_site_smoke1.png',
              'lib/images/train/smokes/a_site_smoke.mp4'
            ],
            'Camera Smoke from Hall': [
              'lib/images/train/smokes/camera_smoke_from_hall.png',
              'lib/images/train/smokes/camera_smoke_from_hall1.png',
              'lib/images/train/smokes/camera_smoke_from_hall.mp4'
            ],
            'Camera Smoke from Wall': [
              'lib/images/train/smokes/camera_smoke_from_wall.png',
              'lib/images/train/smokes/camera_smoke_from_wall1.png',
              'lib/images/train/smokes/camera_smoke_from_wall.mp4'
            ],
            'Camera Smoke':[
              'lib/images/train/smokes/camera_smoke.png',
              'lib/images/train/smokes/camera_smoke1.png',
              'lib/images/train/smokes/camera_smoke.mp4'
            ],
            'Connector Smoke': [
              'lib/images/train/smokes/connector_smoke_2.png',
              'lib/images/train/smokes/connector_smoke21.png',
              'lib/images/train/smokes/connector_smoke_2.mp4'
            ],
            'Connector Smoke from Ladder':[
              'lib/images/train/smokes/connector_smoke_from_ladder.png',
              'lib/images/train/smokes/connector_smoke_from_ladder1.png',
              'lib/images/train/smokes/connector_smoke_from_ladder.mp4'
            ],
            'Connector Smoke from Spawn':[
              'lib/images/train/smokes/connector_smoke.png',
              'lib/images/train/smokes/connector_smoke1.png',
              'lib/images/train/smokes/connector_smoke.mp4'
            ],
            'Ivy Smoke':[
              'lib/images/train/smokes/ivy_smoke.png',
              'lib/images/train/smokes/ivy_smoke1.png',
              'lib/images/train/smokes/ivy_smoke.mp4'
            ],
            'Main Smoke from Base':[
              'lib/images/train/smokes/main_smoke.png',
              'lib/images/train/smokes/main_smoke1.png',
              'lib/images/train/smokes/main_smoke.mp4'
            ],
            'Main Smoke from Backsite':[
              'lib/images/train/smokes/main_smoke_from_backsite.png',
              'lib/images/train/smokes/main_smoke_from_backsite1.png',
              'lib/images/train/smokes/main_smoke_from_backsite.mp4'
            ],
            'Pop Dog Smoke':[
              'lib/images/train/smokes/pop_dog_smoke.png',
              'lib/images/train/smokes/pop_dog_smoke1.png',
              'lib/images/train/smokes/pop_dog_smoke.mp4'
            ],
            'Red Smoke':[
              'lib/images/train/smokes/red_smoke.png',
              'lib/images/train/smokes/red_smoke1.png',
              'lib/images/train/smokes/red_smoke.mp4'
            ],
            'Red Train Smoke':[
              'lib/images/train/smokes/red_train_smoke.png',
              'lib/images/train/smokes/red_train_smoke1.png',
              'lib/images/train/smokes/red_train_smoke.mp4'
            ],
            'Right Ivy Smoke':[
              'lib/images/train/smokes/right_ivy_smoke.png',
              'lib/images/train/smokes/right_ivy_smoke1.png',
              'lib/images/train/smokes/right_ivy_smoke.mp4'
            ]
          },
          'B': {
            'Back Site Smoke': [
              'lib/images/train/smokes/back_site_smoke.png',
              'lib/images/train/smokes/back_site_smoke1.png',
              'lib/images/train/smokes/back_site_smoke.mp4'
            ],
            'Connector Smoke': [
              'lib/images/train/smokes/connector_b_smoke.png',
              'lib/images/train/smokes/connector_b_smoke.mp4'
            ],
            'Ramp Smoke':[
              'lib/images/train/smokes/ramp_smoke.png',
              'lib/images/train/smokes/ramp_smoke1.png',
              'lib/images/train/smokes/ramp_smoke.mp4'
            ],
            'Site Smoke':[
              'lib/images/train/smokes/site_b_smoke.png',
              'lib/images/train/smokes/site_b_smoke1.png',
              'lib/images/train/smokes/site_b_smoke.mp4'
            ],
            'Upper B Lurk Smoke':[
              'lib/images/train/smokes/upper_b_lurk_smoke.png',
              'lib/images/train/smokes/upper_b_lurk_smoke1.png',
              'lib/images/train/smokes/upper_b_lurk_smoke.mp4'
            ]
          },
        },
        'Flashes': {
          'A': {
            'A Flash from Main': [
              'lib/images/train/flashes/a_flash_from_main.mp4'
            ],
            'A Flash': [
              'lib/images/train/flashes/a_flash.png',
              'lib/images/train/flashes/a_flash1.png',
              'lib/images/train/flashes/a_flash.mp4'
            ],
            'Main Flash': [
              'lib/images/train/flashes/main_flash.png',
              'lib/images/train/flashes/main_flash1.png',
              'lib/images/train/flashes/main_flash.mp4'
            ],
          },
          'B': {
            'B Flash': [
              'lib/images/train/flashes/b_flash.png',
              'lib/images/train/flashes/b_flash1.png',
              'lib/images/train/flashes/b_flash.mp4'
            ],
            'Another B Flash': [
              'lib/images/train/flashes/another_b_flash.png',
              'lib/images/train/flashes/another_b_flash.mp4'
            ],
            'Ramp Push': [
              'lib/images/train/flashes/ramp_push.png',
              'lib/images/train/flashes/ramp_push1.png',
              'lib/images/train/flashes/ramp_push.mp4'
            ],
          },
        },
        'Mollys':{
          'A': {
            'Back Site Molly':[
              'lib/images/train/mollys/back_site_molly.mp4'
            ],
            'Electric Molly':[
              'lib/images/train/mollys/electric_molly.mp4'
            ],
            'Main Molly':[
              'lib/images/train/mollys/main_molly.mp4'
            ],
            'Retake A Molly':[
              'lib/images/train/mollys/retake_a_molly.png',
              'lib/images/train/mollys/retake_a_molly1.png',
              'lib/images/train/mollys/retake_a_molly.mp4'
            ]
          },
          'B': {
            'B Site Molly':[
              'lib/images/train/mollys/b_site_molly.png',
              'lib/images/train/mollys/b_site_molly1.png',
              'lib/images/train/mollys/b_site_molly.mp4'
            ],
            'Site Molly':[
              'lib/images/train/mollys/site_molly.mp4'
            ]
          }
        }
      }),
     strats: Map<String, dynamic>.from({
     }),

     ),
CSMap(name: 'Overpass', imagePath: 'lib/images/maps/overpass.jpg',
     calloutsPath: 'lib/images/callouts/overpass_callouts.jpg',
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