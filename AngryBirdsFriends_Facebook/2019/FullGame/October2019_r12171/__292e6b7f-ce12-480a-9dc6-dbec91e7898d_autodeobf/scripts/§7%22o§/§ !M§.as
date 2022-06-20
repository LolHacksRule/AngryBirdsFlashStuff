package §7"o§
{
   import §'#K§.b2Fixture;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   
   public class § !M§ extends §3#z§
   {
       
      
      private var §2!d§:Number = 0;
      
      private const §"B§:Number = 1500;
      
      private var §2H§:Number = 0;
      
      private const §4"3§:Number = 250;
      
      private const §9"Q§:Number = 150;
      
      private var §]#W§:§>"G§;
      
      public function § !M§(param1:§4#[§, param2:§#"^§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^]§ += 0.5;
         if(§^]§ > 360)
         {
            §^]§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§]#W§)
         {
            this.§]#W§.§-##§ = true;
            if(this.§2!d§ <= this.§"B§)
            {
               if(this.§]#W§.getBody())
               {
                  if(this.§2!d§ == 0)
                  {
                     § b§.§^"8§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§2H§ == 0)
                  {
                     this.§57§();
                  }
                  this.§2H§ += param1;
                  if(this.§2H§ >= this.§9"Q§)
                  {
                     this.§2H§ = 0;
                  }
                  this.§]#W§.getBody().SetAwake(true);
                  this.§]#W§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§2!d§ += param1;
            }
            this.§]#W§.§-##§ = false;
         }
         else if(displayObject.visible)
         {
            §]$?§.§2#§.mLevelEngine.mWorld.§9",§(this.§"!3§,new b2Vec2(§&$'§,§<#-§));
         }
         return true;
      }
      
      private function §"!3§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§>"G§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §>"G§;
            if(_loc3_ && !this.§]#W§)
            {
               if(_loc3_.§%@§() || _loc3_.§&"R§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§]#W§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §57§() : void
      {
         (§]$?§.§2#§.particles as §>"r§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,this.§]#W§.getBody().GetPosition().x,this.§]#W§.getBody().GetPosition().y,this.§4"3§,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §""5§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
