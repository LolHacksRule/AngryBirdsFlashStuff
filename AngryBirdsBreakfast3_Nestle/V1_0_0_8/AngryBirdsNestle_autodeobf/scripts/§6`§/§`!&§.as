package §6`§
{
   import flash.utils.Dictionary;
   
   public class §`!&§
   {
       
      
      private var §1!5§:§2a§;
      
      private var §?e§:Dictionary;
      
      public function §`!&§(param1:§2a§)
      {
         this.§?e§ = new Dictionary();
         super();
         this.§1!5§ = param1;
      }
      
      public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         this.§2!?§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§2!?§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
         this.§2!?§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§2!?§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§2!?§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§2!?§("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
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
               this.§2!?§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.§2!?§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.§2!?§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      public function §2!?§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §-!i§
      {
         var _loc5_:§-!i§ = this.§%!6§(param1,param2,param3,param4);
         this.§>w§(param1,_loc5_);
         return _loc5_;
      }
      
      public function §[+§(param1:String, param2:Array) : void
      {
         var _loc3_:§2!T§ = this.§1!U§(param1,param2);
         this.§>w§(param1,_loc3_);
      }
      
      private function §%!6§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §-!i§
      {
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc5_:§-!i§ = new §-!i§(param1,this.§1!5§);
         var _loc6_:int = 0;
         while(_loc6_ < param2.length)
         {
            _loc7_ = param2[_loc6_];
            _loc8_ = 0;
            if(param3)
            {
               _loc8_ = param3[_loc6_];
            }
            _loc5_.addFrame(_loc7_,_loc8_);
            _loc6_++;
         }
         if(param4)
         {
            _loc5_.§9!?§(param4);
         }
         return _loc5_;
      }
      
      private function §1!U§(param1:String, param2:Array) : §2!T§
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc3_:§2!T§ = new §2!T§(param1,this.§1!5§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            if((_loc6_ = _loc4_[1]).length > 0 && _loc6_[0] is Array)
            {
               _loc3_.§2!?§(_loc5_,this.§1!U§(_loc5_,_loc6_));
            }
            else
            {
               _loc7_ = null;
               _loc8_ = null;
               if(_loc4_.length > 2)
               {
                  _loc7_ = _loc4_[2];
               }
               if(_loc4_.length > 3)
               {
                  _loc8_ = _loc4_[3][0];
               }
               _loc3_.§2!?§(_loc5_,this.§%!6§(_loc5_,_loc6_,_loc7_,_loc8_));
            }
         }
         return _loc3_;
      }
      
      private function §>w§(param1:String, param2:§-!i§) : void
      {
         if(this.§?e§[param1])
         {
            return;
         }
         this.§?e§[param1] = param2;
      }
      
      public function §#!r§(param1:String) : §-!i§
      {
         return this.§?e§[param1];
      }
   }
}
