package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §!!"§ extends §=!?§
   {
       
      
      private var §`]§:String = "";
      
      private var §43§:Number = 1.0;
      
      private var §?§:Number = 1.0;
      
      public function §!!"§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§`]§ = param3;
         this.§43§ = param4;
         this.§?§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`]§))
            {
               _loc4_.scaleX = this.§43§ + (this.§?§ - this.§43§) * this.§56§(param1);
               _loc4_.scaleY = this.§43§ + (this.§?§ - this.§43§) * this.§56§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §56§(param1:Number) : Number
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
      
      override public function clone() : §=!?§
      {
         return new §!!"§(time,duration,this.§`]§,this.§43§,this.§?§);
      }
   }
}
