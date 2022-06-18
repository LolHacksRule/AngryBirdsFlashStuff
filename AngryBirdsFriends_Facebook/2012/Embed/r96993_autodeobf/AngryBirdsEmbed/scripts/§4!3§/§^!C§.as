package §4!3§
{
   import §6u§.§3W§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   
   public class §^!C§ extends §,d§
   {
       
      
      private var §6%§:String = "";
      
      private var §>r§:Number = 1.0;
      
      private var §[!=§:Number = 1.0;
      
      public function §^!C§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§6%§ = param3;
         this.§>r§ = param4;
         this.§[!=§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3W§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6%§))
            {
               _loc4_.scaleX = this.§>r§ + (this.§[!=§ - this.§>r§) * this.§!+§(param1);
               _loc4_.scaleY = this.§>r§ + (this.§[!=§ - this.§>r§) * this.§!+§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §!+§(param1:Number) : Number
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
      
      override public function clone() : §,d§
      {
         return new §^!C§(time,duration,this.§6%§,this.§>r§,this.§[!=§);
      }
   }
}
