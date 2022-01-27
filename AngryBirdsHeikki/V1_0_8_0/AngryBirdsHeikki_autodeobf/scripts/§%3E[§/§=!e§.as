package §>[§
{
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §=!e§ extends §%!U§
   {
      
      public static const §8!G§:Number = 1024;
      
      public static const §>!?§:Number = 658;
      
      public static const §`]§:Number = 55;
      
      public static const §6!8§:String = "cubic_in_out";
      
      public static const §>!>§:String = "sin_in_out";
      
      public static const §2u§:String = "none";
       
      
      private var §3y§:String;
      
      private var §[!#§:Number;
      
      private var §?=§:Number;
      
      private var §+L§:Number;
      
      private var §<!@§:Number;
      
      private var §3T§:Boolean = true;
      
      private var §<!#§:String = "cubic_in_out";
      
      public function §=!e§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3y§ = param3;
         this.§[!#§ = param4;
         this.§?=§ = param5;
         this.§<!#§ = param6;
      }
      
      public function set §[K§(param1:Boolean) : void
      {
         this.§3T§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!d§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3y§))
            {
               if(_loc4_.name == §;§.§,!E§)
               {
                  if(this.§3T§)
                  {
                     _loc4_.x = -this.§^!$§() * this.§8!e§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§^!$§() * this.§8!e§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§[!#§;
                  _loc4_.y -= this.§?=§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §8!e§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§<!#§)
         {
            case §6!8§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>!>§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §^!$§() : Number
      {
         if(this.§3T§)
         {
            return this.§+L§ - §8!G§;
         }
         return this.§<!@§ - §>!?§;
      }
      
      public function §"!C§(param1:Number, param2:Number) : void
      {
         this.§+L§ = param1;
         this.§<!@§ = param2;
      }
      
      override public function clone() : §%!U§
      {
         var _loc1_:§=!e§ = new §=!e§(time,duration,this.§3y§,this.§[!#§,this.§?=§,this.§<!#§);
         _loc1_.§+L§ = this.§+L§;
         _loc1_.§<!@§ = this.§<!@§;
         _loc1_.§3T§ = this.§3T§;
         return _loc1_;
      }
   }
}
