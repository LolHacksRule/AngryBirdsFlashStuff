package §9!Y§
{
   import flash.utils.Dictionary;
   
   public class §!![§
   {
       
      
      private var §!!@§:§!q§;
      
      private var §"u§:Dictionary;
      
      public function §!![§(param1:§!q§)
      {
         this.§"u§ = new Dictionary();
         super();
         this.§!!@§ = param1;
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         this.§,v§(param1);
         this.§6§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§6§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
         this.§6§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§6§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§6§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§6§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
         this.§6§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
         this.§6§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
         this.§6§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
         this.§6§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
         this.§6§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
         this.§6§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
         this.§6§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
         this.§6§("BIRD_SARDINE",["BIRD_SARDINE"]);
         this.§6§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
         this.§6§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
         this.§6§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
         this.§6§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
         this.§6§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
         this.§6§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
         this.§6§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
         this.§6§("SCORE_PIG",["SCORE_PIG"]);
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
               this.§6§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
               _loc3_++;
            }
         }
         this.§6§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.§set §();
         this.§#!#§();
         this.§6§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      private function §,v§(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = this.§##§(param1);
            for each(_loc3_ in _loc2_)
            {
               this.§;b§(_loc3_);
            }
         }
      }
      
      private function §;b§(param1:String) : void
      {
         if(!this.§6§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]))
         {
            if(!this.§6§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]))
            {
               if(!this.§6§(param1,[param1 + "_1"]))
               {
                  if(this.§6§(param1,[param1]))
                  {
                  }
               }
            }
         }
      }
      
      private function §##§(param1:Array) : Array
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
      
      protected function §set §() : void
      {
         this.§'O§("BIRD_BLACK",[["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]],["blink",["BIRD_BLACK_BLINK"]],["fly",["BIRD_BLACK_FLYING"]],["yell",["BIRD_BLACK_YELL"]],["fly_yell",["BIRD_BLACK_FLYING_YELL"]],["special",["BIRD_BLACK_SPECIAL","BIRD_BLACK_SPECIAL_2","BIRD_BLACK_SPECIAL_3"]]]);
         this.§'O§("BIRD_BLUE",[["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]],["blink",["BIRD_BLUE_BLINK"]],["fly",["BIRD_BLUE_FLYING"]],["yell",["BIRD_BLUE_YELL"]],["fly_yell",["BIRD_BLUE_FLYING_YELL"]]]);
         this.§'O§("BIRD_RED",[["normal",["BIRD_RED_1","BIRD_RED_2"]],["blink",["BIRD_RED_BLINK"]],["fly",["BIRD_RED_FLYING"]],["yell",["BIRD_RED_YELL"]],["fly_yell",["BIRD_RED_FLYING_YELL"]]]);
         this.§'O§("BIRD_WHITE",[["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]],["blink",["BIRD_WHITE_BLINK"]],["fly",["BIRD_WHITE_FLYING"]],["yell",["BIRD_WHITE_YELL"]],["fly_yell",["BIRD_WHITE_FLYING_YELL"]],["special",["BIRD_WHITE_SPECIAL"]]]);
         this.§'O§("BIRD_YELLOW",[["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]],["blink",["BIRD_YELLOW_BLINK"]],["fly",["BIRD_YELLOW_FLYING"]],["yell",["BIRD_YELLOW_YELL"]],["fly_yell",["BIRD_YELLOW_FLYING_YELL"]],["special",["BIRD_YELLOW_SPECIAL"]]]);
         this.§'O§("BIRD_GREEN",[["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]],["blink",["BIRD_GREEN_BLINK"]],["fly",["BIRD_GREEN_FLYING"]],["yell",["BIRD_GREEN_YELL"]],["fly_yell",["BIRD_GREEN_FLYING_YELL"]],["special",["BIRD_GREEN_SPECIAL"]]]);
         this.§'O§("BIRD_REDBIG",[["normal",["BIRD_REDBIG_1"]],["blink",["BIRD_REDBIG_BLINK"]],["fly",["BIRD_REDBIG_FLYING"]],["yell",["BIRD_REDBIG_YELL"]],["fly_yell",["BIRD_REDBIG_FLYING_YELL"]]]);
      }
      
      protected function §#!#§() : void
      {
         this.§'O§("PIG_BASIC_SMALL",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         this.§'O§("PIG_BASIC_MEDIUM",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         this.§'O§("PIG_BASIC_BIG",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         this.§'O§("PIG_HELMET",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         this.§'O§("PIG_MUSTACHE",[["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]],["blink",["PIG_MUSTACHE_01_BLINK","PIG_MUSTACHE_02_BLINK","PIG_MUSTACHE_03_BLINK"]],["yell",["PIG_MUSTACHE_01_SMILE","PIG_MUSTACHE_02_SMILE","PIG_MUSTACHE_03_SMILE"]]]);
         this.§'O§("PIG_KING",[["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]],["blink",["PIG_KING_01_BLINK","PIG_KING_02_BLINK","PIG_KING_03_BLINK"]],["yell",["PIG_KING_01_SMILE","PIG_KING_02_SMILE","PIG_KING_03_SMILE"]]]);
      }
      
      protected function §6§(param1:String, param2:Array) : Boolean
      {
         var name:String = param1;
         var frameNames:Array = param2;
         if(this.§"u§[name])
         {
            throw new Error("Trying to add a duplicate animation: " + name);
         }
         var result:Boolean = true;
         try
         {
            this.§"u§[name] = this.§^J§(frameNames);
         }
         catch(e:Error)
         {
            result = false;
         }
         return result;
      }
      
      private function §^J§(param1:Array) : §<!%§
      {
         var _loc3_:String = null;
         var _loc4_:§"#§ = null;
         var _loc2_:§<!%§ = new §<!%§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§!!@§.§?!&§(_loc3_);
            _loc2_.addFrame(_loc4_);
         }
         return _loc2_;
      }
      
      protected function §'O§(param1:String, param2:Array) : void
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(this.§"u§[param1])
         {
            throw new Error("Trying to add a duplicate animation: " + param1);
         }
         var _loc3_:§5z§ = new §5z§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            _loc3_.§6§(_loc5_,this.§^J§(_loc6_));
         }
         this.§"u§[param1] = _loc3_;
      }
      
      public function § !Z§(param1:String) : §<!%§
      {
         return this.§"u§[param1];
      }
   }
}
