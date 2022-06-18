package §'6§
{
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §`n§.§#H§;
   
   public class §9!#§ extends §+v§
   {
       
      
      private var §[5§:String = "";
      
      private var §;i§:Number = 1.0;
      
      private var §3g§:Number = 1.0;
      
      public function §9!#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§[5§ = param3;
         this.§;i§ = param4;
         this.§3g§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#H§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§[5§))
            {
               _loc4_.scaleX = this.§;i§ + (this.§3g§ - this.§;i§) * this.§]!H§(param1);
               _loc4_.scaleY = this.§;i§ + (this.§3g§ - this.§;i§) * this.§]!H§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]!H§(param1:Number) : Number
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
      
      override public function clone() : §+v§
      {
         return new §9!#§(time,duration,this.§[5§,this.§;i§,this.§3g§);
      }
   }
}
