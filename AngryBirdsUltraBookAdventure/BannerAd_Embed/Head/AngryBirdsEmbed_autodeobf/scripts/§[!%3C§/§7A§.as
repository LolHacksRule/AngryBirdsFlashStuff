package §[!<§
{
   import §%-§.DisplayObject;
   import §%-§.Sprite;
   import §<h§.§;@§;
   
   public class §7A§ extends §#v§
   {
       
      
      private var §>R§:String = "";
      
      private var §!k§:Number = 1.0;
      
      private var §#R§:Number = 1.0;
      
      public function §7A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§>R§ = param3;
         this.§!k§ = param4;
         this.§#R§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§;@§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§>R§))
            {
               _loc4_.scaleX = this.§!k§ + (this.§#R§ - this.§!k§) * this.§1!2§(param1);
               _loc4_.scaleY = this.§!k§ + (this.§#R§ - this.§!k§) * this.§1!2§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!2§(param1:Number) : Number
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
      
      override public function clone() : §#v§
      {
         return new §7A§(time,duration,this.§>R§,this.§!k§,this.§#R§);
      }
   }
}
