package §4;§
{
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §0!7§ extends §^g§
   {
       
      
      private var §@i§:String = "";
      
      private var §0!2§:Number = 1.0;
      
      private var §=y§:Number = 1.0;
      
      public function §0!7§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§@i§ = param3;
         this.§0!2§ = param4;
         this.§=y§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§@i§))
            {
               _loc4_.scaleX = this.§0!2§ + (this.§=y§ - this.§0!2§) * this.§9,§(param1);
               _loc4_.scaleY = this.§0!2§ + (this.§=y§ - this.§0!2§) * this.§9,§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9,§(param1:Number) : Number
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
      
      override public function clone() : §^g§
      {
         return new §0!7§(time,duration,this.§@i§,this.§0!2§,this.§=y§);
      }
   }
}
