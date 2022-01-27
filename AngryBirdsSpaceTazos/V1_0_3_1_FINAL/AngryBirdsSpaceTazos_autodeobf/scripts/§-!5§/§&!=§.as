package §-!5§
{
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §^e§.§0"1§;
   
   public class §&!=§ extends §6!t§
   {
       
      
      private var §9!z§:String = "";
      
      private var §<"G§:Number = 1.0;
      
      private var §9C§:Number = 1.0;
      
      public function §&!=§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§9!z§ = param3;
         this.§<"G§ = param4;
         this.§9C§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9!z§))
            {
               _loc4_.scaleX = this.§<"G§ + (this.§9C§ - this.§<"G§) * this.§5H§(param1);
               _loc4_.scaleY = this.§<"G§ + (this.§9C§ - this.§<"G§) * this.§5H§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §5H§(param1:Number) : Number
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
      
      override public function clone() : §6!t§
      {
         return new §&!=§(time,duration,this.§9!z§,this.§<"G§,this.§9C§);
      }
   }
}
