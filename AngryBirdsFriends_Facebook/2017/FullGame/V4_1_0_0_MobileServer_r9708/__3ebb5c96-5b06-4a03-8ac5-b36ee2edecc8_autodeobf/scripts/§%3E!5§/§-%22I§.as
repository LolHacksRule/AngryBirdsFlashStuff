package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §1!+§.b2BodyDef;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §-"I§ extends §^"9§
   {
      
      private static const §;"I§:int = 30;
      
      private static const §;!h§:Number = 0.2;
      
      private static const §>"z§:String = "AmmoChannel";
      
      protected static const §'#o§:Array = ["ABF_11_Water_Cannon_Splash_01","ABF_11_Water_Cannon_Splash_02","ABF_11_Water_Cannon_Splash_03"];
       
      
      protected var §<P§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §]l§:§#"L§;
      
      private var §5#V§:Boolean = true;
      
      private var §`#u§:Number = 100;
      
      private var §'#D§:Boolean = false;
      
      public function §-"I§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         §0#l§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §7#p§ = true;
         §!#&§.§!"k§(§>"z§,§;"I§,§;!h§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §,"s§();
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(param3 == this.§]l§ && this.§5#V§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,isDamageAwardingScore());
      }
      
      public function set §-"g§(param1:§#"L§) : void
      {
         if(this.§]l§)
         {
            throw new Error("Parent cannon already set.");
         }
         this.§]l§ = param1;
      }
      
      public function §;R§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§4"Z§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         if(!(param1 == this.§]l§ && this.§`#u§ > 0))
         {
            this.§'#D§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         §!#A§.§#F§.particles.addSimpleParticle(this.§<P§,this.§<P§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §!!S§.§,"3§,this.y * §!!S§.§,"3§,1000,"",0,0,0.5,8,10,1,15,true);
         §!#&§.playSound(§'#o§[Math.floor(Math.random() * §'#o§.length)],§>"z§);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§="§ = true;
         return _loc3_;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §&#3§();
         if(this.§`#u§ > 0)
         {
            this.§`#u§ -= param1;
         }
         else if(this.§5#V§)
         {
            this.§5#V§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§4"Z§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§'#D§)
         {
            health = 0;
         }
      }
      
      public function get §-"g§() : §#"L§
      {
         return this.§]l§;
      }
      
      public function get §%#6§() : Number
      {
         return this.§`#u§;
      }
   }
}
