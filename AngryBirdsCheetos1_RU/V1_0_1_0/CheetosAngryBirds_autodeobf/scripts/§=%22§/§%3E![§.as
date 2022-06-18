package §="§
{
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   
   public class §>![§ extends §2!C§
   {
       
      
      private var §=!B§:String = "";
      
      private var §@O§:Number = 1.0;
      
      private var §8!&§:Number = 1.0;
      
      public function §>![§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§=!B§ = param3;
         this.§@O§ = param4;
         this.§8!&§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'![§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=!B§))
            {
               _loc4_.scaleX = this.§@O§ + (this.§8!&§ - this.§@O§) * this.§;!X§(param1);
               _loc4_.scaleY = this.§@O§ + (this.§8!&§ - this.§@O§) * this.§;!X§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §;!X§(param1:Number) : Number
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
      
      override public function clone() : §2!C§
      {
         return new §>![§(time,duration,this.§=!B§,this.§@O§,this.§8!&§);
      }
   }
}
