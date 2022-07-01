package §9z§
{
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   
   public class §+!B§ extends §"^§
   {
       
      
      private var §5p§:String = "";
      
      private var §>!>§:Number = 1.0;
      
      private var §20§:Number = 1.0;
      
      public function §+!B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§5p§ = param3;
         this.§>!>§ = param4;
         this.§20§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§5p§))
            {
               _loc4_.scaleX = this.§>!>§ + (this.§20§ - this.§>!>§) * this.§>!a§(param1);
               _loc4_.scaleY = this.§>!>§ + (this.§20§ - this.§>!>§) * this.§>!a§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!a§(param1:Number) : Number
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
      
      override public function clone() : §"^§
      {
         return new §+!B§(time,duration,this.§5p§,this.§>!>§,this.§20§);
      }
   }
}
