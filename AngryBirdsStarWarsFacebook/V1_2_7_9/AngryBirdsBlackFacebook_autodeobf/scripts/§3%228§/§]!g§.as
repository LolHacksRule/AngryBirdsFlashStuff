package §3"8§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   
   public class §]!g§ extends §-"r§
   {
       
      
      private var §<b§:String = "";
      
      private var §`!2§:Number = 1.0;
      
      private var §1!Q§:Number = 1.0;
      
      public function §]!g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§<b§ = param3;
         this.§`!2§ = param4;
         this.§1!Q§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&"0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§<b§))
            {
               _loc4_.scaleX = this.§`!2§ + (this.§1!Q§ - this.§`!2§) * this.§@"X§(param1);
               _loc4_.scaleY = this.§`!2§ + (this.§1!Q§ - this.§`!2§) * this.§@"X§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §@"X§(param1:Number) : Number
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
      
      override public function clone() : §-"r§
      {
         return new §]!g§(time,duration,this.§<b§,this.§`!2§,this.§1!Q§);
      }
   }
}
