package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §?#§ extends §^!I§
   {
       
      
      private var §8!3§:String = "";
      
      private var §@!g§:Number = 1.0;
      
      private var §2!J§:Number = 1.0;
      
      public function §?#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§8!3§ = param3;
         this.§@!g§ = param4;
         this.§2!J§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc4_ = param2.getChildByName(this.§8!3§);
            if(_loc4_)
            {
               _loc4_.scaleX = this.§@!g§ + (this.§2!J§ - this.§@!g§) * this.§do§(param1);
               _loc4_.scaleY = this.§@!g§ + (this.§2!J§ - this.§@!g§) * this.§do§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §do§(param1:Number) : Number
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
      
      override public function clone() : §^!I§
      {
         return new §?#§(time,duration,this.§8!3§,this.§@!g§,this.§2!J§);
      }
   }
}
