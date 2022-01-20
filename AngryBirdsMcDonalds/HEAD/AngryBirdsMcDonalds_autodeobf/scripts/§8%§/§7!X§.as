package §8%§
{
   import §9`§.§#U§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   
   public class §7!X§ extends §]p§
   {
       
      
      private var §8!F§:String = "";
      
      private var §1c§:Number = 1.0;
      
      private var §@!J§:Number = 1.0;
      
      public function §7!X§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§8!F§ = param3;
         this.§1c§ = param4;
         this.§@!J§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#U§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8!F§))
            {
               _loc4_.scaleX = this.§1c§ + (this.§@!J§ - this.§1c§) * this.§5!7§(param1);
               _loc4_.scaleY = this.§1c§ + (this.§@!J§ - this.§1c§) * this.§5!7§(param1);
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
      
      override public function clone() : §]p§
      {
         return new §7!X§(time,duration,this.§8!F§,this.§1c§,this.§@!J§);
      }
   }
}
