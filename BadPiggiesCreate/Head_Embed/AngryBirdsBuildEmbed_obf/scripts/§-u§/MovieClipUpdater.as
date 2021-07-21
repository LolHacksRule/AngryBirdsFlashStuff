package §-u§
{
   import §3§.§8Y§;
   import §]s§.§&[§;
   import flash.display.MovieClip;
   
   public class MovieClipUpdater extends §8Y§
   {
      
      public static const §03§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §;u§:MovieClipParameter;
      
      protected var §?!p§:MovieClip = null;
      
      protected var §%f§:MovieClipParameter;
      
      public function MovieClipUpdater()
      {
         this.§%f§ = new MovieClipParameter();
         this.§;u§ = new MovieClipParameter();
         super();
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         param1.§6p§(MovieClipUpdater,MovieClip,§03§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§;u§.relativeFlags |= !!param3 ? 1 : 0;
            this.§;u§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§?!p§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§?!p§;
         var _loc3_:MovieClipParameter = this.§;u§;
         var _loc4_:MovieClipParameter = this.§%f§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§?!p§;
         var _loc2_:MovieClipParameter = this.§;u§;
         var _loc3_:MovieClipParameter = this.§%f§;
         var _loc4_:uint;
         if(((_loc4_ = this._flags) & 1) != 0)
         {
            if(isNaN(_loc3_.frame))
            {
               _loc3_.frame = _loc1_.currentFrame;
            }
            else if((_loc3_.relativeFlags & 1) != 0)
            {
               _loc3_.frame += _loc1_.currentFrame;
            }
            if(isNaN(_loc2_.frame))
            {
               _loc2_.frame = _loc1_.currentFrame;
            }
            else if((_loc2_.relativeFlags & 1) != 0)
            {
               _loc2_.frame += _loc1_.currentFrame;
            }
         }
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      override protected function newInstance() : §8Y§
      {
         return new MovieClipUpdater();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§%f§.relativeFlags |= !!param3 ? 1 : 0;
            this.§%f§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         super.copyFrom(param1);
         var _loc2_:MovieClipUpdater = param1 as MovieClipUpdater;
         this.§?!p§ = _loc2_.§?!p§;
         this.§%f§.copyFrom(_loc2_.§%f§);
         this.§;u§.copyFrom(_loc2_.§;u§);
         this._flags = _loc2_._flags;
      }
   }
}

class MovieClipParameter
{
    
   
   public var relativeFlags:uint = 0;
   
   public var frame:Number;
   
   function MovieClipParameter()
   {
      super();
   }
   
   public function copyFrom(param1:MovieClipParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.frame = param1.frame;
   }
}
