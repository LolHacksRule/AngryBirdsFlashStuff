package §`!v§
{
   public class §7Z§ extends §;!d§
   {
       
      
      protected var §>#+§:Vector.<§6p§>;
      
      protected var §!!N§:Number = 1.0;
      
      protected var §9W§:Number = 1.0;
      
      protected var §return§:Number = 1.0;
      
      protected var §4e§:Number = 1.0;
      
      protected var §'!e§:Number = 0.0;
      
      protected var §&"d§:Number = 0.0;
      
      public function §7Z§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param13,param14,param15,param16);
         this.§>#+§ = new Vector.<§6p§>();
         this.§!!N§ = param7;
         this.§9W§ = param8;
         this.§return§ = param9;
         this.§4e§ = param10;
         this.§'!e§ = param11;
         this.§&"d§ = param12;
      }
      
      public function get §]"c§() : Number
      {
         return this.§!!N§;
      }
      
      public function get §^=§() : Number
      {
         return this.§9W§;
      }
      
      public function get §%c§() : Number
      {
         return this.§return§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§4e§;
      }
      
      public function get velocityX() : Number
      {
         return this.§'!e§;
      }
      
      public function get velocityY() : Number
      {
         return this.§&"d§;
      }
      
      public function §^";§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§6p§;
         (_loc11_ = new §6p§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§>#+§.push(_loc11_);
      }
   }
}
