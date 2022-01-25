package §<c§
{
   import §8r§.§@V§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   
   public class §2l§ extends §^N§
   {
      
      public static const §,T§:Number = 1024;
      
      public static const §8-§:Number = 658;
      
      public static const §?!A§:Number = 55;
      
      public static const §`O§:String = "cubic_in_out";
      
      public static const §7!D§:String = "sin_in_out";
      
      public static const §2j§:String = "none";
       
      
      private var §#%§:String;
      
      private var §?H§:Number;
      
      private var §>!a§:Number;
      
      private var §=$§:Number;
      
      private var §1T§:Number;
      
      private var §-!>§:Boolean = true;
      
      private var §^;§:String = "cubic_in_out";
      
      public function §2l§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§#%§ = param3;
         this.§?H§ = param4;
         this.§>!a§ = param5;
         this.§^;§ = param6;
      }
      
      public function set §5!L§(param1:Boolean) : void
      {
         this.§-!>§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@V§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#%§))
            {
               if(_loc4_.name == §+5§.§'m§)
               {
                  if(this.§-!>§)
                  {
                     _loc4_.x = -this.§18§() * this.§7y§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§18§() * this.§7y§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§?H§;
                  _loc4_.y -= this.§>!a§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7y§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§^;§)
         {
            case §`O§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §7!D§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §18§() : Number
      {
         if(this.§-!>§)
         {
            return this.§=$§ - §,T§;
         }
         return this.§1T§ - §8-§;
      }
      
      public function §-!A§(param1:Number, param2:Number) : void
      {
         this.§=$§ = param1;
         this.§1T§ = param2;
      }
      
      override public function clone() : §^N§
      {
         var _loc1_:§2l§ = new §2l§(time,duration,this.§#%§,this.§?H§,this.§>!a§,this.§^;§);
         _loc1_.§=$§ = this.§=$§;
         _loc1_.§1T§ = this.§1T§;
         _loc1_.§-!>§ = this.§-!>§;
         return _loc1_;
      }
   }
}
