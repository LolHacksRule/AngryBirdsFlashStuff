package §`#C§
{
   public class §<?§ extends §##Z§
   {
      
      public static const §@#H§:String = "idleState";
      
      public static const §9"d§:String = "freezeState";
       
      
      protected var § "A§:Object;
      
      protected var §?d§:Number;
      
      protected var §4"B§:Number;
      
      public function §<?§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §1!v§ = param7;
         this.§ "A§ = param1.stateAnimations;
      }
      
      public function §,#_§() : Array
      {
         return [this.§?d§,this.§4"B§];
      }
      
      protected function §3!c§(param1:Object) : Array
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
            _loc3_ = [§@#H§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §@#H§)
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
                     _loc9_ = §4#a§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §@#H§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§?d§ = _loc10_[0];
                        this.§4"B§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§+1§]]];
            _loc2_.push([§9"d§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§3!c§(this.§ "A§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
