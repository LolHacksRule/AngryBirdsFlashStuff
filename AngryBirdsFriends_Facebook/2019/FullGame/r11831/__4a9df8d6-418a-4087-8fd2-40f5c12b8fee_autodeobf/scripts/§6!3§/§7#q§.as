package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §>2§.§!6§;
   import §>2§.§"§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §7#q§ extends §6"d§
   {
      
      private static const §3!D§:Number = 500;
      
      private static const §3"D§:int = 5;
      
      private static const §[#h§:Number = 120;
       
      
      private var §"$§:Boolean;
      
      private var §9#9§:Number = 0;
      
      private var §6"A§:int = 0;
      
      private var §&#A§:Boolean = false;
      
      public function §7#q§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§8$B§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §"#1§.§2!X§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §,"S§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§6!9§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param1 >= §[#h§)
         {
            this.§&#A§ = true;
         }
         else
         {
            this.§&#A§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         super.collidedWith(param1);
         if(!this.§"$§)
         {
            this.§"$§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         this.§9#9§ += param1;
         if(this.§9#9§ >= §3!D§ && this.§"$§ && this.§6"A§ < §3"D§ && this.§&#A§)
         {
            ++this.§6"A§;
            this.§"$§ = false;
            this.§9#9§ = 0;
            this.§+!j§();
         }
      }
      
      public function §+!j§() : void
      {
         var _loc1_:Number = x * §!6§.§[#v§;
         var _loc2_:Number = y * §!6§.§[#v§;
         §%6§(§7n§.§6#K§.particles).§+!j§(_loc1_,_loc2_);
      }
   }
}
