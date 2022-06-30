package § a§
{
   import §%O§.§ !§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   
   public class §?c§ extends §&K§
   {
       
      
      private var §]!0§:String = "";
      
      private var §;K§:Number = 1.0;
      
      private var §1!L§:Number = 1.0;
      
      public function §?c§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§]!0§ = param3;
         this.§;K§ = param4;
         this.§1!L§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!0§))
            {
               _loc4_.scaleX = this.§;K§ + (this.§1!L§ - this.§;K§) * this.§,9§(param1);
               _loc4_.scaleY = this.§;K§ + (this.§1!L§ - this.§;K§) * this.§,9§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,9§(param1:Number) : Number
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
      
      override public function clone() : §&K§
      {
         return new §?c§(time,duration,this.§]!0§,this.§;K§,this.§1!L§);
      }
   }
}
