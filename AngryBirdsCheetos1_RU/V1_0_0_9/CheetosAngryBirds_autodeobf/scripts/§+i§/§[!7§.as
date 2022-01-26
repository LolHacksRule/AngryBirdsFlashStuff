package §+i§
{
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §[!7§ extends §'6§
   {
       
      
      private var §4t§:String = "";
      
      private var §6!'§:Number = 1.0;
      
      private var §+!A§:Number = 1.0;
      
      public function §[!7§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4t§ = param3;
         this.§6!'§ = param4;
         this.§+!A§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4t§))
            {
               _loc4_.scaleX = this.§6!'§ + (this.§+!A§ - this.§6!'§) * this.§7!,§(param1);
               _loc4_.scaleY = this.§6!'§ + (this.§+!A§ - this.§6!'§) * this.§7!,§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7!,§(param1:Number) : Number
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
      
      override public function clone() : §'6§
      {
         return new §[!7§(time,duration,this.§4t§,this.§6!'§,this.§+!A§);
      }
   }
}
