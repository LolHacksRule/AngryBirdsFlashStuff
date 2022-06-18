package §7"&§
{
   public class §##v§ extends §[S§
   {
      
      public static const §5x§:String = "idleState";
      
      public static const §;!n§:String = "freezeState";
       
      
      protected var §#"v§:Object;
      
      protected var §+Z§:Number;
      
      protected var §-a§:Number;
      
      public function §##v§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §="l§ = param7;
         this.§#"v§ = param1.stateAnimations;
      }
      
      public function §@#"§() : Array
      {
         return [this.§+Z§,this.§-a§];
      }
      
      protected function § %§(param1:Object) : Array
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
            _loc3_ = [§5x§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §5x§)
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
                     _loc9_ = §'t§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §5x§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§+Z§ = _loc10_[0];
                        this.§-a§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§8!!§]]];
            _loc2_.push([§;!n§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§ %§(this.§#"v§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
