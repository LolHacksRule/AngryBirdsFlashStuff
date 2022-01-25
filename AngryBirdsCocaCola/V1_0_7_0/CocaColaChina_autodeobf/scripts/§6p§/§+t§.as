package §6p§
{
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §2l§.§]O§;
   
   public class §+t§ extends §6!Y§
   {
       
      
      private var §`H§:String = "";
      
      private var §6I§:Number = 1.0;
      
      private var §&5§:Number = 1.0;
      
      public function §+t§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§`H§ = param3;
         this.§6I§ = param4;
         this.§&5§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§]O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`H§))
            {
               _loc4_.scaleX = this.§6I§ + (this.§&5§ - this.§6I§) * this.§^S§(param1);
               _loc4_.scaleY = this.§6I§ + (this.§&5§ - this.§6I§) * this.§^S§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^S§(param1:Number) : Number
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
      
      override public function clone() : §6!Y§
      {
         return new §+t§(time,duration,this.§`H§,this.§6I§,this.§&5§);
      }
   }
}
