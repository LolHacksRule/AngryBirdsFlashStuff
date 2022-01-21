package §[>§
{
   import § !%§.§7!>§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   
   public class §'Z§ extends §?m§
   {
       
      
      private var §^!2§:String = "";
      
      private var §>9§:Number = 1.0;
      
      private var §[K§:Number = 1.0;
      
      public function §'Z§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§^!2§ = param3;
         this.§>9§ = param4;
         this.§[K§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§^!2§))
            {
               _loc4_.scaleX = this.§>9§ + (this.§[K§ - this.§>9§) * this.§[@§(param1);
               _loc4_.scaleY = this.§>9§ + (this.§[K§ - this.§>9§) * this.§[@§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §[@§(param1:Number) : Number
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
      
      override public function clone() : §?m§
      {
         return new §'Z§(time,duration,this.§^!2§,this.§>9§,this.§[K§);
      }
   }
}
