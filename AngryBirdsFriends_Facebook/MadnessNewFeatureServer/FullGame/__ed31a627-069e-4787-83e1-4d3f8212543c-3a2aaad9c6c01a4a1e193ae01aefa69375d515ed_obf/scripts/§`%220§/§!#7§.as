package §`"0§
{
   import §'G§.§3$§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   
   public class §!#7§ extends §?#d§
   {
       
      
      private var §@!J§:String = "";
      
      private var §@#V§:Number = 1.0;
      
      private var §8#n§:Number = 1.0;
      
      public function §!#7§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§@!J§ = param3;
         this.§@#V§ = param4;
         this.§8#n§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3$§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§@!J§))
            {
               _loc4_.scaleX = this.§@#V§ + (this.§8#n§ - this.§@#V§) * this.§`#o§(param1);
               _loc4_.scaleY = this.§@#V§ + (this.§8#n§ - this.§@#V§) * this.§`#o§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`#o§(param1:Number) : Number
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
      
      override public function clone() : §?#d§
      {
         return new §!#7§(time,duration,this.§@!J§,this.§@#V§,this.§8#n§);
      }
   }
}
