package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2BodyDef;
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §?P§.ErrorPopup;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §?#d§ extends §4!y§
   {
      
      private static const §!"9§:int = 30;
      
      private static const §;"i§:Number = 0.2;
      
      private static const §<"f§:String = "AmmoChannel";
      
      protected static const §+#X§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §?"1§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §"#5§:§;#E§;
      
      private var §&!W§:Boolean = true;
      
      private var §^I§:Number = 100;
      
      private var §#!g§:Boolean = false;
      
      public function §?#d§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         §[#x§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §=#]§ = true;
         §!"p§.§5#4§(§<"f§,§!"9§,§;"i§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §1x§();
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(param3 == this.§"#5§ && this.§&!W§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore());
      }
      
      public function set §]!9§(param1:§;#E§) : void
      {
         if(this.§"#5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Parent cannon aready set."));
         }
         this.§"#5§ = param1;
      }
      
      public function §-"@§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§]#s§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         if(!(param1 == this.§"#5§ && this.§^I§ > 0))
         {
            this.§#!g§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         §3#U§.§#$4§.particles.addSimpleParticle(this.§?"1§,this.§?"1§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §%!q§.§6q§,this.y * §%!q§.§6q§,1000,"",0,0,0.5,8,10,1,15,true);
         §!"p§.playSound(§+#X§[Math.floor(Math.random() * §+#X§.length)],§<"f§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§6!t§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §#"X§();
         if(this.§^I§ > 0)
         {
            this.§^I§ -= param1;
         }
         else if(this.§&!W§)
         {
            this.§&!W§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§]#s§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§#!g§)
         {
            health = 0;
         }
      }
      
      public function get §]!9§() : §;#E§
      {
         return this.§"#5§;
      }
      
      public function get §9"$§() : Number
      {
         return this.§^I§;
      }
   }
}
