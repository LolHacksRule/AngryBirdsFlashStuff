package §3A§
{
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[n§.§?+§;
   
   public class §&u§ extends §-§
   {
       
      
      private var §[z§:String = "";
      
      private var §@G§:Number = 1.0;
      
      private var § for§:Number = 1.0;
      
      public function §&u§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§[z§ = param3;
         this.§@G§ = param4;
         this.§ for§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?+§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§[z§))
            {
               _loc4_.scaleX = this.§@G§ + (this.§ for§ - this.§@G§) * this.§9!-§(param1);
               _loc4_.scaleY = this.§@G§ + (this.§ for§ - this.§@G§) * this.§9!-§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9!-§(param1:Number) : Number
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
      
      override public function clone() : §-§
      {
         return new §&u§(time,duration,this.§[z§,this.§@G§,this.§ for§);
      }
   }
}
