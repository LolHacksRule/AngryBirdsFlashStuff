package §2"a§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §3"E§ extends §,^§
   {
       
      
      private var §-!`§:String = "";
      
      private var §6>§:Number = 1.0;
      
      private var §>X§:Number = 1.0;
      
      public function §3"E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§-!`§ = param3;
         this.§6>§ = param4;
         this.§>X§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-!`§))
            {
               _loc4_.scaleX = this.§6>§ + (this.§>X§ - this.§6>§) * this.§="a§(param1);
               _loc4_.scaleY = this.§6>§ + (this.§>X§ - this.§6>§) * this.§="a§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §="a§(param1:Number) : Number
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
      
      override public function clone() : §,^§
      {
         return new §3"E§(time,duration,this.§-!`§,this.§6>§,this.§>X§);
      }
   }
}
