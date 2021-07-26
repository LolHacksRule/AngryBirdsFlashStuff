package §8$=§
{
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   
   public class §<#b§ extends §=Q§
   {
       
      
      private var §9$B§:String = "";
      
      private var §5"O§:Number = 1.0;
      
      private var §7#G§:Number = 1.0;
      
      public function §<#b§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§9$B§ = param3;
         this.§5"O§ = param4;
         this.§7#G§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#"^§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9$B§))
            {
               _loc4_.scaleX = this.§5"O§ + (this.§7#G§ - this.§5"O§) * this.§["9§(param1);
               _loc4_.scaleY = this.§5"O§ + (this.§7#G§ - this.§5"O§) * this.§["9§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §["9§(param1:Number) : Number
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
      
      override public function clone() : §=Q§
      {
         return new §<#b§(time,duration,this.§9$B§,this.§5"O§,this.§7#G§);
      }
   }
}
