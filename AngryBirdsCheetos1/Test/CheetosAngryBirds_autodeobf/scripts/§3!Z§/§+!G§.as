package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   
   public class §+!G§ extends §!'§
   {
       
      
      private var §#W§:String = "";
      
      private var §2c§:Number = 1.0;
      
      private var §2![§:Number = 1.0;
      
      public function §+!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§#W§ = param3;
         this.§2c§ = param4;
         this.§2![§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#W§))
            {
               _loc4_.scaleX = this.§2c§ + (this.§2![§ - this.§2c§) * this.§<m§(param1);
               _loc4_.scaleY = this.§2c§ + (this.§2![§ - this.§2c§) * this.§<m§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<m§(param1:Number) : Number
      {
         if(duration <= 0)
         {
            return 1;
         }
         var _loc2_:Number = (param1 - this.time) / duration;
         _loc2_ *= 2;
         if(_loc2_ < 1)
         {
            return Math.pow(_loc2_,3) / 2;
         }
         _loc2_ -= 2;
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      override public function clone() : §!'§
      {
         return new §+!G§(time,duration,this.§#W§,this.§2c§,this.§2![§);
      }
   }
}
