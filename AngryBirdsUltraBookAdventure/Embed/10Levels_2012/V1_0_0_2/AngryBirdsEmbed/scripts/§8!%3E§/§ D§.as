package §8!>§
{
   import §'k§.§ >§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   
   public class § D§ extends §1^§
   {
      
      public static const §>§:Number = 1024;
      
      public static const §%i§:Number = 658;
      
      public static const §>L§:Number = 55;
      
      public static const §8G§:String = "cubic_in_out";
      
      public static const §3W§:String = "sin_in_out";
      
      public static const §#!@§:String = "none";
       
      
      private var §7e§:String;
      
      private var §<!B§:Number;
      
      private var §,k§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §3e§:Boolean = true;
      
      private var §1i§:String = "cubic_in_out";
      
      public function § D§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§7e§ = param3;
         this.§<!B§ = param4;
         this.§,k§ = param5;
         this.§1i§ = param6;
      }
      
      public function set §^! §(param1:Boolean) : void
      {
         this.§3e§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§7e§))
            {
               if(_loc4_.name == §>T§.§9Y§)
               {
                  if(this.§3e§)
                  {
                     _loc4_.x = -this.§"!$§() * this.§ f§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§"!$§() * this.§ f§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§<!B§;
                  _loc4_.y -= this.§,k§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function § f§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§1i§)
         {
            case §8G§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §3W§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §"!$§() : Number
      {
         if(this.§3e§)
         {
            return this.§ l§ - §>§;
         }
         return this.§4N§ - §%i§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ l§ = param1;
         this.§4N§ = param2;
      }
      
      override public function clone() : §1^§
      {
         var _loc1_:§ D§ = new § D§(time,duration,this.§7e§,this.§<!B§,this.§,k§,this.§1i§);
         _loc1_.§ l§ = this.§ l§;
         _loc1_.§4N§ = this.§4N§;
         _loc1_.§3e§ = this.§3e§;
         return _loc1_;
      }
   }
}
