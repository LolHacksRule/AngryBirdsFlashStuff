package §8!w§
{
   import § !V§.§7!P§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   
   public class §@H§ extends §&p§
   {
       
      
      private var §4n§:String = "";
      
      private var §4",§:Number = 1.0;
      
      private var §!q§:Number = 1.0;
      
      public function §@H§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4n§ = param3;
         this.§4",§ = param4;
         this.§!q§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4n§))
            {
               _loc4_.scaleX = this.§4",§ + (this.§!q§ - this.§4",§) * this.§&t§(param1);
               _loc4_.scaleY = this.§4",§ + (this.§!q§ - this.§4",§) * this.§&t§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §&t§(param1:Number) : Number
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
      
      override public function clone() : §&p§
      {
         return new §@H§(time,duration,this.§4n§,this.§4",§,this.§!q§);
      }
   }
}
