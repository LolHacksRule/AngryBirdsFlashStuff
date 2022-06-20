package §4!r§
{
   import §?"<§.§<"!§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   
   public class §;!5§ extends §8!A§
   {
      
      public static const §^3§:Number = 1024;
      
      public static const §&"$§:Number = 658;
      
      public static const §63§:Number = 55;
      
      public static const §#c§:String = "cubic_in_out";
      
      public static const §'!7§:String = "sin_in_out";
      
      public static const §,!a§:String = "none";
       
      
      private var §`%§:String;
      
      private var §>U§:Number;
      
      private var §>!c§:Number;
      
      private var §]"A§:Number;
      
      private var §>!>§:Number;
      
      private var §>"@§:Boolean = true;
      
      private var §+q§:String = "cubic_in_out";
      
      public function §;!5§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`%§ = param3;
         this.§>U§ = param4;
         this.§>!c§ = param5;
         this.§+q§ = param6;
      }
      
      public function set §7Z§(param1:Boolean) : void
      {
         this.§>"@§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<"!§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`%§))
            {
               if(_loc4_.name == §3!E§.§"0§)
               {
                  if(this.§>"@§)
                  {
                     _loc4_.x = -this.§6!j§() * this.§-[§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§6!j§() * this.§-[§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§>U§;
                  _loc4_.y -= this.§>!c§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §-[§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§+q§)
         {
            case §#c§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §'!7§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §6!j§() : Number
      {
         if(this.§>"@§)
         {
            return this.§]"A§ - §^3§;
         }
         return this.§>!>§ - §&"$§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]"A§ = param1;
         this.§>!>§ = param2;
      }
      
      override public function clone() : §8!A§
      {
         var _loc1_:§;!5§ = new §;!5§(time,duration,this.§`%§,this.§>U§,this.§>!c§,this.§+q§);
         _loc1_.§]"A§ = this.§]"A§;
         _loc1_.§>!>§ = this.§>!>§;
         _loc1_.§>"@§ = this.§>"@§;
         return _loc1_;
      }
   }
}
