package §-!!§
{
   import § !D§.§'"u§;
   import § !D§.§4B§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%A§.§]#e§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §>#3§ extends §1!4§
   {
      
      private static const §%o§:Number = 500;
      
      private static const §9"9§:int = 5;
      
      private static const §7Q§:Number = 120;
       
      
      private var §&"K§:Boolean;
      
      private var §>S§:Number = 0;
      
      private var §@$+§:int = 0;
      
      private var §]"h§:Boolean = false;
      
      public function §>#3§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function addTrail(param1:§ #'§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = super.addTrail(param1);
         if(_loc2_)
         {
            §4B§.§8!l§(getBody().GetPosition().x,getBody().GetPosition().y,0,3,10);
            if(Math.random() < §8O§)
            {
               _loc3_ = -Math.PI / 2;
               _loc4_ = Math.random();
               param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§'Y§.getParticleMaterialFromEngineMaterial(itemName),_loc4_ * Math.cos(_loc3_) * scale,-_loc4_ * Math.sin(_loc3_) * scale,5,_loc4_ * 20,Math.sqrt(scale));
            }
         }
         return _loc2_;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param1 >= §7Q§)
         {
            this.§]"h§ = true;
         }
         else
         {
            this.§]"h§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         super.collidedWith(param1);
         if(!this.§&"K§)
         {
            this.§&"K§ = true;
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         this.§>S§ += param1;
         if(this.§>S§ >= §%o§ && this.§&"K§ && this.§@$+§ < §9"9§ && this.§]"h§)
         {
            ++this.§@$+§;
            this.§&"K§ = false;
            this.§>S§ = 0;
            this.§>! §();
         }
      }
      
      public function §>! §() : void
      {
         var _loc1_:Number = x * §'"u§.§'#e§;
         var _loc2_:Number = y * §'"u§.§'#e§;
         §]#e§(§%"T§.§;`§.particles).§>! §(_loc1_,_loc2_);
      }
   }
}
