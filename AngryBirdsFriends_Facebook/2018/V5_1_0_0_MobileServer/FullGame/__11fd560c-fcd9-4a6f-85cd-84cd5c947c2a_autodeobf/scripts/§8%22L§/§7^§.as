package §8"L§
{
   public class §7^§ extends §4"?§
   {
      
      public static const §]#k§:String = "idleState";
      
      public static const §-1§:String = "freezeState";
       
      
      protected var §?#a§:Object;
      
      protected var §["h§:Number;
      
      protected var §[J§:Number;
      
      public function §7^§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §5#S§ = param7;
         this.§?#a§ = param1.stateAnimations;
      }
      
      public function §>a§() : Array
      {
         return [this.§["h§,this.§[J§];
      }
      
      protected function §"k§(param1:Object) : Array
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
            _loc3_ = [§]#k§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §]#k§)
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
                     _loc9_ = §1!V§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §]#k§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§["h§ = _loc10_[0];
                        this.§[J§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§3"i§]]];
            _loc2_.push([§-1§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§"k§(this.§?#a§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
