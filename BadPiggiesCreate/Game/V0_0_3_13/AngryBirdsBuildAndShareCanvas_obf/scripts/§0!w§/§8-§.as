package §0!w§
{
   import §`"2§.§6!,§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   
   public class §8-§ extends §5i§
   {
       
      
      private var §-A§:String = "";
      
      private var §2!A§:Number = 1.0;
      
      private var §@x§:Number = 1.0;
      
      public function §8-§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§-A§ = param3;
         this.§2!A§ = param4;
         this.§@x§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-A§))
            {
               _loc4_.scaleX = this.§2!A§ + (this.§@x§ - this.§2!A§) * this.§>A§(param1);
               _loc4_.scaleY = this.§2!A§ + (this.§@x§ - this.§2!A§) * this.§>A§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>A§(param1:Number) : Number
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
      
      override public function clone() : §5i§
      {
         return new §8-§(time,duration,this.§-A§,this.§2!A§,this.§@x§);
      }
   }
}
