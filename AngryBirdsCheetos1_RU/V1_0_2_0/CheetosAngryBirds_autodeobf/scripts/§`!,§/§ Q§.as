package §`!,§
{
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §2!4§.§5T§;
   
   public class § Q§ extends §&H§
   {
      
      public static const §34§:Number = 1024;
      
      public static const §!=§:Number = 658;
      
      public static const §;!3§:Number = 55;
      
      public static const §^!C§:String = "cubic_in_out";
      
      public static const §2!E§:String = "sin_in_out";
      
      public static const § !B§:String = "none";
       
      
      private var §4Y§:String;
      
      private var §,!_§:Number;
      
      private var §4b§:Number;
      
      private var §,!E§:Number;
      
      private var §''§:Number;
      
      private var §"e§:Boolean = true;
      
      private var §%!J§:String = "cubic_in_out";
      
      public function § Q§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4Y§ = param3;
         this.§,!_§ = param4;
         this.§4b§ = param5;
         this.§%!J§ = param6;
      }
      
      public function set §2I§(param1:Boolean) : void
      {
         this.§"e§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5T§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4Y§))
            {
               if(_loc4_.name == §`x§.§6! §)
               {
                  if(this.§"e§)
                  {
                     _loc4_.x = -this.§;f§() * this.§1!6§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§;f§() * this.§1!6§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§,!_§;
                  _loc4_.y -= this.§4b§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!6§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§%!J§)
         {
            case §^!C§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §2!E§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §;f§() : Number
      {
         if(this.§"e§)
         {
            return this.§,!E§ - §34§;
         }
         return this.§''§ - §!=§;
      }
      
      public function §;0§(param1:Number, param2:Number) : void
      {
         this.§,!E§ = param1;
         this.§''§ = param2;
      }
      
      override public function clone() : §&H§
      {
         var _loc1_:§ Q§ = new § Q§(time,duration,this.§4Y§,this.§,!_§,this.§4b§,this.§%!J§);
         _loc1_.§,!E§ = this.§,!E§;
         _loc1_.§''§ = this.§''§;
         _loc1_.§"e§ = this.§"e§;
         return _loc1_;
      }
   }
}
