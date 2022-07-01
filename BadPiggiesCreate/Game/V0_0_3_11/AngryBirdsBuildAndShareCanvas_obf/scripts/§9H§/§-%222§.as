package §9H§
{
   import §7!N§.§]!U§;
   import §=!N§.§%!O§;
   import flash.display.MovieClip;
   
   public class §-"2§ extends §%!O§
   {
      
      public static const §4!n§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §`"%§:MovieClipParameter;
      
      protected var §&J§:MovieClip = null;
      
      protected var §,H§:MovieClipParameter;
      
      public function §-"2§()
      {
         this.§,H§ = new MovieClipParameter();
         this.§`"%§ = new MovieClipParameter();
         super();
      }
      
      public static function §=f§(param1:§]!U§) : void
      {
         param1.§+s§(§-"2§,MovieClip,§4!n§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§`"%§.relativeFlags |= !!param3 ? 1 : 0;
            this.§`"%§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§&J§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§&J§;
         var _loc3_:MovieClipParameter = this.§`"%§;
         var _loc4_:MovieClipParameter = this.§,H§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§&J§;
         var _loc2_:MovieClipParameter = this.§`"%§;
         var _loc3_:MovieClipParameter = this.§,H§;
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
         return this.§&J§;
      }
      
      override protected function newInstance() : §%!O§
      {
         return new §-"2§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§,H§.relativeFlags |= !!param3 ? 1 : 0;
            this.§,H§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§%!O§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§-"2§ = param1 as §-"2§;
         this.§&J§ = _loc2_.§&J§;
         this.§,H§.copyFrom(_loc2_.§,H§);
         this.§`"%§.copyFrom(_loc2_.§`"%§);
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
