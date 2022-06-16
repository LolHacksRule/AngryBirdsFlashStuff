package §8§#8
{
   import §!'§.§7#c§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §@0§.§2$2§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §]!k§ extends §+$!§
   {
      
      private static const §@#8§:Number = 500;
      
      private static const §5"k§:int = 5;
      
      private static const §6"V§:Number = 120;
       
      
      private var §6#J§:Boolean;
      
      private var §#"a§:Number = 0;
      
      private var §[@§:int = 0;
      
      private var §-#I§:Boolean = false;
      
      public function §]!k§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§&#V§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §2$2§.§2!8§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §&#4§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§@>§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(param1 >= §6"V§)
         {
            this.§-#I§ = true;
         }
         else
         {
            this.§-#I§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         super.collidedWith(param1);
         if(!this.§6#J§)
         {
            this.§6#J§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         this.§#"a§ += param1;
         if(this.§#"a§ >= §@#8§ && this.§6#J§ && this.§[@§ < §5"k§ && this.§-#I§)
         {
            ++this.§[@§;
            this.§6#J§ = false;
            this.§#"a§ = 0;
            this.§0$A§();
         }
      }
      
      public function §0$A§() : void
      {
         var _loc1_:Number = x * §%!q§.§6q§;
         var _loc2_:Number = y * §%!q§.§6q§;
         §7#c§(§3#U§.§#$4§.particles).§0$A§(_loc1_,_loc2_);
      }
   }
}
