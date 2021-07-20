package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §`!N§ extends §?!t§
   {
       
      
      private var §]X§:String = "";
      
      private var §3L§:Number = 1.0;
      
      private var §&!P§:Number = 1.0;
      
      public function §`!N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§]X§ = param3;
         this.§3L§ = param4;
         this.§&!P§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]X§))
            {
               _loc4_.scaleX = this.§3L§ + (this.§&!P§ - this.§3L§) * this.§]!Q§(param1);
               _loc4_.scaleY = this.§3L§ + (this.§&!P§ - this.§3L§) * this.§]!Q§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]!Q§(param1:Number) : Number
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
      
      override public function clone() : §?!t§
      {
         return new §`!N§(time,duration,this.§]X§,this.§3L§,this.§&!P§);
      }
   }
}
