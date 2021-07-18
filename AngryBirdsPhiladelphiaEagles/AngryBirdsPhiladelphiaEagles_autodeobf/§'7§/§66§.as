package §'7§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §66§ extends §@!F§
   {
       
      
      private var §4!6§:String = "";
      
      private var §-2§:Number = 1.0;
      
      private var §%q§:Number = 1.0;
      
      public function §66§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4!6§ = param3;
         this.§-2§ = param4;
         this.§%q§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!6§))
            {
               _loc4_.scaleX = this.§-2§ + (this.§%q§ - this.§-2§) * this.§^!8§(param1);
               _loc4_.scaleY = this.§-2§ + (this.§%q§ - this.§-2§) * this.§^!8§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^!8§(param1:Number) : Number
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
      
      override public function clone() : §@!F§
      {
         return new §66§(time,duration,this.§4!6§,this.§-2§,this.§%q§);
      }
   }
}
