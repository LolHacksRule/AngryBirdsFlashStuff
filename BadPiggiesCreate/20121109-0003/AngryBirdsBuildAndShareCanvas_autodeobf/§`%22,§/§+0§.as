package §`",§
{
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §+0§ extends §7!s§
   {
       
      
      private var §#^§:String = "";
      
      private var §&u§:Number = 1.0;
      
      private var §3o§:Number = 1.0;
      
      public function §+0§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§#^§ = param3;
         this.§&u§ = param4;
         this.§3o§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#^§))
            {
               _loc4_.scaleX = this.§&u§ + (this.§3o§ - this.§&u§) * this.§]"$§(param1);
               _loc4_.scaleY = this.§&u§ + (this.§3o§ - this.§&u§) * this.§]"$§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]"$§(param1:Number) : Number
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
      
      override public function clone() : §7!s§
      {
         return new §+0§(time,duration,this.§#^§,this.§&u§,this.§3o§);
      }
   }
}
