package §<!<§
{
   public class §1=§ extends §67§
   {
       
      
      protected var §,-§:Vector.<§!!5§>;
      
      protected var §""A§:Number = 1.0;
      
      protected var §60§:Number = 1.0;
      
      protected var §`"+§:Number = 1.0;
      
      protected var §!!T§:Number = 1.0;
      
      public function §1=§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param12,param13,param14);
         this.§,-§ = new Vector.<§!!5§>();
         this.§""A§ = param7;
         this.§60§ = param8;
         this.§`"+§ = param9;
         this.§!!T§ = param10;
      }
      
      public function get §>`§() : Number
      {
         return this.§""A§;
      }
      
      public function get §=!F§() : Number
      {
         return this.§60§;
      }
      
      public function get §=l§() : Number
      {
         return this.§`"+§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§!!T§;
      }
      
      public function §4N§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§!!5§;
         (_loc11_ = new §!!5§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§,-§.push(_loc11_);
      }
   }
}
