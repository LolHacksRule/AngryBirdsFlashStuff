package §7"9§
{
   import § get§.§]D§;
   import §?"3§.§6!A§;
   import flash.display.MovieClip;
   
   public class §0!Z§ extends §]D§
   {
      
      public static const §7a§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §%!r§:MovieClipParameter;
      
      protected var §<"$§:MovieClip = null;
      
      protected var §;!g§:MovieClipParameter;
      
      public function §0!Z§()
      {
         this.§;!g§ = new MovieClipParameter();
         this.§%!r§ = new MovieClipParameter();
         super();
      }
      
      public static function §"!6§(param1:§6!A§) : void
      {
         param1.§3!3§(§0!Z§,MovieClip,§7a§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§%!r§.relativeFlags |= !!param3 ? 1 : 0;
            this.§%!r§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§<"$§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§<"$§;
         var _loc3_:MovieClipParameter = this.§%!r§;
         var _loc4_:MovieClipParameter = this.§;!g§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§<"$§;
         var _loc2_:MovieClipParameter = this.§%!r§;
         var _loc3_:MovieClipParameter = this.§;!g§;
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
         return this.§<"$§;
      }
      
      override protected function newInstance() : §]D§
      {
         return new §0!Z§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§;!g§.relativeFlags |= !!param3 ? 1 : 0;
            this.§;!g§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§]D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§0!Z§ = param1 as §0!Z§;
         this.§<"$§ = _loc2_.§<"$§;
         this.§;!g§.copyFrom(_loc2_.§;!g§);
         this.§%!r§.copyFrom(_loc2_.§%!r§);
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
