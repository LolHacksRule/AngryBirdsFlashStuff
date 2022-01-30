package §9!e§
{
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   
   public class §2[§ extends §<!>§
   {
       
      
      private var §4!U§:String = "";
      
      private var §6!^§:Number = 1.0;
      
      private var §5!i§:Number = 1.0;
      
      public function §2[§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4!U§ = param3;
         this.§6!^§ = param4;
         this.§5!i§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!f§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!U§))
            {
               _loc4_.scaleX = this.§6!^§ + (this.§5!i§ - this.§6!^§) * this.§,g§(param1);
               _loc4_.scaleY = this.§6!^§ + (this.§5!i§ - this.§6!^§) * this.§,g§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,g§(param1:Number) : Number
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
      
      override public function clone() : §<!>§
      {
         return new §2[§(time,duration,this.§4!U§,this.§6!^§,this.§5!i§);
      }
   }
}
