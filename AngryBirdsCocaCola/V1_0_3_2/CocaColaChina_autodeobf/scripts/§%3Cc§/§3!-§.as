package §<c§
{
   import §8r§.§@V§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   
   public class §3!-§ extends §^N§
   {
       
      
      private var §#%§:String = "";
      
      private var §2!Y§:Number = 1.0;
      
      private var §!!!§:Number = 1.0;
      
      public function §3!-§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§#%§ = param3;
         this.§2!Y§ = param4;
         this.§!!!§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@V§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#%§))
            {
               _loc4_.scaleX = this.§2!Y§ + (this.§!!!§ - this.§2!Y§) * this.§7y§(param1);
               _loc4_.scaleY = this.§2!Y§ + (this.§!!!§ - this.§2!Y§) * this.§7y§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7y§(param1:Number) : Number
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
      
      override public function clone() : §^N§
      {
         return new §3!-§(time,duration,this.§#%§,this.§2!Y§,this.§!!!§);
      }
   }
}
