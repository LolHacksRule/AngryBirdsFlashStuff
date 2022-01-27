package §%!>§
{
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   
   public class §9!2§ extends §7!<§
   {
       
      
      private var §=^§:String = "";
      
      private var §0M§:Number = 1.0;
      
      private var §&d§:Number = 1.0;
      
      public function §9!2§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§=^§ = param3;
         this.§0M§ = param4;
         this.§&d§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !C§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=^§))
            {
               _loc4_.scaleX = this.§0M§ + (this.§&d§ - this.§0M§) * this.§1!G§(param1);
               _loc4_.scaleY = this.§0M§ + (this.§&d§ - this.§0M§) * this.§1!G§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!G§(param1:Number) : Number
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
      
      override public function clone() : §7!<§
      {
         return new §9!2§(time,duration,this.§=^§,this.§0M§,this.§&d§);
      }
   }
}
