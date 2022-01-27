package §>"-§
{
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§!!O§;
   import §?!<§.§'!1§;
   import §[,§.§1d§;
   
   public class §3C§ extends §7e§
   {
       
      
      protected var §@!i§:Number = 0.0;
      
      protected var §#R§:Number = 0.0;
      
      protected var §3!;§:Number = 0.0;
      
      protected var §45§:int = 0;
      
      protected var §9!-§:Boolean = false;
      
      protected var §00§:§!!O§;
      
      public function §3C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§!!O§, param6:Sprite, param7:§]!U§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§0f§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§0f§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§0f§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §'!1§.§<!@§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§@!i§ = _loc11_;
         this.§#R§ = _loc10_;
         this.§3!;§ = _loc12_;
         var _loc13_:Number = param5.§0f§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§45§ = _loc13_;
         this.§9!-§ = param5.§!!u§("turboLaser");
         this.§00§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§00§.§[D§("createSound"))
         {
            this.§00§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§@!i§;
      }
      
      public function get §1O§() : Number
      {
         return this.§3!;§;
      }
      
      public function get §2!U§() : int
      {
         return this.§45§;
      }
      
      public function get §6"D§() : Number
      {
         if(this.§@!i§ < this.§#R§)
         {
            return this.§@!i§;
         }
         return this.§#R§;
      }
      
      public function get §0!K§() : Boolean
      {
         return !this.§9!-§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§00§.§[D§("deflectionSound");
         if(_loc3_)
         {
            this.§00§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§@!i§ -= param1;
            if(this.§@!i§ < 0)
            {
               this.§@!i§ = 0;
            }
         }
      }
      
      public function §-H§(param1:§1d§) : Number
      {
         return this.§00§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §7u§() : String
      {
         if(this.§00§.§4!0§ > 0)
         {
            return this.§00§.§1!6§(0);
         }
         return null;
      }
      
      public function get §="2§() : String
      {
         if(this.§00§.§=0§ > 0)
         {
            return this.§00§.§6!§(0);
         }
         return null;
      }
   }
}
