package §0=§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §7!j§.§'0§;
   
   public class §2=§ extends §6$'§
   {
      
      public static const §-Y§:Number = 1024;
      
      public static const §<!q§:Number = 658;
      
      public static const §<!4§:Number = 55;
      
      public static const §%$9§:String = "cubic_in_out";
      
      public static const §@# §:String = "sin_in_out";
      
      public static const §&##§:String = "none";
       
      
      private var §""4§:String;
      
      private var §?!l§:Number;
      
      private var §`"T§:Number;
      
      private var § ";§:Number;
      
      private var §;!U§:Number;
      
      private var §8!A§:Boolean = true;
      
      private var §7#n§:String = "cubic_in_out";
      
      public function §2=§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§""4§ = param3;
         this.§?!l§ = param4;
         this.§`"T§ = param5;
         this.§7#n§ = param6;
      }
      
      public function set §4^§(param1:Boolean) : void
      {
         this.§8!A§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§""4§))
            {
               if(_loc4_.name == §^#s§.§,#C§)
               {
                  if(this.§8!A§)
                  {
                     _loc4_.x = -this.§#$$§() * this.§&"n§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§#$$§() * this.§&"n§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§?!l§;
                  _loc4_.y -= this.§`"T§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §&"n§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§7#n§)
         {
            case §%$9§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@# §:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §#$$§() : Number
      {
         if(this.§8!A§)
         {
            return this.§ ";§ - §-Y§;
         }
         return this.§;!U§ - §<!q§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ ";§ = param1;
         this.§;!U§ = param2;
      }
      
      override public function clone() : §6$'§
      {
         var _loc1_:§2=§ = new §2=§(time,duration,this.§""4§,this.§?!l§,this.§`"T§,this.§7#n§);
         _loc1_.§ ";§ = this.§ ";§;
         _loc1_.§;!U§ = this.§;!U§;
         _loc1_.§8!A§ = this.§8!A§;
         return _loc1_;
      }
   }
}
