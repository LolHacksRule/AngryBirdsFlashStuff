package §"!@§
{
   import §+!]§.§!,§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   
   public class §;-§ extends §,!T§
   {
       
      
      private var §]!9§:String = "";
      
      private var §var§:Number = 1.0;
      
      private var §&!§:Number = 1.0;
      
      public function §;-§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§]!9§ = param3;
         this.§var§ = param4;
         this.§&!§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!9§))
            {
               _loc4_.scaleX = this.§var§ + (this.§&!§ - this.§var§) * this.§>!C§(param1);
               _loc4_.scaleY = this.§var§ + (this.§&!§ - this.§var§) * this.§>!C§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!C§(param1:Number) : Number
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
      
      override public function clone() : §,!T§
      {
         return new §;-§(time,duration,this.§]!9§,this.§var§,this.§&!§);
      }
   }
}
