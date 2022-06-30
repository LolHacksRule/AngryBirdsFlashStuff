package §>X§
{
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §3!§.§-e§;
   
   public class §8`§ extends §5!4§
   {
      
      public static const §,e§:Number = 1024;
      
      public static const §5§:Number = 658;
      
      public static const §;1§:Number = 55;
      
      public static const §^@§:String = "cubic_in_out";
      
      public static const §[5§:String = "sin_in_out";
      
      public static const §&!;§:String = "none";
       
      
      private var §2C§:String;
      
      private var §`B§:Number;
      
      private var §,!9§:Number;
      
      private var §>5§:Number;
      
      private var §`!I§:Number;
      
      private var §06§:Boolean = true;
      
      private var §!,§:String = "cubic_in_out";
      
      public function §8`§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§2C§ = param3;
         this.§`B§ = param4;
         this.§,!9§ = param5;
         this.§!,§ = param6;
      }
      
      public function set §?!O§(param1:Boolean) : void
      {
         this.§06§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-e§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§2C§))
            {
               if(_loc4_.name == §=!$§.§&&§)
               {
                  if(this.§06§)
                  {
                     _loc4_.x = -this.§+3§() * this.§5!7§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§+3§() * this.§5!7§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§`B§;
                  _loc4_.y -= this.§,!9§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §5!7§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§!,§)
         {
            case §^@§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §[5§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §+3§() : Number
      {
         if(this.§06§)
         {
            return this.§>5§ - §,e§;
         }
         return this.§`!I§ - §5§;
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         this.§>5§ = param1;
         this.§`!I§ = param2;
      }
      
      override public function clone() : §5!4§
      {
         var _loc1_:§8`§ = new §8`§(time,duration,this.§2C§,this.§`B§,this.§,!9§,this.§!,§);
         _loc1_.§>5§ = this.§>5§;
         _loc1_.§`!I§ = this.§`!I§;
         _loc1_.§06§ = this.§06§;
         return _loc1_;
      }
   }
}
