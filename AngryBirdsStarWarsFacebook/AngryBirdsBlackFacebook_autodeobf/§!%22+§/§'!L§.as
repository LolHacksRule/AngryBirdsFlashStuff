package §!"+§
{
   import §!!U§.Sprite;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §7P§.§7B§;
   import §^#>§.§#_§;
   
   public class §'!L§ extends §[#5§
   {
       
      
      protected var §@"i§:Number = 0.0;
      
      protected var §4#H§:Number = 0.0;
      
      protected var §70§:Number = 0.0;
      
      protected var §^^§:int = 0;
      
      protected var §="6§:Boolean = false;
      
      protected var §;B§:§8!D§;
      
      public function §'!L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§8!D§, param6:Sprite, param7:§>"G§, param8:Number, param9:Boolean)
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
         _loc12_ *= §#_§.§8]§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§@"i§ = _loc11_;
         this.§4#H§ = _loc10_;
         this.§70§ = _loc12_;
         var _loc13_:Number = param5.getNumberProperty("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§^^§ = _loc13_;
         this.§="6§ = param5.§@"8§("turboLaser");
         this.§;B§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§;B§.getProperty("createSound"))
         {
            this.§;B§.§-Z§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§@"i§;
      }
      
      public function get §@p§() : Number
      {
         return this.§70§;
      }
      
      public function get §&§() : int
      {
         return this.§^^§;
      }
      
      public function get §1!s§() : Number
      {
         if(this.§@"i§ < this.§4#H§)
         {
            return this.§@"i§;
         }
         return this.§4#H§;
      }
      
      public function get §3P§() : Boolean
      {
         return !this.§="6§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§;B§.getProperty("deflectionSound");
         if(_loc3_)
         {
            this.§;B§.§-Z§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§@"i§ -= param1;
            if(this.§@"i§ < 0)
            {
               this.§@"i§ = 0;
            }
         }
      }
      
      public function §!!>§(param1:§7B§) : Number
      {
         return this.§;B§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §,M§() : String
      {
         if(this.§;B§.§!a§ > 0)
         {
            return this.§;B§.§&V§(0);
         }
         return null;
      }
      
      public function get §!!`§() : String
      {
         if(this.§;B§.§-Q§ > 0)
         {
            return this.§;B§.§="§(0);
         }
         return null;
      }
   }
}
