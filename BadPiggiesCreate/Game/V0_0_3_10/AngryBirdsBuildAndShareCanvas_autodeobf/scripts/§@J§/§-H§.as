package §@J§
{
   import § !R§.§5!-§;
   import §6!F§.§>!%§;
   import flash.display.MovieClip;
   
   public class §-H§ extends §>!%§
   {
      
      public static const §&!]§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §,!f§:MovieClipParameter;
      
      protected var §>!C§:MovieClip = null;
      
      protected var §1[§:MovieClipParameter;
      
      public function §-H§()
      {
         this.§1[§ = new MovieClipParameter();
         this.§,!f§ = new MovieClipParameter();
         super();
      }
      
      public static function §8!m§(param1:§5!-§) : void
      {
         param1.§&!Z§(§-H§,MovieClip,§&!]§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§,!f§.relativeFlags |= !!param3 ? 1 : 0;
            this.§,!f§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§>!C§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§>!C§;
         var _loc3_:MovieClipParameter = this.§,!f§;
         var _loc4_:MovieClipParameter = this.§1[§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§>!C§;
         var _loc2_:MovieClipParameter = this.§,!f§;
         var _loc3_:MovieClipParameter = this.§1[§;
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
         return this.§>!C§;
      }
      
      override protected function newInstance() : §>!%§
      {
         return new §-H§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§1[§.relativeFlags |= !!param3 ? 1 : 0;
            this.§1[§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§>!%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§-H§ = param1 as §-H§;
         this.§>!C§ = _loc2_.§>!C§;
         this.§1[§.copyFrom(_loc2_.§1[§);
         this.§,!f§.copyFrom(_loc2_.§,!f§);
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
