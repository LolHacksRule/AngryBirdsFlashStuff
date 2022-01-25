package §3n§
{
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §9!Y§.§!q§;
   
   public class §6I§ extends §'0§
   {
       
      
      private var §9q§:String = "";
      
      private var §&5§:Number = 1.0;
      
      private var §#!M§:Number = 1.0;
      
      public function §6I§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§9q§ = param3;
         this.§&5§ = param4;
         this.§#!M§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9q§))
            {
               _loc4_.scaleX = this.§&5§ + (this.§#!M§ - this.§&5§) * this.§<!D§(param1);
               _loc4_.scaleY = this.§&5§ + (this.§#!M§ - this.§&5§) * this.§<!D§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<!D§(param1:Number) : Number
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
      
      override public function clone() : §'0§
      {
         return new §6I§(time,duration,this.§9q§,this.§&5§,this.§#!M§);
      }
   }
}
