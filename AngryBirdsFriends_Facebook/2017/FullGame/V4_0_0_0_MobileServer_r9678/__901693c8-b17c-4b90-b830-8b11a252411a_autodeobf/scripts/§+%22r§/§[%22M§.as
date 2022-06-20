package §+"r§
{
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §7!j§.§8#B§;
   import §7"&§.§2p§;
   import §>!5§.§#-§;
   
   public class §["M§ extends §##7§
   {
       
      
      protected var §3#2§:Number = 0.0;
      
      protected var §=#b§:Number = 0.0;
      
      protected var §`b§:Number = 0.0;
      
      protected var §[D§:int = 0;
      
      protected var §-!k§:Boolean = false;
      
      protected var §8"3§:§2p§;
      
      public function §["M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§2p§, param6:Sprite, param7:§8#B§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§6-§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§6-§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§6-§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §!!S§.§,"3§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§3#2§ = _loc11_;
         this.§=#b§ = _loc10_;
         this.§`b§ = _loc12_;
         var _loc13_:Number = param5.§6-§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§[D§ = _loc13_;
         this.§-!k§ = param5.§<"G§("turboLaser");
         this.§8"3§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§8"3§.§=#a§("createSound"))
         {
            this.§8"3§.§51§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§3#2§;
      }
      
      public function get §-"b§() : Number
      {
         return this.§`b§;
      }
      
      public function get § "M§() : int
      {
         return this.§[D§;
      }
      
      public function get §>#M§() : Number
      {
         if(this.§3#2§ < this.§=#b§)
         {
            return this.§3#2§;
         }
         return this.§=#b§;
      }
      
      public function get § " §() : Boolean
      {
         return !this.§-!k§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§8"3§.§=#a§("deflectionSound");
         if(_loc3_)
         {
            this.§8"3§.§51§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§3#2§ -= param1;
            if(this.§3#2§ < 0)
            {
               this.§3#2§ = 0;
            }
         }
      }
      
      public function §=!%§(param1:§#-§) : Number
      {
         return this.§8"3§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get § !0§() : String
      {
         if(this.§8"3§.§-#E§ > 0)
         {
            return this.§8"3§.§4#S§(0);
         }
         return null;
      }
      
      public function get §8!U§() : String
      {
         if(this.§8"3§.§!$"§ > 0)
         {
            return this.§8"3§.§'i§(0);
         }
         return null;
      }
   }
}
