package §6p§
{
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §2l§.§]O§;
   
   public class §>f§ extends §6!Y§
   {
      
      public static const § e§:Number = 1024;
      
      public static const §9!;§:Number = 658;
      
      public static const §]p§:Number = 55;
      
      public static const §2!=§:String = "cubic_in_out";
      
      public static const §^!6§:String = "sin_in_out";
      
      public static const §3r§:String = "none";
       
      
      private var §`H§:String;
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §8a§:Number;
      
      private var §[K§:Number;
      
      private var §+B§:Boolean = true;
      
      private var §%!5§:String = "cubic_in_out";
      
      public function §>f§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`H§ = param3;
         this.§03§ = param4;
         this.§5,§ = param5;
         this.§%!5§ = param6;
      }
      
      public function set §2+§(param1:Boolean) : void
      {
         this.§+B§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§]O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`H§))
            {
               if(_loc4_.name == §'$§.§9![§)
               {
                  if(this.§+B§)
                  {
                     _loc4_.x = -this.§<!D§() * this.§^S§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§<!D§() * this.§^S§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§03§;
                  _loc4_.y -= this.§5,§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^S§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§%!5§)
         {
            case §2!=§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §^!6§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §<!D§() : Number
      {
         if(this.§+B§)
         {
            return this.§8a§ - § e§;
         }
         return this.§[K§ - §9!;§;
      }
      
      public function §7g§(param1:Number, param2:Number) : void
      {
         this.§8a§ = param1;
         this.§[K§ = param2;
      }
      
      override public function clone() : §6!Y§
      {
         var _loc1_:§>f§ = new §>f§(time,duration,this.§`H§,this.§03§,this.§5,§,this.§%!5§);
         _loc1_.§8a§ = this.§8a§;
         _loc1_.§[K§ = this.§[K§;
         _loc1_.§+B§ = this.§+B§;
         return _loc1_;
      }
   }
}
