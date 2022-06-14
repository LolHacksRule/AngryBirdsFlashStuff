package §`!]§
{
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §9"-§ extends §>!D§
   {
      
      public static const §;H§:Number = 1024;
      
      public static const §+P§:Number = 658;
      
      public static const §0!4§:Number = 55;
      
      public static const §;"B§:String = "cubic_in_out";
      
      public static const §6+§:String = "sin_in_out";
      
      public static const §-%§:String = "none";
       
      
      private var §5!s§:String;
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §2!F§:Boolean = true;
      
      private var §%8§:String = "cubic_in_out";
      
      public function §9"-§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§5!s§ = param3;
         this.§,!k§ = param4;
         this.§!Q§ = param5;
         this.§%8§ = param6;
      }
      
      public function set §!!0§(param1:Boolean) : void
      {
         this.§2!F§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§5!s§))
            {
               if(_loc4_.name == §>!H§.§>J§)
               {
                  if(this.§2!F§)
                  {
                     _loc4_.x = -this.§,!$§() * this.§7!<§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§,!$§() * this.§7!<§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§,!k§;
                  _loc4_.y -= this.§!Q§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7!<§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§%8§)
         {
            case §;"B§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §6+§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §,!$§() : Number
      {
         if(this.§2!F§)
         {
            return this.§`w§ - §;H§;
         }
         return this.§%m§ - §+P§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§`w§ = param1;
         this.§%m§ = param2;
      }
      
      override public function clone() : §>!D§
      {
         var _loc1_:§9"-§ = new §9"-§(time,duration,this.§5!s§,this.§,!k§,this.§!Q§,this.§%8§);
         _loc1_.§`w§ = this.§`w§;
         _loc1_.§%m§ = this.§%m§;
         _loc1_.§2!F§ = this.§2!F§;
         return _loc1_;
      }
   }
}
