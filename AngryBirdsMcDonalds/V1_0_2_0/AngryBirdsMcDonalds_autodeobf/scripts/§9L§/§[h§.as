package §9L§
{
   import §5!l§.§ !D§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   
   public class §[h§ extends §<6§
   {
       
      
      private var §]P§:String = "";
      
      private var §7P§:Number = 1.0;
      
      private var §,!A§:Number = 1.0;
      
      public function §[h§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§]P§ = param3;
         this.§7P§ = param4;
         this.§,!A§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !D§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]P§))
            {
               _loc4_.scaleX = this.§7P§ + (this.§,!A§ - this.§7P§) * this.§,a§(param1);
               _loc4_.scaleY = this.§7P§ + (this.§,!A§ - this.§7P§) * this.§,a§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,a§(param1:Number) : Number
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
      
      override public function clone() : §<6§
      {
         return new §[h§(time,duration,this.§]P§,this.§7P§,this.§,!A§);
      }
   }
}
