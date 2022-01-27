package §,§
{
   public class §'A§ extends §!P§
   {
       
      
      protected var §+5§:Vector.<§#c§>;
      
      protected var §[!@§:Number = 1.0;
      
      protected var §+!S§:Number = 1.0;
      
      protected var §>!v§:Number = 1.0;
      
      protected var §&"9§:Number = 1.0;
      
      public function §'A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param12,param13,param14);
         this.§+5§ = new Vector.<§#c§>();
         this.§[!@§ = param7;
         this.§+!S§ = param8;
         this.§>!v§ = param9;
         this.§&"9§ = param10;
      }
      
      public function get §&=§() : Number
      {
         return this.§[!@§;
      }
      
      public function get §?"8§() : Number
      {
         return this.§+!S§;
      }
      
      public function get §+"G§() : Number
      {
         return this.§>!v§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§&"9§;
      }
      
      public function §,"5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§#c§;
         (_loc11_ = new §#c§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§+5§.push(_loc11_);
      }
   }
}
