package §+"f§
{
   public class §'!5§ extends §!r§
   {
       
      
      protected var §#"E§:Vector.<§,!E§>;
      
      protected var §7u§:Number = 1.0;
      
      protected var §&"w§:Number = 1.0;
      
      protected var §2!=§:Number = 1.0;
      
      protected var §<"u§:Number = 1.0;
      
      protected var §[!c§:Number = 0.0;
      
      protected var §<"e§:Number = 0.0;
      
      public function §'!5§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param13,param14,param15,param16);
         this.§#"E§ = new Vector.<§,!E§>();
         this.§7u§ = param7;
         this.§&"w§ = param8;
         this.§2!=§ = param9;
         this.§<"u§ = param10;
         this.§[!c§ = param11;
         this.§<"e§ = param12;
      }
      
      public function get §]!N§() : Number
      {
         return this.§7u§;
      }
      
      public function get §&"x§() : Number
      {
         return this.§&"w§;
      }
      
      public function get §-!8§() : Number
      {
         return this.§2!=§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§<"u§;
      }
      
      public function get velocityX() : Number
      {
         return this.§[!c§;
      }
      
      public function get velocityY() : Number
      {
         return this.§<"e§;
      }
      
      public function §!"G§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§,!E§;
         (_loc11_ = new §,!E§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§#"E§.push(_loc11_);
      }
   }
}
