package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §7#D§ extends §="@§
   {
      
      private static const §-3§:int = 30;
      
      private static const §%O§:Number = 0.2;
      
      private static const §7"E§:String = "AmmoChannel";
      
      protected static var §1#s§:Array = ["Sound_Water_Cannon_Splash_1","Sound_Water_Cannon_Splash_2","Sound_Water_Cannon_Splash_3"];
       
      
      protected var §5R§:String = "PARTICLE_CANNON_SHOT";
      
      protected var §9#z§:§?!§;
      
      private var §4d§:Boolean = true;
      
      private var §9Y§:Number = 100;
      
      private var §77§:Boolean = false;
      
      public function §7#D§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         §]B§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §4$3§ = true;
         §#$+§.§9"]§(§7"E§,§-3§,§%O§);
      }
      
      public function shoot(param1:Number, param2:Number) : void
      {
         getBody().SetLinearVelocity(new b2Vec2(param1,param2));
         §8!2§();
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(param3 == this.§9#z§ && this.§4d§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      public function set §;"W§(param1:§?!§) : void
      {
         if(this.§9#z§)
         {
            throw new Error("Parent cannon already set.");
         }
         this.§9#z§ = param1;
      }
      
      public function §>!_§(param1:int) : void
      {
         var _loc2_:b2FilterData = new b2FilterData();
         _loc2_.§="%§ = param1;
         getBody().GetFixtureList().SetFilterData(_loc2_);
         getBody().SetForcedContactFiltering(true);
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         if(!(param1 == this.§9#z§ && this.§9Y§ > 0))
         {
            this.§77§ = true;
         }
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         §>"$§.§3#'§.particles.addSimpleParticle(this.§5R§,this.§5R§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §#!,§.§?$#§,this.y * §#!,§.§?$#§,1000,"",0,0,0.5,8,10,1,15,true);
         §#$+§.playSound(§1#s§[Math.floor(Math.random() * §1#s§.length)],§7"E§);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:b2FilterData = null;
         super.update(param1,param2);
         §7!2§();
         if(this.§9Y§ > 0)
         {
            this.§9Y§ -= param1;
         }
         else if(this.§4d§)
         {
            this.§4d§ = false;
            _loc3_ = new b2FilterData();
            _loc3_.§="%§ = 0;
            getBody().GetFixtureList().SetFilterData(_loc3_);
            getBody().SetForcedContactFiltering(false);
         }
         if(this.§77§)
         {
            health = 0;
         }
      }
      
      public function get §;"W§() : §?!§
      {
         return this.§9#z§;
      }
      
      public function get §%=§() : Number
      {
         return this.§9Y§;
      }
   }
}
