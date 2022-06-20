package §>!5§
{
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§#!L§;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§6#J§;
   import §^$1§.§7"6§;
   
   public class §+!c§ extends §!!L§
   {
      
      private static const §5"M§:Number = 500;
      
      private static const §;!m§:int = 5;
      
      private static const §@b§:Number = 120;
       
      
      private var §6"z§:Boolean;
      
      private var §!"R§:Number = 0;
      
      private var §-R§:int = 0;
      
      private var §^"t§:Boolean = false;
      
      public function §+!c§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§-!S§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §#!L§.§1G§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §^$"§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§2"^§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(param1 >= §@b§)
         {
            this.§^"t§ = true;
         }
         else
         {
            this.§^"t§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         super.collidedWith(param1);
         if(!this.§6"z§)
         {
            this.§6"z§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         this.§!"R§ += param1;
         if(this.§!"R§ >= §5"M§ && this.§6"z§ && this.§-R§ < §;!m§ && this.§^"t§)
         {
            ++this.§-R§;
            this.§6"z§ = false;
            this.§!"R§ = 0;
            this.§@"y§();
         }
      }
      
      public function §@"y§() : void
      {
         var _loc1_:Number = x * §!!S§.§,"3§;
         var _loc2_:Number = y * §!!S§.§,"3§;
         §6#J§(§!#A§.§#F§.particles).§@"y§(_loc1_,_loc2_);
      }
   }
}
