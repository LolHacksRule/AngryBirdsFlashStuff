package §%O§
{
   import flash.utils.Dictionary;
   
   public class §`b§
   {
       
      
      private var §^4§:§ !§;
      
      private var §8!,§:Dictionary;
      
      public function §`b§(param1:§ !§)
      {
         this.§8!,§ = new Dictionary();
         super();
         this.§^4§ = param1;
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         this.§30§(param1);
         this.§;+§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§;+§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
         this.§;+§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§;+§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§;+§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§;+§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
         this.§;+§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
         this.§;+§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
         this.§;+§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
         this.§;+§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
         this.§;+§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
         this.§;+§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
         this.§;+§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
         this.§;+§("BIRD_SARDINE",["BIRD_SARDINE"]);
         this.§;+§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
         this.§;+§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
         this.§;+§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
         this.§;+§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
         this.§;+§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
         this.§;+§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
         this.§;+§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
         this.§;+§("SCORE_PIG",["SCORE_PIG"]);
         for each(_loc2_ in [{
            "name":"TRAIL_",
            "count":3
         },{
            "name":"PARTICLE_WOOD_",
            "count":3
         },{
            "name":"PARTICLE_STONE_",
            "count":3
         },{
            "name":"PARTICLE_ICE_",
            "count":5
         },{
            "name":"PARTICLE_BIRDWHITE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLUE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLACK_",
            "count":3
         },{
            "name":"PARTICLE_BIRDRED_",
            "count":3
         },{
            "name":"PARTICLE_BIRDYELLOW_",
            "count":3
         },{
            "name":"PARTICLE_BIRDGREEN_",
            "count":3
         },{
            "name":"SMOKE_BIG_",
            "count":6
         },{
            "name":"SMOKE_SMALL_",
            "count":3
         },{
            "name":"EXPLOSION_",
            "count":7
         }])
         {
            _loc3_ = 1;
            while(_loc3_ <= _loc2_.count)
            {
               this.§;+§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
               _loc3_++;
            }
         }
         this.§;+§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.initializeBirdAnimations();
         this.§ E§();
         this.§;+§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      private function §30§(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = this.§@!F§(param1);
            for each(_loc3_ in _loc2_)
            {
               this.§<!?§(_loc3_);
            }
         }
      }
      
      private function §<!?§(param1:String) : void
      {
         if(!this.§;+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]))
         {
            if(!this.§;+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]))
            {
               if(!this.§;+§(param1,[param1 + "_1"]))
               {
                  if(this.§;+§(param1,[param1]))
                  {
                  }
               }
            }
         }
      }
      
      private function §@!F§(param1:Array) : Array
      {
         var _loc3_:String = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(_loc3_.indexOf("PIG") != 0 && _loc3_.indexOf("BIRD") != 0 && _loc3_.indexOf("_") > 0)
            {
               _loc2_.push(_loc3_);
            }
         }
         _loc2_.sort();
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         this.§`C§("BIRD_BLACK",[["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]],["blink",["BIRD_BLACK_BLINK"]],["fly",["BIRD_BLACK_FLYING"]],["yell",["BIRD_BLACK_YELL"]],["fly_yell",["BIRD_BLACK_FLYING_YELL"]],["special",["BIRD_BLACK_SPECIAL","BIRD_BLACK_SPECIAL_2","BIRD_BLACK_SPECIAL_3"]]]);
         this.§`C§("BIRD_BLUE",[["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]],["blink",["BIRD_BLUE_BLINK"]],["fly",["BIRD_BLUE_FLYING"]],["yell",["BIRD_BLUE_YELL"]],["fly_yell",["BIRD_BLUE_FLYING_YELL"]]]);
         this.§`C§("BIRD_RED",[["normal",["BIRD_RED_1","BIRD_RED_2"]],["blink",["BIRD_RED_BLINK"]],["fly",["BIRD_RED_FLYING"]],["yell",["BIRD_RED_YELL"]],["fly_yell",["BIRD_RED_FLYING_YELL"]]]);
         this.§`C§("BIRD_WHITE",[["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]],["blink",["BIRD_WHITE_BLINK"]],["fly",["BIRD_WHITE_FLYING"]],["yell",["BIRD_WHITE_YELL"]],["fly_yell",["BIRD_WHITE_FLYING_YELL"]],["special",["BIRD_WHITE_SPECIAL"]]]);
         this.§`C§("BIRD_YELLOW",[["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]],["blink",["BIRD_YELLOW_BLINK"]],["fly",["BIRD_YELLOW_FLYING"]],["yell",["BIRD_YELLOW_YELL"]],["fly_yell",["BIRD_YELLOW_FLYING_YELL"]],["special",["BIRD_YELLOW_SPECIAL"]]]);
         this.§`C§("BIRD_GREEN",[["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]],["blink",["BIRD_GREEN_BLINK"]],["fly",["BIRD_GREEN_FLYING"]],["yell",["BIRD_GREEN_YELL"]],["fly_yell",["BIRD_GREEN_FLYING_YELL"]],["special",["BIRD_GREEN_SPECIAL"]]]);
         this.§`C§("BIRD_REDBIG",[["normal",["BIRD_REDBIG_1"]],["blink",["BIRD_REDBIG_BLINK"]],["fly",["BIRD_REDBIG_FLYING"]],["yell",["BIRD_REDBIG_YELL"]],["fly_yell",["BIRD_REDBIG_FLYING_YELL"]]]);
      }
      
      protected function § E§() : void
      {
         this.§`C§("PIG_BASIC_SMALL",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         this.§`C§("PIG_BASIC_MEDIUM",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         this.§`C§("PIG_BASIC_BIG",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         this.§`C§("PIG_HELMET",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         this.§`C§("PIG_MUSTACHE",[["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]],["blink",["PIG_MUSTACHE_01_BLINK","PIG_MUSTACHE_02_BLINK","PIG_MUSTACHE_03_BLINK"]],["yell",["PIG_MUSTACHE_01_SMILE","PIG_MUSTACHE_02_SMILE","PIG_MUSTACHE_03_SMILE"]]]);
         this.§`C§("PIG_KING",[["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]],["blink",["PIG_KING_01_BLINK","PIG_KING_02_BLINK","PIG_KING_03_BLINK"]],["yell",["PIG_KING_01_SMILE","PIG_KING_02_SMILE","PIG_KING_03_SMILE"]]]);
      }
      
      protected function §;+§(param1:String, param2:Array) : Boolean
      {
         var name:String = param1;
         var frameNames:Array = param2;
         if(this.§8!,§[name])
         {
            throw new Error("Trying to add a duplicate animation: " + name);
         }
         var result:Boolean = true;
         try
         {
            this.§8!,§[name] = this.§,!1§(frameNames);
         }
         catch(e:Error)
         {
            result = false;
         }
         return result;
      }
      
      private function §,!1§(param1:Array) : §6?§
      {
         var _loc3_:String = null;
         var _loc4_:§=I§ = null;
         var _loc2_:§6?§ = new §6?§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^4§.§^!3§(_loc3_);
            _loc2_.addFrame(_loc4_);
         }
         return _loc2_;
      }
      
      protected function §`C§(param1:String, param2:Array) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(this.§8!,§[param1])
         {
            throw new Error("Trying to add a duplicate animation: " + param1);
         }
         var _loc3_:§?H§ = new §?H§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            _loc3_.§;+§(_loc5_,this.§,!1§(_loc6_));
         }
         this.§8!,§[param1] = _loc3_;
      }
      
      public function §=!B§(param1:String) : §6?§
      {
         return this.§8!,§[param1];
      }
   }
}
