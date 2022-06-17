package §^"[§
{
   import flash.utils.Dictionary;
   
   public class §2#6§
   {
       
      
      private var §2!b§:§=#;§;
      
      private var §+"k§:Dictionary;
      
      public function §2#6§(param1:§=#;§)
      {
         this.§+"k§ = new Dictionary();
         super();
         this.§2!b§ = param1;
      }
      
      public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         this.§5!6§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§5!6§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
         this.§5!6§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§5!6§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§5!6§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§5!6§("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
         for each(_loc1_ in [{
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
            _loc2_ = 1;
            while(_loc2_ <= _loc1_.count)
            {
               this.§5!6§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.§5!6§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.§5!6§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      public function §5!6§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §4!8§
      {
         var _loc5_:§4!8§ = this.§'j§(param1,param2,param3,param4);
         this.§`#x§(param1,_loc5_);
         return _loc5_;
      }
      
      public function §<k§(param1:String, param2:Array) : void
      {
         var _loc3_:§ v§ = this.§!!K§(param1,param2);
         this.§`#x§(param1,_loc3_);
      }
      
      private function §'j§(param1:String, param2:Array, param3:Array = null, param4:String = null, param5:String = null, param6:String = null, param7:Boolean = false, param8:int = 1) : §4!8§
      {
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc9_:§4!8§ = new §4!8§(param1,this.§2!b§);
         var _loc10_:int = 0;
         while(_loc10_ < param2.length)
         {
            _loc11_ = param2[_loc10_];
            _loc12_ = 0;
            if(param3)
            {
               _loc12_ = param3[_loc10_];
            }
            _loc9_.addFrame(_loc11_,_loc12_);
            _loc10_++;
         }
         if(param4)
         {
            _loc9_.§2"u§(param4,param5);
         }
         _loc9_.isLooping = param7;
         _loc9_.priority = param8;
         if(param6)
         {
            _loc9_.startAnimationName = param6;
         }
         return _loc9_;
      }
      
      private function §!!K§(param1:String, param2:Array) : § v§
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc3_:§ v§ = new § v§(param1,this.§2!b§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            if((_loc6_ = _loc4_[1]).length > 0 && _loc6_[0] is Array)
            {
               _loc3_.§5!6§(_loc5_,this.§!!K§(_loc5_,_loc6_));
            }
            else
            {
               _loc7_ = null;
               _loc8_ = null;
               _loc9_ = null;
               if(_loc4_.length > 2)
               {
                  _loc7_ = _loc4_[2];
               }
               if(_loc4_.length > 3)
               {
                  if(_loc4_[3].length > 0)
                  {
                     if(_loc4_[3][0].length > 1)
                     {
                        _loc8_ = _loc4_[3][0][0];
                        _loc9_ = _loc4_[3][0][1];
                     }
                     else
                     {
                        _loc8_ = _loc4_[3][0];
                     }
                  }
               }
               _loc10_ = "creation";
               if(_loc4_.length > 4)
               {
                  _loc10_ = _loc4_[4];
               }
               _loc11_ = _loc4_.length > 5 ? Boolean(_loc4_[5]) : false;
               _loc12_ = _loc4_.length > 6 ? int(_loc4_[6]) : 1;
               _loc3_.§5!6§(_loc5_,this.§'j§(_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_));
            }
         }
         return _loc3_;
      }
      
      private function §`#x§(param1:String, param2:§4!8§) : void
      {
         this.§+"k§[param1] = param2;
      }
      
      public function getAnimation(param1:String) : §4!8§
      {
         return this.§+"k§[param1];
      }
      
      public function §'n§() : Dictionary
      {
         return this.§+"k§;
      }
   }
}
