package §%!>§
{
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   
   public class §%n§ extends §7!<§
   {
      
      public static const §[!0§:Number = 1024;
      
      public static const §>!8§:Number = 658;
      
      public static const §9!-§:Number = 55;
      
      public static const §^p§:String = "cubic_in_out";
      
      public static const §]i§:String = "sin_in_out";
      
      public static const §+!,§:String = "none";
       
      
      private var §=^§:String;
      
      private var §-o§:Number;
      
      private var §2!9§:Number;
      
      private var §0!4§:Number;
      
      private var §0!$§:Number;
      
      private var §8H§:Boolean = true;
      
      private var §^U§:String = "cubic_in_out";
      
      public function §%n§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§=^§ = param3;
         this.§-o§ = param4;
         this.§2!9§ = param5;
         this.§^U§ = param6;
      }
      
      public function set §1c§(param1:Boolean) : void
      {
         this.§8H§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !C§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=^§))
            {
               if(_loc4_.name == §-;§.§#!!§)
               {
                  if(this.§8H§)
                  {
                     _loc4_.x = -this.§`!9§() * this.§1!G§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§`!9§() * this.§1!G§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§-o§;
                  _loc4_.y -= this.§2!9§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!G§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§^U§)
         {
            case §^p§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §]i§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §`!9§() : Number
      {
         if(this.§8H§)
         {
            return this.§0!4§ - §[!0§;
         }
         return this.§0!$§ - §>!8§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0!4§ = param1;
         this.§0!$§ = param2;
      }
      
      override public function clone() : §7!<§
      {
         var _loc1_:§%n§ = new §%n§(time,duration,this.§=^§,this.§-o§,this.§2!9§,this.§^U§);
         _loc1_.§0!4§ = this.§0!4§;
         _loc1_.§0!$§ = this.§0!$§;
         _loc1_.§8H§ = this.§8H§;
         return _loc1_;
      }
   }
}
