package §+"I§
{
   import §!!k§.§0!B§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §]!>§ extends §^"C§
   {
       
      
      private var §0"H§:String = "";
      
      private var §]!=§:Number = 1.0;
      
      private var §#G§:Number = 1.0;
      
      public function §]!>§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§0"H§ = param3;
         this.§]!=§ = param4;
         this.§#G§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§0"H§))
            {
               _loc4_.scaleX = this.§]!=§ + (this.§#G§ - this.§]!=§) * this.§["Q§(param1);
               _loc4_.scaleY = this.§]!=§ + (this.§#G§ - this.§]!=§) * this.§["Q§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §["Q§(param1:Number) : Number
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
      
      override public function clone() : §^"C§
      {
         return new §]!>§(time,duration,this.§0"H§,this.§]!=§,this.§#G§);
      }
   }
}
