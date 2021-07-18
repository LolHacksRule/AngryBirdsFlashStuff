package §`4§
{
   import §"E§.§&!h§;
   import §0§.§#![§;
   import flash.display.MovieClip;
   
   public class §#!]§ extends §#![§
   {
      
      public static const §66§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §8A§:MovieClipParameter;
      
      protected var §[l§:MovieClip = null;
      
      protected var §`v§:MovieClipParameter;
      
      public function §#!]§()
      {
         this.§`v§ = new MovieClipParameter();
         this.§8A§ = new MovieClipParameter();
         super();
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         param1.§1"3§(§#!]§,MovieClip,§66§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§8A§.relativeFlags |= !!param3 ? 1 : 0;
            this.§8A§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§[l§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§[l§;
         var _loc3_:MovieClipParameter = this.§8A§;
         var _loc4_:MovieClipParameter = this.§`v§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§[l§;
         var _loc2_:MovieClipParameter = this.§8A§;
         var _loc3_:MovieClipParameter = this.§`v§;
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
         return this.§[l§;
      }
      
      override protected function newInstance() : §#![§
      {
         return new §#!]§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§`v§.relativeFlags |= !!param3 ? 1 : 0;
            this.§`v§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§#!]§ = param1 as §#!]§;
         this.§[l§ = _loc2_.§[l§;
         this.§`v§.copyFrom(_loc2_.§`v§);
         this.§8A§.copyFrom(_loc2_.§8A§);
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
