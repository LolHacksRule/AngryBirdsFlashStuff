package §;"0§
{
   public class §0!2§ extends §="4§
   {
       
      
      protected var §;S§:Vector.<§?!!§>;
      
      protected var §9!`§:Number = 1.0;
      
      protected var §`#§:Number = 1.0;
      
      protected var §-I§:Number = 1.0;
      
      protected var §4!U§:Number = 1.0;
      
      public function §0!2§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param12,param13,param14);
         this.§;S§ = new Vector.<§?!!§>();
         this.§9!`§ = param7;
         this.§`#§ = param8;
         this.§-I§ = param9;
         this.§4!U§ = param10;
      }
      
      public function get §"i§() : Number
      {
         return this.§9!`§;
      }
      
      public function get §%!1§() : Number
      {
         return this.§`#§;
      }
      
      public function get § set§() : Number
      {
         return this.§-I§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§4!U§;
      }
      
      public function §?!J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§?!!§;
         (_loc11_ = new §?!!§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§;S§.push(_loc11_);
      }
   }
}
