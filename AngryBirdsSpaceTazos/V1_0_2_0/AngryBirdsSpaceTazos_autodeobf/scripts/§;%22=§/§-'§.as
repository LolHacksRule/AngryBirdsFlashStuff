package §;"=§
{
   public class §-'§ extends §?"=§
   {
      
      public static const §4M§:String = "idleState";
      
      public static const §-!Q§:String = "freezeState";
       
      
      protected var §0!c§:Object;
      
      protected var §9!$§:Number;
      
      protected var §@3§:Number;
      
      public function §-'§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false, param7:§-_§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §5"<§ = param7;
         this.§0!c§ = param1.stateAnimations;
      }
      
      public function §,j§() : Array
      {
         return [this.§9!$§,this.§@3§];
      }
      
      protected function §#!%§(param1:Object) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         if(param1)
         {
            _loc2_ = [];
            _loc3_ = [§4M§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §4M§)
               {
                  _loc3_.push(_loc4_);
               }
            }
            for each(_loc4_ in _loc3_)
            {
               if(_loc6_ = param1[_loc4_])
               {
                  _loc7_ = [];
                  _loc8_ = 0;
                  while(_loc8_ < _loc6_.sprites.length)
                  {
                     _loc9_ = §^A§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §4M§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§9!$§ = _loc10_[0];
                        this.§@3§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§&"F§]]];
            _loc2_.push([§-!Q§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§#!%§(this.§0!c§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
