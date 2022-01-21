package § d§
{
   import §&!!§.§<!'§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   
   public class §4N§ extends §,!+§
   {
       
      
      private var §,6§:String = "";
      
      private var §@8§:Number = 1.0;
      
      private var §!!1§:Number = 1.0;
      
      public function §4N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§,6§ = param3;
         this.§@8§ = param4;
         this.§!!1§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<!'§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,6§))
            {
               _loc4_.scaleX = this.§@8§ + (this.§!!1§ - this.§@8§) * this.§^!M§(param1);
               _loc4_.scaleY = this.§@8§ + (this.§!!1§ - this.§@8§) * this.§^!M§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^!M§(param1:Number) : Number
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
      
      override public function clone() : §,!+§
      {
         return new §4N§(time,duration,this.§,6§,this.§@8§,this.§!!1§);
      }
   }
}
