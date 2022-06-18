package §8a§
{
   import §4W§.§!]§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §[E§ extends §'!U§
   {
       
      
      private var §8k§:String = "";
      
      private var §7!X§:Number = 1.0;
      
      private var §;]§:Number = 1.0;
      
      public function §[E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§8k§ = param3;
         this.§7!X§ = param4;
         this.§;]§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8k§))
            {
               _loc4_.scaleX = this.§7!X§ + (this.§;]§ - this.§7!X§) * this.§+r§(param1);
               _loc4_.scaleY = this.§7!X§ + (this.§;]§ - this.§7!X§) * this.§+r§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+r§(param1:Number) : Number
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
      
      override public function clone() : §'!U§
      {
         return new §[E§(time,duration,this.§8k§,this.§7!X§,this.§;]§);
      }
   }
}
