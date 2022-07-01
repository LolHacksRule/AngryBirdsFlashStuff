package §!-§
{
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §[_§.§2!B§;
   
   public class §^!B§ extends §[u§
   {
       
      
      private var §"!K§:String = "";
      
      private var §6!V§:Number = 1.0;
      
      private var §4L§:Number = 1.0;
      
      public function §^!B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§"!K§ = param3;
         this.§6!V§ = param4;
         this.§4L§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§"!K§))
            {
               _loc4_.scaleX = this.§6!V§ + (this.§4L§ - this.§6!V§) * this.§+!f§(param1);
               _loc4_.scaleY = this.§6!V§ + (this.§4L§ - this.§6!V§) * this.§+!f§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+!f§(param1:Number) : Number
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
      
      override public function clone() : §[u§
      {
         return new §^!B§(time,duration,this.§"!K§,this.§6!V§,this.§4L§);
      }
   }
}
