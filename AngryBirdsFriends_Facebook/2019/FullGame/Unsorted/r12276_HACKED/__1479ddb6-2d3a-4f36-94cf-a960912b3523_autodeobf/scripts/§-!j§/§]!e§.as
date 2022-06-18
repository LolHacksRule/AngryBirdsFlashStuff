package §-!j§
{
   public class §]!e§ extends §^`§
   {
      
      public static const §#!J§:String = "idleState";
      
      public static const §!"a§:String = "freezeState";
       
      
      protected var §6_§:Object;
      
      protected var §^#T§:Number;
      
      protected var §?!§:Number;
      
      public function §]!e§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §!8§ = param7;
         this.§6_§ = param1.stateAnimations;
      }
      
      public function §?!P§() : Array
      {
         return [this.§^#T§,this.§?!§];
      }
      
      protected function §8"P§(param1:Object) : Array
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
            _loc3_ = [§#!J§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §#!J§)
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
                     _loc9_ = §&!w§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §#!J§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§^#T§ = _loc10_[0];
                        this.§?!§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§?A§]]];
            _loc2_.push([§!"a§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§8"P§(this.§6_§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
