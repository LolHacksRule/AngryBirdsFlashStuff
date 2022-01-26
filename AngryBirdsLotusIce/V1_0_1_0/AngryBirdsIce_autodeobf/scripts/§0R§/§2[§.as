package §0R§
{
   import §1n§.§5#§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §2[§ extends §6! §
   {
       
      
      private var §9!+§:String = "";
      
      private var §>x§:Number = 1.0;
      
      private var § !6§:Number = 1.0;
      
      public function §2[§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§9!+§ = param3;
         this.§>x§ = param4;
         this.§ !6§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9!+§))
            {
               _loc4_.scaleX = this.§>x§ + (this.§ !6§ - this.§>x§) * this.§"b§(param1);
               _loc4_.scaleY = this.§>x§ + (this.§ !6§ - this.§>x§) * this.§"b§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §"b§(param1:Number) : Number
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
      
      override public function clone() : §6! §
      {
         return new §2[§(time,duration,this.§9!+§,this.§>x§,this.§ !6§);
      }
   }
}
