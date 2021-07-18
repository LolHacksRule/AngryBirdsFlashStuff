package §@"§
{
   import flash.utils.Dictionary;
   
   public class §]!-§
   {
       
      
      private var §5!H§:§&!=§;
      
      private var §;$9§:Dictionary;
      
      public function §]!-§(param1:§&!=§)
      {
         this.§;$9§ = new Dictionary();
         super();
         this.§5!H§ = param1;
      }
      
      public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         this.§]"S§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§]"S§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
         this.§]"S§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§]"S§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.§]"S§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.§]"S§("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
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
               this.§]"S§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.§]"S§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.§]"S§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      public function §]"S§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §`"W§
      {
         var _loc5_:§`"W§ = this.§!#l§(param1,param2,param3,param4);
         this.§6T§(param1,_loc5_);
         return _loc5_;
      }
      
      public function §3!A§(param1:String, param2:Array) : void
      {
         var _loc3_:§&"m§ = this.§?#>§(param1,param2);
         this.§6T§(param1,_loc3_);
      }
      
      private function §!#l§(param1:String, param2:Array, param3:Array = null, param4:String = null, param5:String = null) : §`"W§
      {
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc6_:§`"W§ = new §`"W§(param1,this.§5!H§);
         var _loc7_:int = 0;
         while(_loc7_ < param2.length)
         {
            _loc8_ = param2[_loc7_];
            _loc9_ = 0;
            if(param3)
            {
               _loc9_ = param3[_loc7_];
            }
            _loc6_.addFrame(_loc8_,_loc9_);
            _loc7_++;
         }
         if(param4)
         {
            _loc6_.§9!B§(param4,param5);
         }
         return _loc6_;
      }
      
      private function §?#>§(param1:String, param2:Array) : §&"m§
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:§&"m§ = new §&"m§(param1,this.§5!H§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            if((_loc6_ = _loc4_[1]).length > 0 && _loc6_[0] is Array)
            {
               _loc3_.§]"S§(_loc5_,this.§?#>§(_loc5_,_loc6_));
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
               _loc3_.§]"S§(_loc5_,this.§!#l§(_loc5_,_loc6_,_loc7_,_loc8_,_loc9_));
            }
         }
         return _loc3_;
      }
      
      private function §6T§(param1:String, param2:§`"W§) : void
      {
         if(this.§;$9§[param1])
         {
            return;
         }
         this.§;$9§[param1] = param2;
      }
      
      public function getAnimation(param1:String) : §`"W§
      {
         return this.§;$9§[param1];
      }
      
      public function §%#D§() : Dictionary
      {
         return this.§;$9§;
      }
   }
}
