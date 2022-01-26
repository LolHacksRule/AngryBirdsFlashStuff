package §%j§
{
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §&!W§.§8!K§;
   
   public class §-!A§ extends §;!X§
   {
       
      
      private var §do§:String = "";
      
      private var §[E§:Number = 1.0;
      
      private var §7!X§:Number = 1.0;
      
      public function §-!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§do§ = param3;
         this.§[E§ = param4;
         this.§7!X§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§8!K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§do§))
            {
               _loc4_.scaleX = this.§[E§ + (this.§7!X§ - this.§[E§) * this.§#^§(param1);
               _loc4_.scaleY = this.§[E§ + (this.§7!X§ - this.§[E§) * this.§#^§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §#^§(param1:Number) : Number
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
      
      override public function clone() : §;!X§
      {
         return new §-!A§(time,duration,this.§do§,this.§[E§,this.§7!X§);
      }
   }
}
