package §%!a§
{
   import §&[§.§&!m§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   
   public class § ^§ extends §`!3§
   {
       
      
      private var §var §:String = "";
      
      private var §0M§:Number = 1.0;
      
      private var §@q§:Number = 1.0;
      
      public function § ^§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§var § = param3;
         this.§0M§ = param4;
         this.§@q§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§var §))
            {
               _loc4_.scaleX = this.§0M§ + (this.§@q§ - this.§0M§) * this.§^t§(param1);
               _loc4_.scaleY = this.§0M§ + (this.§@q§ - this.§0M§) * this.§^t§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^t§(param1:Number) : Number
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
      
      override public function clone() : §`!3§
      {
         return new § ^§(time,duration,this.§var §,this.§0M§,this.§@q§);
      }
   }
}
