package §+!]§
{
   import flash.utils.Dictionary;
   
   public class §0!B§
   {
       
      
      private var §[G§:§!,§;
      
      private var §2g§:Dictionary;
      
      public function §0!B§(param1:§!,§)
      {
         this.§2g§ = new Dictionary();
         super();
         this.§[G§ = param1;
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         this.§9x§(param1);
         this.§"f§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§"f§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
         this.§"f§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§"f§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§"f§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§"f§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
         this.§"f§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
         this.§"f§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
         this.§"f§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
         this.§"f§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
         this.§"f§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
         this.§"f§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
         this.§"f§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
         this.§"f§("BIRD_SARDINE",["BIRD_SARDINE"]);
         this.§"f§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
         this.§"f§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
         this.§"f§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
         this.§"f§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
         this.§"f§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
         this.§"f§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
         this.§"f§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
         this.§"f§("SCORE_PIG",["SCORE_PIG"]);
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
               this.§"f§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
               _loc3_++;
            }
         }
         this.§"f§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.initializeBirdAnimations();
         this.§@!X§();
         this.§"f§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      private function §9x§(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = this.§<h§(param1);
            for each(_loc3_ in _loc2_)
            {
               this.§<!b§(_loc3_);
            }
         }
      }
      
      private function §<!b§(param1:String) : void
      {
         if(!this.§"f§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]))
         {
            if(!this.§"f§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]))
            {
               if(!this.§"f§(param1,[param1 + "_1"]))
               {
                  if(this.§"f§(param1,[param1]))
                  {
                  }
               }
            }
         }
      }
      
      private function §<h§(param1:Array) : Array
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
         this.§5!,§("BIRD_BLACK",[["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]],["blink",["BIRD_BLACK_BLINK"]],["fly",["BIRD_BLACK_FLYING"]],["yell",["BIRD_BLACK_YELL"]],["fly_yell",["BIRD_BLACK_FLYING_YELL"]],["special",["BIRD_BLACK_SPECIAL","BIRD_BLACK_SPECIAL_2","BIRD_BLACK_SPECIAL_3"]]]);
         this.§5!,§("BIRD_BLUE",[["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]],["blink",["BIRD_BLUE_BLINK"]],["fly",["BIRD_BLUE_FLYING"]],["yell",["BIRD_BLUE_YELL"]],["fly_yell",["BIRD_BLUE_FLYING_YELL"]]]);
         this.§5!,§("BIRD_RED",[["normal",["BIRD_RED_1","BIRD_RED_2"]],["blink",["BIRD_RED_BLINK"]],["fly",["BIRD_RED_FLYING"]],["yell",["BIRD_RED_YELL"]],["fly_yell",["BIRD_RED_FLYING_YELL"]]]);
         this.§5!,§("BIRD_WHITE",[["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]],["blink",["BIRD_WHITE_BLINK"]],["fly",["BIRD_WHITE_FLYING"]],["yell",["BIRD_WHITE_YELL"]],["fly_yell",["BIRD_WHITE_FLYING_YELL"]],["special",["BIRD_WHITE_SPECIAL"]]]);
         this.§5!,§("BIRD_YELLOW",[["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]],["blink",["BIRD_YELLOW_BLINK"]],["fly",["BIRD_YELLOW_FLYING"]],["yell",["BIRD_YELLOW_YELL"]],["fly_yell",["BIRD_YELLOW_FLYING_YELL"]],["special",["BIRD_YELLOW_SPECIAL"]]]);
         this.§5!,§("BIRD_GREEN",[["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]],["blink",["BIRD_GREEN_BLINK"]],["fly",["BIRD_GREEN_FLYING"]],["yell",["BIRD_GREEN_YELL"]],["fly_yell",["BIRD_GREEN_FLYING_YELL"]],["special",["BIRD_GREEN_SPECIAL"]]]);
         this.§5!,§("BIRD_REDBIG",[["normal",["BIRD_REDBIG_1"]],["blink",["BIRD_REDBIG_BLINK"]],["fly",["BIRD_REDBIG_FLYING"]],["yell",["BIRD_REDBIG_YELL"]],["fly_yell",["BIRD_REDBIG_FLYING_YELL"]]]);
      }
      
      protected function §@!X§() : void
      {
         this.§5!,§("PIG_BASIC_SMALL",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         this.§5!,§("PIG_BASIC_MEDIUM",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         this.§5!,§("PIG_BASIC_BIG",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         this.§5!,§("PIG_HELMET",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         this.§5!,§("PIG_MUSTACHE",[["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]],["blink",["PIG_MUSTACHE_01_BLINK","PIG_MUSTACHE_02_BLINK","PIG_MUSTACHE_03_BLINK"]],["yell",["PIG_MUSTACHE_01_SMILE","PIG_MUSTACHE_02_SMILE","PIG_MUSTACHE_03_SMILE"]]]);
         this.§5!,§("PIG_KING",[["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]],["blink",["PIG_KING_01_BLINK","PIG_KING_02_BLINK","PIG_KING_03_BLINK"]],["yell",["PIG_KING_01_SMILE","PIG_KING_02_SMILE","PIG_KING_03_SMILE"]]]);
      }
      
      protected function §"f§(param1:String, param2:Array) : Boolean
      {
         var name:String = param1;
         var frameNames:Array = param2;
         if(this.§2g§[name])
         {
            throw new Error("Trying to add a duplicate animation: " + name);
         }
         var result:Boolean = true;
         try
         {
            this.§2g§[name] = this.§=K§(frameNames);
         }
         catch(e:Error)
         {
            result = false;
         }
         return result;
      }
      
      private function §=K§(param1:Array) : §6H§
      {
         var _loc3_:String = null;
         var _loc4_:§+!=§ = null;
         var _loc2_:§6H§ = new §6H§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§[G§.§#P§(_loc3_);
            _loc2_.addFrame(_loc4_);
         }
         return _loc2_;
      }
      
      protected function §5!,§(param1:String, param2:Array) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(this.§2g§[param1])
         {
            throw new Error("Trying to add a duplicate animation: " + param1);
         }
         var _loc3_:§4!E§ = new §4!E§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            _loc3_.§"f§(_loc5_,this.§=K§(_loc6_));
         }
         this.§2g§[param1] = _loc3_;
      }
      
      public function §>n§(param1:String) : §6H§
      {
         return this.§2g§[param1];
      }
   }
}
