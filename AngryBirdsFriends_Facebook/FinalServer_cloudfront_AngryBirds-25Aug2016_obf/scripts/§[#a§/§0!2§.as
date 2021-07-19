package §[#a§
{
   import §,#L§.§!#%§;
   import §52§.§#!,§;
   import §52§.§#%§;
   import §9$§.Sprite;
   import §=!7§.§ #f§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §0!2§ extends §`!!§
   {
      
      private static const §4!h§:Number = 500;
      
      private static const §2!x§:int = 5;
      
      private static const §%!T§:Number = 120;
       
      
      private var §]"K§:Boolean;
      
      private var §&"D§:Number = 0;
      
      private var §4#B§:int = 0;
      
      private var §9#[§:Boolean = false;
      
      public function §0!2§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§7!O§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §#%§.§&"y§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §3#"§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=$4§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(param1 >= §%!T§)
         {
            this.§9#[§ = true;
         }
         else
         {
            this.§9#[§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         super.collidedWith(param1);
         if(!this.§]"K§)
         {
            this.§]"K§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         this.§&"D§ += param1;
         if(this.§&"D§ >= §4!h§ && this.§]"K§ && this.§4#B§ < §2!x§ && this.§9#[§)
         {
            ++this.§4#B§;
            this.§]"K§ = false;
            this.§&"D§ = 0;
            this.§]#N§();
         }
      }
      
      public function §]#N§() : void
      {
         var _loc1_:Number = x * §#!,§.§?$#§;
         var _loc2_:Number = y * §#!,§.§?$#§;
         § #f§(§>"$§.§3#'§.particles).§]#N§(_loc1_,_loc2_);
      }
   }
}
