package §?$§
{
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class §,3§ extends §9!'§
   {
       
      
      private var §^s§:String = "";
      
      private var §@[§:Number = 1.0;
      
      private var §6P§:Number = 1.0;
      
      public function §,3§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§^s§ = param3;
         this.§@[§ = param4;
         this.§6P§ = param5;
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
            _loc4_ = param2.getChildByName(this.§^s§);
            if(_loc4_)
            {
               _loc4_.scaleX = this.§@[§ + (this.§6P§ - this.§@[§) * this.§9s§(param1);
               _loc4_.scaleY = this.§@[§ + (this.§6P§ - this.§@[§) * this.§9s§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9s§(param1:Number) : Number
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
      
      override public function clone() : §9!'§
      {
         return new §,3§(time,duration,this.§^s§,this.§@[§,this.§6P§);
      }
   }
}
