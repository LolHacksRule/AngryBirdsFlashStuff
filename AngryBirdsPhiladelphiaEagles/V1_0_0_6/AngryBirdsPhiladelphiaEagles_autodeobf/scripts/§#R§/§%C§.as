package §#R§
{
   import §4!0§.§3§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   
   public class §%C§ extends §@i§
   {
       
      
      private var §=o§:String = "";
      
      private var §0!$§:Number = 1.0;
      
      private var § f§:Number = 1.0;
      
      public function §%C§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§=o§ = param3;
         this.§0!$§ = param4;
         this.§ f§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=o§))
            {
               _loc4_.scaleX = this.§0!$§ + (this.§ f§ - this.§0!$§) * this.§?R§(param1);
               _loc4_.scaleY = this.§0!$§ + (this.§ f§ - this.§0!$§) * this.§?R§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §?R§(param1:Number) : Number
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
      
      override public function clone() : §@i§
      {
         return new §%C§(time,duration,this.§=o§,this.§0!$§,this.§ f§);
      }
   }
}
