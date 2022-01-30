package § !s§
{
   import § !3§.§1!§;
   import §#!,§.§='§;
   import flash.display.MovieClip;
   
   public class §!!d§ extends §1!§
   {
      
      public static const §@L§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var § x§:MovieClipParameter;
      
      protected var §-"7§:MovieClip = null;
      
      protected var §4]§:MovieClipParameter;
      
      public function §!!d§()
      {
         this.§4]§ = new MovieClipParameter();
         this.§ x§ = new MovieClipParameter();
         super();
      }
      
      public static function §3a§(param1:§='§) : void
      {
         param1.§^",§(§!!d§,MovieClip,§@L§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§ x§.relativeFlags |= !!param3 ? 1 : 0;
            this.§ x§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§-"7§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§-"7§;
         var _loc3_:MovieClipParameter = this.§ x§;
         var _loc4_:MovieClipParameter = this.§4]§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§-"7§;
         var _loc2_:MovieClipParameter = this.§ x§;
         var _loc3_:MovieClipParameter = this.§4]§;
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
         return this.§-"7§;
      }
      
      override protected function newInstance() : §1!§
      {
         return new §!!d§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§4]§.relativeFlags |= !!param3 ? 1 : 0;
            this.§4]§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§1!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§!!d§ = param1 as §!!d§;
         this.§-"7§ = _loc2_.§-"7§;
         this.§4]§.copyFrom(_loc2_.§4]§);
         this.§ x§.copyFrom(_loc2_.§ x§);
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
