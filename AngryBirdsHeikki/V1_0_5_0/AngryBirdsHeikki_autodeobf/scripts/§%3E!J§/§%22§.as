package §>!J§
{
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §"§ extends §=!§
   {
       
      
      private var §,!Z§:String = "";
      
      private var §"!a§:Number = 1.0;
      
      private var §"1§:Number = 1.0;
      
      public function §"§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§,!Z§ = param3;
         this.§"!a§ = param4;
         this.§"1§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@!E§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,!Z§))
            {
               _loc4_.scaleX = this.§"!a§ + (this.§"1§ - this.§"!a§) * this.§02§(param1);
               _loc4_.scaleY = this.§"!a§ + (this.§"1§ - this.§"!a§) * this.§02§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §02§(param1:Number) : Number
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
      
      override public function clone() : §=!§
      {
         return new §"§(time,duration,this.§,!Z§,this.§"!a§,this.§"1§);
      }
   }
}
