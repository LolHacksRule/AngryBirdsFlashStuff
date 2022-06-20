package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §>2§.§!6§;
   import §>z§.ErrorPopup;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2BodyDef;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §!"A§ extends §;!U§
   {
      
      private static const §^!m§:int = 30;
      
      private static const §8$7§:Number = 0.2;
      
      private static const §%!O§:String = "AmmoChannel";
      
      protected static const §#!e§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §,e§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §+x§:§<!R§;
      
      private var §3$4§:Boolean = true;
      
      private var §^$#§:Number = 100;
      
      private var §#"R§:Boolean = false;
      
      public function §!"A§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         §!"N§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §9#4§ = true;
         §3Z§.§'#E§(§%!O§,§^!m§,§8$7§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         § #g§();
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§+x§ && this.§3$4§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore(),param5);
      }
      
      public function set §"#v§(param1:§<!R§) : void
      {
         if(this.§+x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Parent cannon aready set."));
         }
         this.§+x§ = param1;
      }
      
      public function §!§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§5$8§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         if(!(param1 == this.§+x§ && this.§^$#§ > 0))
         {
            this.§#"R§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         §7n§.§6#K§.particles.addSimpleParticle(this.§,e§,this.§,e§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §!6§.§[#v§,this.y * §!6§.§[#v§,1000,"",0,0,0.5,8,10,1,15,true);
         §3Z§.playSound(§#!e§[Math.floor(Math.random() * §#!e§.length)],§%!O§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§`#J§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §`"Y§();
         if(this.§^$#§ > 0)
         {
            this.§^$#§ -= param1;
         }
         else if(this.§3$4§)
         {
            this.§3$4§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§5$8§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§#"R§)
         {
            health = 0;
         }
      }
      
      public function get §"#v§() : §<!R§
      {
         return this.§+x§;
      }
      
      public function get §5"'§() : Number
      {
         return this.§^$#§;
      }
   }
}
