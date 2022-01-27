package §"!&§
{
   public class §3",§ extends §5!f§
   {
      
      public static const §#"B§:String = "idleState";
      
      public static const §!R§:String = "freezeState";
       
      
      protected var §?! §:Object;
      
      protected var §"x§:Number;
      
      protected var §[W§:Number;
      
      public function §3",§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §9"3§ = param7;
         this.§?! § = param1.stateAnimations;
      }
      
      public function §+!5§() : Array
      {
         return [this.§"x§,this.§[W§];
      }
      
      protected function §-!R§(param1:Object) : Array
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
            _loc3_ = [§#"B§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §#"B§)
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
                     _loc9_ = § "+§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §#"B§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§"x§ = _loc10_[0];
                        this.§[W§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§%Q§]]];
            _loc2_.push([§!R§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§-!R§(this.§?! §);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
