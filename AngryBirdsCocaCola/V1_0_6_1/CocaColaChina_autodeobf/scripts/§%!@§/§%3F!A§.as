package §%!@§
{
   import §+N§.§``§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   
   public class §?!A§ extends §[!$§
   {
       
      
      private var §1!8§:String = "";
      
      private var §1b§:Number = 1.0;
      
      private var §^t§:Number = 1.0;
      
      public function §?!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§1!8§ = param3;
         this.§1b§ = param4;
         this.§^t§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§``§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!8§))
            {
               _loc4_.scaleX = this.§1b§ + (this.§^t§ - this.§1b§) * this.§+m§(param1);
               _loc4_.scaleY = this.§1b§ + (this.§^t§ - this.§1b§) * this.§+m§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+m§(param1:Number) : Number
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
      
      override public function clone() : §[!$§
      {
         return new §?!A§(time,duration,this.§1!8§,this.§1b§,this.§^t§);
      }
   }
}
