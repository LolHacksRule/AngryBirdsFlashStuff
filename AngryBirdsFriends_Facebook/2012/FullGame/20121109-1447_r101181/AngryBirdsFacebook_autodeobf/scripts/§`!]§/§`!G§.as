package §`!]§
{
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §`!G§ extends §>!D§
   {
       
      
      private var §5!s§:String = "";
      
      private var §&`§:Number = 1.0;
      
      private var §@!x§:Number = 1.0;
      
      public function §`!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§5!s§ = param3;
         this.§&`§ = param4;
         this.§@!x§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§5!s§))
            {
               _loc4_.scaleX = this.§&`§ + (this.§@!x§ - this.§&`§) * this.§7!<§(param1);
               _loc4_.scaleY = this.§&`§ + (this.§@!x§ - this.§&`§) * this.§7!<§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7!<§(param1:Number) : Number
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
      
      override public function clone() : §>!D§
      {
         return new §`!G§(time,duration,this.§5!s§,this.§&`§,this.§@!x§);
      }
   }
}
