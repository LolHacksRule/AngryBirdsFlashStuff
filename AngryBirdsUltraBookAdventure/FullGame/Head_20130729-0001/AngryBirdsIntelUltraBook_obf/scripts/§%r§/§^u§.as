package §%r§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §^u§ extends §,!b§
   {
       
      
      private var §&!O§:String = "";
      
      private var §1-§:Number = 1.0;
      
      private var §=!a§:Number = 1.0;
      
      public function §^u§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§&!O§ = param3;
         this.§1-§ = param4;
         this.§=!a§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc4_ = param2.getChildByName(this.§&!O§);
            if(_loc4_)
            {
               _loc4_.scaleX = this.§1-§ + (this.§=!a§ - this.§1-§) * this.§#>§(param1);
               _loc4_.scaleY = this.§1-§ + (this.§=!a§ - this.§1-§) * this.§#>§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §#>§(param1:Number) : Number
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
      
      override public function clone() : §,!b§
      {
         return new §^u§(time,duration,this.§&!O§,this.§1-§,this.§=!a§);
      }
   }
}
