package §'!I§
{
   import § !N§.§`v§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   
   public class §2v§ extends §]p§
   {
       
      
      private var §`n§:String = "";
      
      private var §]L§:Number = 1.0;
      
      private var §9W§:Number = 1.0;
      
      public function §2v§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§`n§ = param3;
         this.§]L§ = param4;
         this.§9W§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`v§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`n§))
            {
               _loc4_.scaleX = this.§]L§ + (this.§9W§ - this.§]L§) * this.§7-§(param1);
               _loc4_.scaleY = this.§]L§ + (this.§9W§ - this.§]L§) * this.§7-§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7-§(param1:Number) : Number
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
      
      override public function clone() : §]p§
      {
         return new §2v§(time,duration,this.§`n§,this.§]L§,this.§9W§);
      }
   }
}
