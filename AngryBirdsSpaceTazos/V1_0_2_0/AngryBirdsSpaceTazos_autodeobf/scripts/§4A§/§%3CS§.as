package §4A§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§5"%§;
   
   public class §<S§ extends §9!i§
   {
       
      
      private var §-!^§:String = "";
      
      private var §[A§:Number = 1.0;
      
      private var §&!4§:Number = 1.0;
      
      public function §<S§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§-!^§ = param3;
         this.§[A§ = param4;
         this.§&!4§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5"%§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-!^§))
            {
               _loc4_.scaleX = this.§[A§ + (this.§&!4§ - this.§[A§) * this.§ M§(param1);
               _loc4_.scaleY = this.§[A§ + (this.§&!4§ - this.§[A§) * this.§ M§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function § M§(param1:Number) : Number
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
      
      override public function clone() : §9!i§
      {
         return new §<S§(time,duration,this.§-!^§,this.§[A§,this.§&!4§);
      }
   }
}
