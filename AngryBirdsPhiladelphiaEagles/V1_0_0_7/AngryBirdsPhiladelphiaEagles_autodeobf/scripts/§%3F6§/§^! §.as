package §?6§
{
   import §+f§.§4!8§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   
   public class §^! § extends §8+§
   {
       
      
      private var §;m§:String = "";
      
      private var §,!"§:Number = 1.0;
      
      private var §5W§:Number = 1.0;
      
      public function §^! §(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§;m§ = param3;
         this.§,!"§ = param4;
         this.§5W§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4!8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§;m§))
            {
               _loc4_.scaleX = this.§,!"§ + (this.§5W§ - this.§,!"§) * this.§'!G§(param1);
               _loc4_.scaleY = this.§,!"§ + (this.§5W§ - this.§,!"§) * this.§'!G§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'!G§(param1:Number) : Number
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
      
      override public function clone() : §8+§
      {
         return new §^! §(time,duration,this.§;m§,this.§,!"§,this.§5W§);
      }
   }
}
