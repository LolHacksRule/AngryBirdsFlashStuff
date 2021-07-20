package §"!@§
{
   import §+!]§.§!,§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   
   public class §%l§ extends §,!T§
   {
      
      public static const §4!3§:Number = 1024;
      
      public static const §1l§:Number = 658;
      
      public static const §,!C§:Number = 55;
      
      public static const §"!D§:String = "cubic_in_out";
      
      public static const §>!S§:String = "sin_in_out";
      
      public static const §=!C§:String = "none";
       
      
      private var §]!9§:String;
      
      private var §5T§:Number;
      
      private var §![§:Number;
      
      private var §@S§:Number;
      
      private var §1!U§:Number;
      
      private var §"!,§:Boolean = true;
      
      private var §1@§:String = "cubic_in_out";
      
      public function §%l§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§]!9§ = param3;
         this.§5T§ = param4;
         this.§![§ = param5;
         this.§1@§ = param6;
      }
      
      public function set §-!S§(param1:Boolean) : void
      {
         this.§"!,§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!9§))
            {
               if(_loc4_.name == §3v§.§?!E§)
               {
                  if(this.§"!,§)
                  {
                     _loc4_.x = -this.§[!+§() * this.§>!C§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[!+§() * this.§>!C§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§5T§;
                  _loc4_.y -= this.§![§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!C§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§1@§)
         {
            case §"!D§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>!S§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[!+§() : Number
      {
         if(this.§"!,§)
         {
            return this.§@S§ - §4!3§;
         }
         return this.§1!U§ - §1l§;
      }
      
      public function §'!3§(param1:Number, param2:Number) : void
      {
         this.§@S§ = param1;
         this.§1!U§ = param2;
      }
      
      override public function clone() : §,!T§
      {
         var _loc1_:§%l§ = new §%l§(time,duration,this.§]!9§,this.§5T§,this.§![§,this.§1@§);
         _loc1_.§@S§ = this.§@S§;
         _loc1_.§1!U§ = this.§1!U§;
         _loc1_.§"!,§ = this.§"!,§;
         return _loc1_;
      }
   }
}
