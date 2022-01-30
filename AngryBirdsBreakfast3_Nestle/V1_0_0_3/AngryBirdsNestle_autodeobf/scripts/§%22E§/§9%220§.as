package §"E§
{
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§`!O§;
   
   public class §9"0§ extends §%!N§
   {
       
      
      private var §`_§:String = "";
      
      private var §'!5§:Number = 1.0;
      
      private var §^p§:Number = 1.0;
      
      public function §9"0§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§`_§ = param3;
         this.§'!5§ = param4;
         this.§^p§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`!O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`_§))
            {
               _loc4_.scaleX = this.§'!5§ + (this.§^p§ - this.§'!5§) * this.§`!]§(param1);
               _loc4_.scaleY = this.§'!5§ + (this.§^p§ - this.§'!5§) * this.§`!]§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`!]§(param1:Number) : Number
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
      
      override public function clone() : §%!N§
      {
         return new §9"0§(time,duration,this.§`_§,this.§'!5§,this.§^p§);
      }
   }
}
