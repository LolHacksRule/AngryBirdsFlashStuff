package §@!L§
{
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §3!C§ extends §9N§
   {
       
      
      private var §1!T§:String = "";
      
      private var § get§:Number = 1.0;
      
      private var static:Number = 1.0;
      
      public function §3!C§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§1!T§ = param3;
         this.§ get§ = param4;
         this.static = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!T§))
            {
               _loc4_.scaleX = this.§ get§ + (this.static - this.§ get§) * this.§]h§(param1);
               _loc4_.scaleY = this.§ get§ + (this.static - this.§ get§) * this.§]h§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]h§(param1:Number) : Number
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
      
      override public function clone() : §9N§
      {
         return new §3!C§(time,duration,this.§1!T§,this.§ get§,this.static);
      }
   }
}
