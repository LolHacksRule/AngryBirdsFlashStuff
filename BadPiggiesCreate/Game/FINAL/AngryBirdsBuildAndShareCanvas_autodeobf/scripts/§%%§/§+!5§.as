package §%%§
{
   import §&"5§.§7!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   
   public class §+!5§ extends §#K§
   {
       
      
      private var §3!3§:String = "";
      
      private var §%!"§:Number = 1.0;
      
      private var §]Y§:Number = 1.0;
      
      public function §+!5§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§3!3§ = param3;
         this.§%!"§ = param4;
         this.§]Y§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3!3§))
            {
               _loc4_.scaleX = this.§%!"§ + (this.§]Y§ - this.§%!"§) * this.§-""§(param1);
               _loc4_.scaleY = this.§%!"§ + (this.§]Y§ - this.§%!"§) * this.§-""§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §-""§(param1:Number) : Number
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
      
      override public function clone() : §#K§
      {
         return new §+!5§(time,duration,this.§3!3§,this.§%!"§,this.§]Y§);
      }
   }
}
