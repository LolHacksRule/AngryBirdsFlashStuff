package §=!7§
{
   import § `§.§2w§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §'!M§ extends §%f§
   {
      
      public static const §;#§:Number = 1024;
      
      public static const §0h§:Number = 658;
      
      public static const §'w§:Number = 55;
      
      public static const §]!3§:String = "cubic_in_out";
      
      public static const §@!A§:String = "sin_in_out";
      
      public static const §2H§:String = "none";
       
      
      private var §8?§:String;
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §=!H§:Boolean = true;
      
      private var §`Z§:String = "cubic_in_out";
      
      public function §'!M§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8?§ = param3;
         this.§<!Y§ = param4;
         this.§ l§ = param5;
         this.§`Z§ = param6;
      }
      
      public function set §9![§(param1:Boolean) : void
      {
         this.§=!H§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8?§))
            {
               if(_loc4_.name == §3&§.§[!M§)
               {
                  if(this.§=!H§)
                  {
                     _loc4_.x = -this.§4]§() * this.§"!<§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§4]§() * this.§"!<§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§<!Y§;
                  _loc4_.y -= this.§ l§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §"!<§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§`Z§)
         {
            case §]!3§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@!A§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §4]§() : Number
      {
         if(this.§=!H§)
         {
            return this.§^!I§ - §;#§;
         }
         return this.§,!X§ - §0h§;
      }
      
      public function §%r§(param1:Number, param2:Number) : void
      {
         this.§^!I§ = param1;
         this.§,!X§ = param2;
      }
      
      override public function clone() : §%f§
      {
         var _loc1_:§'!M§ = new §'!M§(time,duration,this.§8?§,this.§<!Y§,this.§ l§,this.§`Z§);
         _loc1_.§^!I§ = this.§^!I§;
         _loc1_.§,!X§ = this.§,!X§;
         _loc1_.§=!H§ = this.§=!H§;
         return _loc1_;
      }
   }
}
