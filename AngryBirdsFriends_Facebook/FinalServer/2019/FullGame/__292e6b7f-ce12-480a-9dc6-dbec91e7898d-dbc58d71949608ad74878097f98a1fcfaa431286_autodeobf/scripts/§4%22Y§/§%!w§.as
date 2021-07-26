package §4"Y§
{
   public class §%!w§ extends §@!H§
   {
       
      
      protected var §4"g§:Vector.<§9!;§>;
      
      protected var §,§:Number = 1.0;
      
      protected var §"8§:Number = 1.0;
      
      protected var §%Y§:Number = 1.0;
      
      protected var §53§:Number = 1.0;
      
      protected var §extends§:Number = 0.0;
      
      public function §%!w§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Boolean, param16:Boolean, param17:Boolean, param18:Number, param19:Number, param20:Boolean = false, param21:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param13,param15,param16,param17,param18,param19,param20,param21);
         this.§4"g§ = new Vector.<§9!;§>();
         this.§,§ = param9;
         this.§"8§ = param10;
         this.§%Y§ = param11;
         this.§53§ = param12;
         this.§extends§ = param14;
      }
      
      public function get §6#C§() : Number
      {
         return this.§,§;
      }
      
      public function get §;!j§() : Number
      {
         return this.§"8§;
      }
      
      public function get §0!%§() : Number
      {
         return this.§%Y§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§53§;
      }
      
      public function get velocityY() : Number
      {
         return this.§extends§;
      }
      
      public function §1#^§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§9!;§;
         (_loc11_ = new §9!;§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§4"g§.push(_loc11_);
      }
   }
}
