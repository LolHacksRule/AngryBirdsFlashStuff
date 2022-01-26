package §8!P§
{
   import §1!A§.DisplayObject;
   import §1!A§.Sprite;
   import §8K§.§>g§;
   
   public class §&!Q§ extends §60§
   {
      
      public static const §1=§:Number = 1024;
      
      public static const §@!#§:Number = 658;
      
      public static const §;!6§:Number = 55;
      
      public static const §`![§:String = "cubic_in_out";
      
      public static const §%k§:String = "sin_in_out";
      
      public static const § D§:String = "none";
       
      
      private var §8!G§:String;
      
      private var §6!Z§:Number;
      
      private var §,!A§:Number;
      
      private var §^S§:Number;
      
      private var §6-§:Number;
      
      private var §<T§:Boolean = true;
      
      private var §-]§:String = "cubic_in_out";
      
      public function §&!Q§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8!G§ = param3;
         this.§6!Z§ = param4;
         this.§,!A§ = param5;
         this.§-]§ = param6;
      }
      
      public function set §,!N§(param1:Boolean) : void
      {
         this.§<T§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>g§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8!G§))
            {
               if(_loc4_.name == §3!7§.§5]§)
               {
                  if(this.§<T§)
                  {
                     _loc4_.x = -this.§3A§() * this.§9!M§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§3A§() * this.§9!M§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§6!Z§;
                  _loc4_.y -= this.§,!A§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9!M§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§-]§)
         {
            case §`![§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §%k§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §3A§() : Number
      {
         if(this.§<T§)
         {
            return this.§^S§ - §1=§;
         }
         return this.§6-§ - §@!#§;
      }
      
      public function §#t§(param1:Number, param2:Number) : void
      {
         this.§^S§ = param1;
         this.§6-§ = param2;
      }
      
      override public function clone() : §60§
      {
         var _loc1_:§&!Q§ = new §&!Q§(time,duration,this.§8!G§,this.§6!Z§,this.§,!A§,this.§-]§);
         _loc1_.§^S§ = this.§^S§;
         _loc1_.§6-§ = this.§6-§;
         _loc1_.§<T§ = this.§<T§;
         return _loc1_;
      }
   }
}
