package §3D§
{
   import §#S§.§?!?§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   
   public class §;z§ extends §3T§
   {
       
      
      private var §-"+§:String = "";
      
      private var §46§:Number = 1.0;
      
      private var §+!O§:Number = 1.0;
      
      public function §;z§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§-"+§ = param3;
         this.§46§ = param4;
         this.§+!O§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?!?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-"+§))
            {
               _loc4_.scaleX = this.§46§ + (this.§+!O§ - this.§46§) * this.§9e§(param1);
               _loc4_.scaleY = this.§46§ + (this.§+!O§ - this.§46§) * this.§9e§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9e§(param1:Number) : Number
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
      
      override public function clone() : §3T§
      {
         return new §;z§(time,duration,this.§-"+§,this.§46§,this.§+!O§);
      }
   }
}
