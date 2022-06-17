package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2BodyDef;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.ErrorPopup;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §?Z§ extends §8"J§
   {
      
      private static const §!!l§:int = 30;
      
      private static const §&! §:Number = 0.2;
      
      private static const §'s§:String = "AmmoChannel";
      
      protected static const §`!7§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §2#j§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §<"$§:§4$'§;
      
      private var §<"y§:Boolean = true;
      
      private var §'!h§:Number = 100;
      
      private var §4"<§:Boolean = false;
      
      public function §?Z§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         §^#v§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §8$1§ = true;
         §[#%§.§8!3§(§'s§,§!!l§,§&! §);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §!"p§();
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§<"$§ && this.§<"y§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore(),param5);
      }
      
      public function set §,L§(param1:§4$'§) : void
      {
         if(this.§<"$§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Parent cannon aready set."));
         }
         this.§<"$§ = param1;
      }
      
      public function §@N§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§?#0§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         if(!(param1 == this.§<"$§ && this.§'!h§ > 0))
         {
            this.§4"<§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         §%"T§.§;`§.particles.addSimpleParticle(this.§2#j§,this.§2#j§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §'"u§.§'#e§,this.y * §'"u§.§'#e§,1000,"",0,0,0.5,8,10,1,15,true);
         §[#%§.playSound(§`!7§[Math.floor(Math.random() * §`!7§.length)],§'s§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§`#+§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §;"O§();
         if(this.§'!h§ > 0)
         {
            this.§'!h§ -= param1;
         }
         else if(this.§<"y§)
         {
            this.§<"y§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§?#0§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§4"<§)
         {
            health = 0;
         }
      }
      
      public function get §,L§() : §4$'§
      {
         return this.§<"$§;
      }
      
      public function get §9[§() : Number
      {
         return this.§'!h§;
      }
   }
}
