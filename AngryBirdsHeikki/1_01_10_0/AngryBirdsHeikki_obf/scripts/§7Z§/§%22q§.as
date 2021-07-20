package §7Z§
{
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §"q§ extends §^!§
   {
      
      public static const §3i§:Number = 1024;
      
      public static const §!!d§:Number = 658;
      
      public static const §`!0§:Number = 55;
      
      public static const §"U§:String = "cubic_in_out";
      
      public static const §,!e§:String = "sin_in_out";
      
      public static const §>&§:String = "none";
       
      
      private var §,!E§:String;
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §7!,§:Boolean = true;
      
      private var §>A§:String = "cubic_in_out";
      
      public function §"q§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§,!E§ = param3;
         this.§"!d§ = param4;
         this.§,!W§ = param5;
         this.§>A§ = param6;
      }
      
      public function set § !,§(param1:Boolean) : void
      {
         this.§7!,§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,!E§))
            {
               if(_loc4_.name == §&!Q§.§<!b§)
               {
                  if(this.§7!,§)
                  {
                     _loc4_.x = -this.§2!f§() * this.§'O§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§2!f§() * this.§'O§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§"!d§;
                  _loc4_.y -= this.§,!W§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'O§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§>A§)
         {
            case §"U§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §,!e§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §2!f§() : Number
      {
         if(this.§7!,§)
         {
            return this.§@!-§ - §3i§;
         }
         return this.§3S§ - §!!d§;
      }
      
      public function §1n§(param1:Number, param2:Number) : void
      {
         this.§@!-§ = param1;
         this.§3S§ = param2;
      }
      
      override public function clone() : §^!§
      {
         var _loc1_:§"q§ = new §"q§(time,duration,this.§,!E§,this.§"!d§,this.§,!W§,this.§>A§);
         _loc1_.§@!-§ = this.§@!-§;
         _loc1_.§3S§ = this.§3S§;
         _loc1_.§7!,§ = this.§7!,§;
         return _loc1_;
      }
   }
}
