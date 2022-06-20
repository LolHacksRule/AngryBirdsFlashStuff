package §^0§
{
   import § "v§.§4$4§;
   import § h§.ErrorPopup;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2BodyDef;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §3I§ extends §=Q§
   {
      
      private static const §=#1§:int = 30;
      
      private static const §0!r§:Number = 0.2;
      
      private static const §3"x§:String = "AmmoChannel";
      
      protected static const §9#b§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §`=§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §<#m§:§0!P§;
      
      private var §1t§:Boolean = true;
      
      private var §="I§:Number = 100;
      
      private var §5"A§:Boolean = false;
      
      public function §3I§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         §@"<§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §!"B§ = true;
         §4$4§.§<!A§(§3"x§,§=#1§,§0!r§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §3o§();
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§<#m§ && this.§1t§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore(),param5);
      }
      
      public function set §^8§(param1:§0!P§) : void
      {
         if(this.§<#m§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Parent cannon aready set."));
         }
         this.§<#m§ = param1;
      }
      
      public function §#n§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§;!^§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         if(!(param1 == this.§<#m§ && this.§="I§ > 0))
         {
            this.§5"A§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         §+!p§.§`?§.particles.addSimpleParticle(this.§`=§,this.§`=§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §<d§.§6@§,this.y * §<d§.§6@§,1000,"",0,0,0.5,8,10,1,15,true);
         §4$4§.playSound(§9#b§[Math.floor(Math.random() * §9#b§.length)],§3"x§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§#s§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §>"<§();
         if(this.§="I§ > 0)
         {
            this.§="I§ -= param1;
         }
         else if(this.§1t§)
         {
            this.§1t§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§;!^§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§5"A§)
         {
            health = 0;
         }
      }
      
      public function get §^8§() : §0!P§
      {
         return this.§<#m§;
      }
      
      public function get §2#T§() : Number
      {
         return this.§="I§;
      }
   }
}
