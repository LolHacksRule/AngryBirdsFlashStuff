package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§!P§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7"o§.§>"r§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §7!w§ extends §1!n§
   {
      
      private static const §;!X§:Number = 500;
      
      private static const §?"g§:int = 5;
      
      private static const §3"m§:Number = 120;
       
      
      private var §,$2§:Boolean;
      
      private var §>W§:Number = 0;
      
      private var §;$;§:int = 0;
      
      private var §+# §:Boolean = false;
      
      public function §7!w§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§]!m§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §!P§.§%!0§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §?!c§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=,§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param1 >= §3"m§)
         {
            this.§+# § = true;
         }
         else
         {
            this.§+# § = false;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         super.collidedWith(param1);
         if(!this.§,$2§)
         {
            this.§,$2§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         this.§>W§ += param1;
         if(this.§>W§ >= §;!X§ && this.§,$2§ && this.§;$;§ < §?"g§ && this.§+# §)
         {
            ++this.§;$;§;
            this.§,$2§ = false;
            this.§>W§ = 0;
            this.§!"=§();
         }
      }
      
      public function §!"=§() : void
      {
         var _loc1_:Number = x * §8#3§.§2K§;
         var _loc2_:Number = y * §8#3§.§2K§;
         §>"r§(§]$?§.§2#§.particles).§!"=§(_loc1_,_loc2_);
      }
   }
}
