package §`!`§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §9!v§.§6a§;
   
   public class §7!N§ extends §=j§
   {
       
      
      private var §4!u§:String = "";
      
      private var §;!<§:Number = 1.0;
      
      private var §5G§:Number = 1.0;
      
      public function §7!N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§4!u§ = param3;
         this.§;!<§ = param4;
         this.§5G§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!u§))
            {
               _loc4_.scaleX = this.§;!<§ + (this.§5G§ - this.§;!<§) * this.§+!R§(param1);
               _loc4_.scaleY = this.§;!<§ + (this.§5G§ - this.§;!<§) * this.§+!R§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+!R§(param1:Number) : Number
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
      
      override public function clone() : §=j§
      {
         return new §7!N§(time,duration,this.§4!u§,this.§;!<§,this.§5G§);
      }
   }
}
