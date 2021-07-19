package §69§
{
   public class §'U§ extends §>!b§
   {
       
      
      protected var §;m§:Vector.<§8![§>;
      
      protected var §[!r§:Number = 1.0;
      
      protected var §<#H§:Number = 1.0;
      
      protected var §3c§:Number = 1.0;
      
      protected var §^#8§:Number = 1.0;
      
      protected var §7!8§:Number = 0.0;
      
      protected var §0!Y§:Number = 0.0;
      
      public function §'U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param13,param14,param15,param16);
         this.§;m§ = new Vector.<§8![§>();
         this.§[!r§ = param7;
         this.§<#H§ = param8;
         this.§3c§ = param9;
         this.§^#8§ = param10;
         this.§7!8§ = param11;
         this.§0!Y§ = param12;
      }
      
      public function get §@"V§() : Number
      {
         return this.§[!r§;
      }
      
      public function get §="1§() : Number
      {
         return this.§<#H§;
      }
      
      public function get §0H§() : Number
      {
         return this.§3c§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§^#8§;
      }
      
      public function get velocityX() : Number
      {
         return this.§7!8§;
      }
      
      public function get velocityY() : Number
      {
         return this.§0!Y§;
      }
      
      public function §5"&§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§8![§;
         (_loc11_ = new §8![§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§;m§.push(_loc11_);
      }
   }
}
