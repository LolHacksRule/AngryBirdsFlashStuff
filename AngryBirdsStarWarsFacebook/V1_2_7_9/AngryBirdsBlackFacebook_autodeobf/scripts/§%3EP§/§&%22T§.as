package §>P§
{
   public class §&"T§ extends §+^§
   {
      
      public static const §%!3§:String = "idleState";
      
      public static const §<o§:String = "freezeState";
       
      
      protected var §^5§:Object;
      
      protected var §"!`§:Number;
      
      protected var §=#3§:Number;
      
      public function §&"T§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §+!r§ = param7;
         this.§^5§ = param1.stateAnimations;
      }
      
      public function §>r§() : Array
      {
         return [this.§"!`§,this.§=#3§];
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
            _loc3_ = [§%!3§];
            for(_loc4_ in param1)
            {
               if(_loc4_ != §%!3§)
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
                     _loc9_ = §7P§(_loc8_,_loc6_);
                     _loc7_.push(_loc9_);
                     _loc8_++;
                  }
                  _loc2_.push([_loc4_,_loc7_]);
                  if(_loc4_ == §%!3§ && _loc6_.idleTime is Array)
                  {
                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                     {
                        this.§"!`§ = _loc10_[0];
                        this.§=#3§ = _loc10_[1];
                     }
                  }
               }
            }
            _loc5_ = [["1",[§"!g§]]];
            _loc2_.push([§<o§,_loc5_]);
            return _loc2_;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.readStateAnimations(this.§^5§);
         if(_loc1_)
         {
            return _loc1_;
         }
         return super.getAnimationDefinitions();
      }
   }
}
