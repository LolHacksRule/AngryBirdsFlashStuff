package §#g§
{
   public class §]_§ extends §=!-§
   {
      
      public static const §'!r§:String = "idleState";
      
      public static const §,"T§:String = "freezeState";
       
      
      protected var §2! §:Object;
      
      protected var §^">§:Number;
      
      protected var §'"E§:Number;
      
      public function §]_§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false, param7:§?B§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §?$§ = param7;
         this.§2! § = param1.stateAnimations;
      }
      
      public function §;!c§() : Array
      {
         return [this.§^">§,this.§'"E§];
      }
      
      protected function readStateAnimations(param1:Object) : Array
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
            _loc3_ = [§'!r§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §'!r§)
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
                     _loc9_ = §5H§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §'!r§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§^">§ = _loc10_[0];
                        this.§'"E§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§2-§]]];
            _loc2_.push([§,"T§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.readStateAnimations(this.§2! §);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
