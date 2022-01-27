package §4=§
{
   import §1"s§.Sprite;
   import §3"$§.§[a§;
   import §5!q§.§3"X§;
   import §6"R§.§!z§;
   import §>P§.§;+§;
   
   public class §=!s§ extends §%"o§
   {
       
      
      protected var §3"9§:Number = 0.0;
      
      protected var §!!0§:Number = 0.0;
      
      protected var §8"x§:Number = 0.0;
      
      protected var §7!T§:int = 0;
      
      protected var §`"a§:Boolean = false;
      
      protected var §-!f§:§;+§;
      
      public function §=!s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§;+§, param6:Sprite, param7:§[a§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.getNumberProperty("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.getNumberProperty("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.getNumberProperty("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §3"X§.§;"l§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§3"9§ = _loc11_;
         this.§!!0§ = _loc10_;
         this.§8"x§ = _loc12_;
         var _loc13_:Number = param5.getNumberProperty("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§7!T§ = _loc13_;
         this.§`"a§ = param5.§'"]§("turboLaser");
         this.§-!f§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§-!f§.getProperty("createSound"))
         {
            this.§-!f§.§0#+§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§3"9§;
      }
      
      public function get §1?§() : Number
      {
         return this.§8"x§;
      }
      
      public function get §98§() : int
      {
         return this.§7!T§;
      }
      
      public function get §="§() : Number
      {
         if(this.§3"9§ < this.§!!0§)
         {
            return this.§3"9§;
         }
         return this.§!!0§;
      }
      
      public function get §&!G§() : Boolean
      {
         return !this.§`"a§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§-!f§.getProperty("deflectionSound");
         if(_loc3_)
         {
            this.§-!f§.§0#+§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§3"9§ -= param1;
            if(this.§3"9§ < 0)
            {
               this.§3"9§ = 0;
            }
         }
      }
      
      public function §2!^§(param1:§!z§) : Number
      {
         return this.§-!f§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §3!N§() : String
      {
         if(this.§-!f§.§+#$§ > 0)
         {
            return this.§-!f§.§9"V§(0);
         }
         return null;
      }
      
      public function get §75§() : String
      {
         if(this.§-!f§.§,=§ > 0)
         {
            return this.§-!f§.§ " §(0);
         }
         return null;
      }
   }
}
