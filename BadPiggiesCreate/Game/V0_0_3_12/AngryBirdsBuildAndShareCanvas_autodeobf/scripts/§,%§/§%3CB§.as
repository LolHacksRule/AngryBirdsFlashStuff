package §,%§
{
   import §@!-§.§3"1§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   
   public class §<B§ extends §"!2§
   {
      
      public static const §0<§:Number = 1024;
      
      public static const §-!'§:Number = 658;
      
      public static const §>_§:Number = 55;
      
      public static const §`Y§:String = "cubic_in_out";
      
      public static const §;!9§:String = "sin_in_out";
      
      public static const §@!;§:String = "none";
       
      
      private var §?!p§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §%w§:Number;
      
      private var §-N§:Number;
      
      private var §]"+§:Boolean = true;
      
      private var §`"=§:String = "cubic_in_out";
      
      public function §<B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§?!p§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§`"=§ = param6;
      }
      
      public function set §3g§(param1:Boolean) : void
      {
         this.§]"+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§?!p§))
            {
               if(_loc4_.name == §6S§.§`"§)
               {
                  if(this.§]"+§)
                  {
                     _loc4_.x = -this.§>8§() * this.§%"§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§>8§() * this.§%"§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §%"§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§`"=§)
         {
            case §`Y§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §;!9§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §>8§() : Number
      {
         if(this.§]"+§)
         {
            return this.§%w§ - §0<§;
         }
         return this.§-N§ - §-!'§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§%w§ = param1;
         this.§-N§ = param2;
      }
      
      override public function clone() : §"!2§
      {
         var _loc1_:§<B§ = new §<B§(time,duration,this.§?!p§,this.mX,this.mY,this.§`"=§);
         _loc1_.§%w§ = this.§%w§;
         _loc1_.§-N§ = this.§-N§;
         _loc1_.§]"+§ = this.§]"+§;
         return _loc1_;
      }
   }
}
