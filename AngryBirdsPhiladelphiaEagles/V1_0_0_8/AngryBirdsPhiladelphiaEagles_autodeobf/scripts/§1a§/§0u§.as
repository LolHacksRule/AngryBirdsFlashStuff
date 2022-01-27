package §1a§
{
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   
   public class §0u§ extends §#]§
   {
       
      
      private var §3n§:String = "";
      
      private var §>! §:Number = 1.0;
      
      private var §=n§:Number = 1.0;
      
      public function §0u§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§3n§ = param3;
         this.§>! § = param4;
         this.§=n§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3n§))
            {
               _loc4_.scaleX = this.§>! § + (this.§=n§ - this.§>! §) * this.§3V§(param1);
               _loc4_.scaleY = this.§>! § + (this.§=n§ - this.§>! §) * this.§3V§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §3V§(param1:Number) : Number
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
      
      override public function clone() : §#]§
      {
         return new §0u§(time,duration,this.§3n§,this.§>! §,this.§=n§);
      }
   }
}
