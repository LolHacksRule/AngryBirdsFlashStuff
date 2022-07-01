package §9!$§
{
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §0?§ extends §&!W§
   {
       
      
      private var §'!E§:String = "";
      
      private var §^§:Number = 1.0;
      
      private var §@U§:Number = 1.0;
      
      public function §0?§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§'!E§ = param3;
         this.§^§ = param4;
         this.§@U§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'!E§))
            {
               _loc4_.scaleX = this.§^§ + (this.§@U§ - this.§^§) * this.§-!r§(param1);
               _loc4_.scaleY = this.§^§ + (this.§@U§ - this.§^§) * this.§-!r§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §-!r§(param1:Number) : Number
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
      
      override public function clone() : §&!W§
      {
         return new §0?§(time,duration,this.§'!E§,this.§^§,this.§@U§);
      }
   }
}
