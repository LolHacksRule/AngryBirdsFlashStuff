package §9!7§
{
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §3j§ extends §`E§
   {
       
      
      private var §^P§:String = "";
      
      private var §"c§:Number = 1.0;
      
      private var §2M§:Number = 1.0;
      
      public function §3j§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§^P§ = param3;
         this.§"c§ = param4;
         this.§2M§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§^P§))
            {
               _loc4_.scaleX = this.§"c§ + (this.§2M§ - this.§"c§) * this.§9!;§(param1);
               _loc4_.scaleY = this.§"c§ + (this.§2M§ - this.§"c§) * this.§9!;§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9!;§(param1:Number) : Number
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
      
      override public function clone() : §`E§
      {
         return new §3j§(time,duration,this.§^P§,this.§"c§,this.§2M§);
      }
   }
}
