package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2BodyDef;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import §?Q§.ErrorPopup;
   
   public class §@#^§ extends §>"G§
   {
      
      private static const §?"i§:int = 30;
      
      private static const §4#U§:Number = 0.2;
      
      private static const §@!Q§:String = "AmmoChannel";
      
      protected static const §'#&§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §@O§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §;R§:§'$,§;
      
      private var §=$C§:Boolean = true;
      
      private var §!" §:Number = 100;
      
      private var §[!Y§:Boolean = false;
      
      public function §@#^§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         §-##§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §;N§ = true;
         § b§.§%#C§(§@!Q§,§?"i§,§4#U§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §2#A§();
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§;R§ && this.§=$C§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore(),param5);
      }
      
      public function set §]#"§(param1:§'$,§) : void
      {
         if(this.§;R§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Parent cannon aready set."));
         }
         this.§;R§ = param1;
      }
      
      public function §#!-§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§<C§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         if(!(param1 == this.§;R§ && this.§!" § > 0))
         {
            this.§[!Y§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         §]$?§.§2#§.particles.addSimpleParticle(this.§@O§,this.§@O§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §8#3§.§2K§,this.y * §8#3§.§2K§,1000,"",0,0,0.5,8,10,1,15,true);
         § b§.playSound(§'#&§[Math.floor(Math.random() * §'#&§.length)],§@!Q§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§8!1§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §^"z§();
         if(this.§!" § > 0)
         {
            this.§!" § -= param1;
         }
         else if(this.§=$C§)
         {
            this.§=$C§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§<C§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§[!Y§)
         {
            health = 0;
         }
      }
      
      public function get §]#"§() : §'$,§
      {
         return this.§;R§;
      }
      
      public function get §;#@§() : Number
      {
         return this.§!" §;
      }
   }
}
