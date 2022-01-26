package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   
   public class §_-sE§ extends §_-PQ§
   {
       
      
      private var §_-iJ§:String = "";
      
      private var §_-wn§:Number = 1.0;
      
      private var §_-SU§:Number = 1.0;
      
      public function §_-sE§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-iJ§ = param3;
         this.§_-wn§ = param4;
         this.§_-SU§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-v8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-iJ§))
            {
               _loc4_.scaleX = this.§_-wn§ + (this.§_-SU§ - this.§_-wn§) * this.§_-V5§(param1);
               _loc4_.scaleY = this.§_-wn§ + (this.§_-SU§ - this.§_-wn§) * this.§_-V5§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-V5§(param1:Number) : Number
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
      
      override public function clone() : §_-PQ§
      {
         return new §_-sE§(time,duration,this.§_-iJ§,this.§_-wn§,this.§_-SU§);
      }
   }
}
