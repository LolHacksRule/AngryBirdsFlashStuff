package §>X§
{
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §3!§.§-e§;
   
   public class §@!L§ extends §5!4§
   {
       
      
      private var §2C§:String = "";
      
      private var §0^§:Number = 1.0;
      
      private var §8e§:Number = 1.0;
      
      public function §@!L§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§2C§ = param3;
         this.§0^§ = param4;
         this.§8e§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-e§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§2C§))
            {
               _loc4_.scaleX = this.§0^§ + (this.§8e§ - this.§0^§) * this.§5!7§(param1);
               _loc4_.scaleY = this.§0^§ + (this.§8e§ - this.§0^§) * this.§5!7§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §5!7§(param1:Number) : Number
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
      
      override public function clone() : §5!4§
      {
         return new §@!L§(time,duration,this.§2C§,this.§0^§,this.§8e§);
      }
   }
}
