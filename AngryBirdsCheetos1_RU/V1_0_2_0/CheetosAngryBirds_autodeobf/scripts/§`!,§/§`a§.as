package §`!,§
{
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §2!4§.§5T§;
   
   public class §`a§ extends §&H§
   {
       
      
      private var §4Y§:String = "";
      
      private var §#!2§:Number = 1.0;
      
      private var §9!Z§:Number = 1.0;
      
      public function §`a§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4Y§ = param3;
         this.§#!2§ = param4;
         this.§9!Z§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5T§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4Y§))
            {
               _loc4_.scaleX = this.§#!2§ + (this.§9!Z§ - this.§#!2§) * this.§1!6§(param1);
               _loc4_.scaleY = this.§#!2§ + (this.§9!Z§ - this.§#!2§) * this.§1!6§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!6§(param1:Number) : Number
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
      
      override public function clone() : §&H§
      {
         return new §`a§(time,duration,this.§4Y§,this.§#!2§,this.§9!Z§);
      }
   }
}
