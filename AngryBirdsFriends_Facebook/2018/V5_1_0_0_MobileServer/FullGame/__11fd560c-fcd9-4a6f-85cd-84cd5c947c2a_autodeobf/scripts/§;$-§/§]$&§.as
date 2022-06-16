package §;$-§
{
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §]$&§ extends §<#N§
   {
       
      
      private var §6"@§:String = "";
      
      private var §7#a§:Number = 1.0;
      
      private var §4$=§:Number = 1.0;
      
      public function §]$&§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§6"@§ = param3;
         this.§7#a§ = param4;
         this.§4$=§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§34§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6"@§))
            {
               _loc4_.scaleX = this.§7#a§ + (this.§4$=§ - this.§7#a§) * this.§<"u§(param1);
               _loc4_.scaleY = this.§7#a§ + (this.§4$=§ - this.§7#a§) * this.§<"u§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<"u§(param1:Number) : Number
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
      
      override public function clone() : §<#N§
      {
         return new §]$&§(time,duration,this.§6"@§,this.§7#a§,this.§4$=§);
      }
   }
}
