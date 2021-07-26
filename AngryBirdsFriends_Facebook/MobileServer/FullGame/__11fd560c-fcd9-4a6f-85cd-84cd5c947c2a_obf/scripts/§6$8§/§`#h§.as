package §6$8§
{
   public class §`#h§ extends §]!7§
   {
       
      
      protected var §+!=§:Vector.<§3#G§>;
      
      protected var §=!O§:Number = 1.0;
      
      protected var §"F§:Number = 1.0;
      
      protected var §else §:Number = 1.0;
      
      protected var §'5§:Number = 1.0;
      
      protected var §79§:Number = 0.0;
      
      public function §`#h§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Number, param17:Number, param18:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param13,param14,param15,param16,param17,param18);
         this.§+!=§ = new Vector.<§3#G§>();
         this.§=!O§ = param7;
         this.§"F§ = param8;
         this.§else § = param9;
         this.§'5§ = param10;
         this.§79§ = param12;
      }
      
      public function get §@#<§() : Number
      {
         return this.§=!O§;
      }
      
      public function get §#!o§() : Number
      {
         return this.§"F§;
      }
      
      public function get §'#q§() : Number
      {
         return this.§else §;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§'5§;
      }
      
      public function get velocityY() : Number
      {
         return this.§79§;
      }
      
      public function §4#'§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§3#G§;
         (_loc11_ = new §3#G§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§+!=§.push(_loc11_);
      }
   }
}
