package §7Z§
{
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §&!F§ extends §^!§
   {
       
      
      private var §,!E§:String = "";
      
      private var §[W§:Number = 1.0;
      
      private var §2!_§:Number = 1.0;
      
      public function §&!F§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§,!E§ = param3;
         this.§[W§ = param4;
         this.§2!_§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,!E§))
            {
               _loc4_.scaleX = this.§[W§ + (this.§2!_§ - this.§[W§) * this.§'O§(param1);
               _loc4_.scaleY = this.§[W§ + (this.§2!_§ - this.§[W§) * this.§'O§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'O§(param1:Number) : Number
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
      
      override public function clone() : §^!§
      {
         return new §&!F§(time,duration,this.§,!E§,this.§[W§,this.§2!_§);
      }
   }
}
