package § 6§
{
   import §9!j§.§'"#§;
   import §>O§.§4!!§;
   import flash.display.MovieClip;
   
   public class §6"2§ extends §4!!§
   {
      
      public static const §&!@§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §]q§:MovieClipParameter;
      
      protected var §,@§:MovieClip = null;
      
      protected var § [§:MovieClipParameter;
      
      public function §6"2§()
      {
         this.§ [§ = new MovieClipParameter();
         this.§]q§ = new MovieClipParameter();
         super();
      }
      
      public static function §"!%§(param1:§'"#§) : void
      {
         param1.§0;§(§6"2§,MovieClip,§&!@§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§]q§.relativeFlags |= !!param3 ? 1 : 0;
            this.§]q§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§,@§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§,@§;
         var _loc3_:MovieClipParameter = this.§]q§;
         var _loc4_:MovieClipParameter = this.§ [§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§,@§;
         var _loc2_:MovieClipParameter = this.§]q§;
         var _loc3_:MovieClipParameter = this.§ [§;
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
         return this.§,@§;
      }
      
      override protected function newInstance() : §4!!§
      {
         return new §6"2§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§ [§.relativeFlags |= !!param3 ? 1 : 0;
            this.§ [§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§4!!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§6"2§ = param1 as §6"2§;
         this.§,@§ = _loc2_.§,@§;
         this.§ [§.copyFrom(_loc2_.§ [§);
         this.§]q§.copyFrom(_loc2_.§]q§);
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
