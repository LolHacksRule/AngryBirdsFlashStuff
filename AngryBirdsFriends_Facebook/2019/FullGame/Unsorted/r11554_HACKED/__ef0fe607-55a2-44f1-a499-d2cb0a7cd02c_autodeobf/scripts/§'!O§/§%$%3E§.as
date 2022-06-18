package §'!O§
{
   public class §%$>§ extends §'"8§
   {
       
      
      protected var §2##§:Vector.<§^!T§>;
      
      protected var § #o§:Number = 1.0;
      
      protected var §>"p§:Number = 1.0;
      
      protected var §4" §:Number = 1.0;
      
      protected var §#$$§:Number = 1.0;
      
      protected var §%"Z§:Number = 0.0;
      
      public function §%$>§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Boolean, param16:Boolean, param17:Boolean, param18:Number, param19:Number, param20:Boolean = false, param21:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param13,param15,param16,param17,param18,param19,param20,param21);
         this.§2##§ = new Vector.<§^!T§>();
         this.§ #o§ = param9;
         this.§>"p§ = param10;
         this.§4" § = param11;
         this.§#$$§ = param12;
         this.§%"Z§ = param14;
      }
      
      public function get §%!$§() : Number
      {
         return this.§ #o§;
      }
      
      public function get §]#9§() : Number
      {
         return this.§>"p§;
      }
      
      public function get §8"r§() : Number
      {
         return this.§4" §;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§#$$§;
      }
      
      public function get velocityY() : Number
      {
         return this.§%"Z§;
      }
      
      public function § !M§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§^!T§;
         (_loc11_ = new §^!T§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§2##§.push(_loc11_);
      }
   }
}
