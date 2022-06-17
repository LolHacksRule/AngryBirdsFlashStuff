package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §?$#§.§^#j§;
   import §@"v§.§@$<§;
   
   public class §2$?§ extends §%"u§
   {
      
      private static const §0#%§:Number = 500;
      
      private static const § #M§:int = 5;
      
      private static const §#!w§:Number = 120;
       
      
      private var §4!X§:Boolean;
      
      private var §+#u§:Number = 0;
      
      private var §`H§:int = 0;
      
      private var §5"V§:Boolean = false;
      
      public function §2$?§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§>"T§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §^#j§.§0g§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §9$&§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`#I§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param1 >= §#!w§)
         {
            this.§5"V§ = true;
         }
         else
         {
            this.§5"V§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         super.collidedWith(param1);
         if(!this.§4!X§)
         {
            this.§4!X§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         this.§+#u§ += param1;
         if(this.§+#u§ >= §0#%§ && this.§4!X§ && this.§`H§ < § #M§ && this.§5"V§)
         {
            ++this.§`H§;
            this.§4!X§ = false;
            this.§+#u§ = 0;
            this.§^#0§();
         }
      }
      
      public function §^#0§() : void
      {
         var _loc1_:Number = x * §<d§.§6@§;
         var _loc2_:Number = y * §<d§.§6@§;
         §0E§(§+!p§.§`?§.particles).§^#0§(_loc1_,_loc2_);
      }
   }
}
