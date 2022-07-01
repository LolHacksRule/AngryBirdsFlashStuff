package §9A§
{
   import §%t§.§-!5§;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   
   public class §="&§ extends §'"$§
   {
       
      
      private var §'f§:String = "";
      
      private var §%F§:Number = 1.0;
      
      private var §4!c§:Number = 1.0;
      
      public function §="&§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§'f§ = param3;
         this.§%F§ = param4;
         this.§4!c§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-!5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'f§))
            {
               _loc4_.scaleX = this.§%F§ + (this.§4!c§ - this.§%F§) * this.§`!i§(param1);
               _loc4_.scaleY = this.§%F§ + (this.§4!c§ - this.§%F§) * this.§`!i§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`!i§(param1:Number) : Number
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
      
      override public function clone() : §'"$§
      {
         return new §="&§(time,duration,this.§'f§,this.§%F§,this.§4!c§);
      }
   }
}
