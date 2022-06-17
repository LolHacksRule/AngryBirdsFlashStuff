package §+_§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   
   public class §in§ extends §>$8§
   {
       
      
      private var §>S§:String = "";
      
      private var §##7§:Number = 1.0;
      
      private var §,v§:Number = 1.0;
      
      public function §in§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§>S§ = param3;
         this.§##7§ = param4;
         this.§,v§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%"=§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§>S§))
            {
               _loc4_.scaleX = this.§##7§ + (this.§,v§ - this.§##7§) * this.§8f§(param1);
               _loc4_.scaleY = this.§##7§ + (this.§,v§ - this.§##7§) * this.§8f§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §8f§(param1:Number) : Number
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
      
      override public function clone() : §>$8§
      {
         return new §in§(time,duration,this.§>S§,this.§##7§,this.§,v§);
      }
   }
}
