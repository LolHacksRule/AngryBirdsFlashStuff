package §>!J§
{
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §2$§ extends §=!§
   {
      
      public static const §6w§:Number = 1024;
      
      public static const §[S§:Number = 658;
      
      public static const §9p§:Number = 55;
      
      public static const §>!4§:String = "cubic_in_out";
      
      public static const §,5§:String = "sin_in_out";
      
      public static const §%!0§:String = "none";
       
      
      private var §,!Z§:String;
      
      private var §<O§:Number;
      
      private var §92§:Number;
      
      private var §,d§:Number;
      
      private var §"q§:Number;
      
      private var §;!'§:Boolean = true;
      
      private var §'a§:String = "cubic_in_out";
      
      public function §2$§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§,!Z§ = param3;
         this.§<O§ = param4;
         this.§92§ = param5;
         this.§'a§ = param6;
      }
      
      public function set §[!+§(param1:Boolean) : void
      {
         this.§;!'§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@!E§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,!Z§))
            {
               if(_loc4_.name == §`!6§.§0!c§)
               {
                  if(this.§;!'§)
                  {
                     _loc4_.x = -this.§?7§() * this.§02§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§?7§() * this.§02§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§<O§;
                  _loc4_.y -= this.§92§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §02§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§'a§)
         {
            case §>!4§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §,5§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §?7§() : Number
      {
         if(this.§;!'§)
         {
            return this.§,d§ - §6w§;
         }
         return this.§"q§ - §[S§;
      }
      
      public function §[!-§(param1:Number, param2:Number) : void
      {
         this.§,d§ = param1;
         this.§"q§ = param2;
      }
      
      override public function clone() : §=!§
      {
         var _loc1_:§2$§ = new §2$§(time,duration,this.§,!Z§,this.§<O§,this.§92§,this.§'a§);
         _loc1_.§,d§ = this.§,d§;
         _loc1_.§"q§ = this.§"q§;
         _loc1_.§;!'§ = this.§;!'§;
         return _loc1_;
      }
   }
}
