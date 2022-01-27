package §3>§
{
   public class §34§ extends §+!%§
   {
      
      public static const §8"§:String = "idleState";
      
      public static const §^r§:String = "freezeState";
       
      
      protected var §@c§:Object;
      
      protected var §-"-§:Number;
      
      protected var §2$§:Number;
      
      public function §34§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false, param7:§%5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §0"0§ = param7;
         this.§@c§ = param1.stateAnimations;
      }
      
      public function §6!&§() : Array
      {
         return [this.§-"-§,this.§2$§];
      }
      
      protected function §6"§(param1:Object) : Array
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
            _loc3_ = [§8"§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §8"§)
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
                     _loc9_ = §5!2§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §8"§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§-"-§ = _loc10_[0];
                        this.§2$§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§,Y§]]];
            _loc2_.push([§^r§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§6"§(this.§@c§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
