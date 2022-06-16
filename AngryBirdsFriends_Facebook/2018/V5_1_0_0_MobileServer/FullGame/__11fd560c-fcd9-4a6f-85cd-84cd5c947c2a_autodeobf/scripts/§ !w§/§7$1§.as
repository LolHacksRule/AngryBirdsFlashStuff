package § !w§
{
   import §8"L§.§5K§;
   import §8§.§,§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §7$1§ extends §[!D§
   {
       
      
      protected var §=s§:Number = 0.0;
      
      protected var §[!,§:Number = 0.0;
      
      protected var §0#5§:Number = 0.0;
      
      protected var §#!#§:int = 0;
      
      protected var §;"@§:Boolean = false;
      
      protected var §'!i§:§5K§;
      
      public function §7$1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§5K§, param6:Sprite, param7:§0$2§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§5$9§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§5$9§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§5$9§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §%!q§.§6q§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§=s§ = _loc11_;
         this.§[!,§ = _loc10_;
         this.§0#5§ = _loc12_;
         var _loc13_:Number = param5.§5$9§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§#!#§ = _loc13_;
         this.§;"@§ = param5.§%?§("turboLaser");
         this.§'!i§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§'!i§.§3$,§("createSound"))
         {
            this.§'!i§.§0#R§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§=s§;
      }
      
      public function get §!!j§() : Number
      {
         return this.§0#5§;
      }
      
      public function get §9"X§() : int
      {
         return this.§#!#§;
      }
      
      public function get §=#h§() : Number
      {
         if(this.§=s§ < this.§[!,§)
         {
            return this.§=s§;
         }
         return this.§[!,§;
      }
      
      public function get §]Z§() : Boolean
      {
         return !this.§;"@§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§'!i§.§3$,§("deflectionSound");
         if(_loc3_)
         {
            this.§'!i§.§0#R§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§=s§ -= param1;
            if(this.§=s§ < 0)
            {
               this.§=s§ = 0;
            }
         }
      }
      
      public function §2$9§(param1:§,#5§) : Number
      {
         return this.§'!i§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §^"l§() : String
      {
         if(this.§'!i§.§"#H§ > 0)
         {
            return this.§'!i§.§58§(0);
         }
         return null;
      }
      
      public function get §<!0§() : String
      {
         if(this.§'!i§.§<#&§ > 0)
         {
            return this.§'!i§.§7#x§(0);
         }
         return null;
      }
   }
}
