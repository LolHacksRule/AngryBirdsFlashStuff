package §0=§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §7!j§.§'0§;
   
   public class §@'§ extends §6$'§
   {
       
      
      private var §""4§:String = "";
      
      private var §,!n§:Number = 1.0;
      
      private var §;$3§:Number = 1.0;
      
      public function §@'§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§""4§ = param3;
         this.§,!n§ = param4;
         this.§;$3§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§""4§))
            {
               _loc4_.scaleX = this.§,!n§ + (this.§;$3§ - this.§,!n§) * this.§&"n§(param1);
               _loc4_.scaleY = this.§,!n§ + (this.§;$3§ - this.§,!n§) * this.§&"n§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §&"n§(param1:Number) : Number
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
      
      override public function clone() : §6$'§
      {
         return new §@'§(time,duration,this.§""4§,this.§,!n§,this.§;$3§);
      }
   }
}
