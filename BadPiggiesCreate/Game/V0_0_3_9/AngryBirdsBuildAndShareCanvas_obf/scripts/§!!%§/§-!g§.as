package §!!%§
{
   import §?u§.§]%§;
   import §^!B§.§1!P§;
   import flash.display.MovieClip;
   
   public class §-!g§ extends §]%§
   {
      
      public static const §]!$§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §?$§:MovieClipParameter;
      
      protected var §@u§:MovieClip = null;
      
      protected var §^Z§:MovieClipParameter;
      
      public function §-!g§()
      {
         this.§^Z§ = new MovieClipParameter();
         this.§?$§ = new MovieClipParameter();
         super();
      }
      
      public static function §5"+§(param1:§1!P§) : void
      {
         param1.§]!Y§(§-!g§,MovieClip,§]!$§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§?$§.relativeFlags |= !!param3 ? 1 : 0;
            this.§?$§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§@u§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§@u§;
         var _loc3_:MovieClipParameter = this.§?$§;
         var _loc4_:MovieClipParameter = this.§^Z§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§@u§;
         var _loc2_:MovieClipParameter = this.§?$§;
         var _loc3_:MovieClipParameter = this.§^Z§;
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
         return this.§@u§;
      }
      
      override protected function newInstance() : §]%§
      {
         return new §-!g§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§^Z§.relativeFlags |= !!param3 ? 1 : 0;
            this.§^Z§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§]%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§-!g§ = param1 as §-!g§;
         this.§@u§ = _loc2_.§@u§;
         this.§^Z§.copyFrom(_loc2_.§^Z§);
         this.§?$§.copyFrom(_loc2_.§?$§);
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
