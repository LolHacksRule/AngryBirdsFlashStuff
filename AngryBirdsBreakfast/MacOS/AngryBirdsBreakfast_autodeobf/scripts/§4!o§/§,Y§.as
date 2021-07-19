package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   
   public class §,Y§ extends §0!c§
   {
       
      
      private var §1!m§:String = "";
      
      private var §=M§:Number = 1.0;
      
      private var §2!D§:Number = 1.0;
      
      public function §,Y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§1!m§ = param3;
         this.§=M§ = param4;
         this.§2!D§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!m§))
            {
               _loc4_.scaleX = this.§=M§ + (this.§2!D§ - this.§=M§) * this.§<!1§(param1);
               _loc4_.scaleY = this.§=M§ + (this.§2!D§ - this.§=M§) * this.§<!1§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<!1§(param1:Number) : Number
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
      
      override public function clone() : §0!c§
      {
         return new §,Y§(time,duration,this.§1!m§,this.§=M§,this.§2!D§);
      }
   }
}
