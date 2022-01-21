package §?l§
{
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §7! §.§4n§;
   
   public class §#!C§ extends §0!W§
   {
       
      
      private var §]!A§:String = "";
      
      private var §]a§:Number = 1.0;
      
      private var §2d§:Number = 1.0;
      
      public function §#!C§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§]!A§ = param3;
         this.§]a§ = param4;
         this.§2d§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4n§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!A§))
            {
               _loc4_.scaleX = this.§]a§ + (this.§2d§ - this.§]a§) * this.§`f§(param1);
               _loc4_.scaleY = this.§]a§ + (this.§2d§ - this.§]a§) * this.§`f§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`f§(param1:Number) : Number
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
      
      override public function clone() : §0!W§
      {
         return new §#!C§(time,duration,this.§]!A§,this.§]a§,this.§2d§);
      }
   }
}
