package §9!3§
{
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §48§.§4a§;
   
   public class §-!U§ extends §8C§
   {
       
      
      private var §!_§:String = "";
      
      private var §"!H§:Number = 1.0;
      
      private var §"]§:Number = 1.0;
      
      public function §-!U§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§!_§ = param3;
         this.§"!H§ = param4;
         this.§"]§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!_§))
            {
               _loc4_.scaleX = this.§"!H§ + (this.§"]§ - this.§"!H§) * this.§'%§(param1);
               _loc4_.scaleY = this.§"!H§ + (this.§"]§ - this.§"!H§) * this.§'%§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'%§(param1:Number) : Number
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
      
      override public function clone() : §8C§
      {
         return new §-!U§(time,duration,this.§!_§,this.§"!H§,this.§"]§);
      }
   }
}
