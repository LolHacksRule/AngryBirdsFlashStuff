package §'r§
{
   import §"k§.§02§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   
   public class §&I§ extends §,!H§
   {
       
      
      private var §1!B§:String = "";
      
      private var §2h§:Number = 1.0;
      
      private var §,t§:Number = 1.0;
      
      public function §&I§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§1!B§ = param3;
         this.§2h§ = param4;
         this.§,t§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§02§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!B§))
            {
               _loc4_.scaleX = this.§2h§ + (this.§,t§ - this.§2h§) * this.§2!-§(param1);
               _loc4_.scaleY = this.§2h§ + (this.§,t§ - this.§2h§) * this.§2!-§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §2!-§(param1:Number) : Number
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
      
      override public function clone() : §,!H§
      {
         return new §&I§(time,duration,this.§1!B§,this.§2h§,this.§,t§);
      }
   }
}
