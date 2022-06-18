package §6"u§
{
   import §#g§.§8§;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§ !=§;
   import §;!=§.§'#N§;
   
   public class §!##§ extends §3#g§
   {
       
      
      protected var §6I§:Number = 0.0;
      
      protected var §2#V§:Number = 0.0;
      
      protected var §;#%§:Number = 0.0;
      
      protected var §9#D§:int = 0;
      
      protected var §-"S§:Boolean = false;
      
      protected var §]h§:§ !=§;
      
      public function §!##§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§ !=§, param6:Sprite, param7:§7b§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§!! §("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§!! §("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§!! §("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §8#3§.§2K§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§6I§ = _loc11_;
         this.§2#V§ = _loc10_;
         this.§;#%§ = _loc12_;
         var _loc13_:Number = param5.§!! §("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§9#D§ = _loc13_;
         this.§-"S§ = param5.§^#d§("turboLaser");
         this.§]h§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§]h§.§2!t§("createSound"))
         {
            this.§]h§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§6I§;
      }
      
      public function get §'h§() : Number
      {
         return this.§;#%§;
      }
      
      public function get §3X§() : int
      {
         return this.§9#D§;
      }
      
      public function get §?7§() : Number
      {
         if(this.§6I§ < this.§2#V§)
         {
            return this.§6I§;
         }
         return this.§2#V§;
      }
      
      public function get §5$>§() : Boolean
      {
         return !this.§-"S§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§]h§.§2!t§("deflectionSound");
         if(_loc3_)
         {
            this.§]h§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§6I§ -= param1;
            if(this.§6I§ < 0)
            {
               this.§6I§ = 0;
            }
         }
      }
      
      public function §-#§(param1:§'#N§) : Number
      {
         return this.§]h§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §`!2§() : String
      {
         if(this.§]h§.§5!P§ > 0)
         {
            return this.§]h§.§"#Z§(0);
         }
         return null;
      }
      
      public function get §+#C§() : String
      {
         if(this.§]h§.§2"a§ > 0)
         {
            return this.§]h§.§;!e§(0);
         }
         return null;
      }
   }
}
