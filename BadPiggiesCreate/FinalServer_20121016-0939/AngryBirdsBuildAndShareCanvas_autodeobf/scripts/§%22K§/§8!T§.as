package §"K§
{
   import §8=§.§4"+§;
   import §<!3§.§"`§;
   import flash.display.MovieClip;
   
   public class §8!T§ extends §4"+§
   {
      
      public static const §0!V§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §,_§:MovieClipParameter;
      
      protected var §"!c§:MovieClip = null;
      
      protected var §-!m§:MovieClipParameter;
      
      public function §8!T§()
      {
         this.§-!m§ = new MovieClipParameter();
         this.§,_§ = new MovieClipParameter();
         super();
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         param1.§5!j§(§8!T§,MovieClip,§0!V§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§,_§.relativeFlags |= !!param3 ? 1 : 0;
            this.§,_§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§"!c§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§"!c§;
         var _loc3_:MovieClipParameter = this.§,_§;
         var _loc4_:MovieClipParameter = this.§-!m§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§"!c§;
         var _loc2_:MovieClipParameter = this.§,_§;
         var _loc3_:MovieClipParameter = this.§-!m§;
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
         return this.§"!c§;
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §8!T§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§-!m§.relativeFlags |= !!param3 ? 1 : 0;
            this.§-!m§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§8!T§ = param1 as §8!T§;
         this.§"!c§ = _loc2_.§"!c§;
         this.§-!m§.copyFrom(_loc2_.§-!m§);
         this.§,_§.copyFrom(_loc2_.§,_§);
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
