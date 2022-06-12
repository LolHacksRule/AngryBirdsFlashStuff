package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   import §6!3§.§;!U§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §@!S§.b2Fixture;
   import §`#@§.§7n§;
   
   public class §7#n§ extends §&"+§
   {
       
      
      private var §-"T§:Number = 0;
      
      private const §]"0§:Number = 1500;
      
      private var §`$%§:Number = 0;
      
      private const §]"V§:Number = 250;
      
      private const §"!f§:Number = 150;
      
      private var §##a§:§;!U§;
      
      public function §7#n§(param1:§^"[§, param2:§3$§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §'$5§ += 0.5;
         if(§'$5§ > 360)
         {
            §'$5§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§##a§)
         {
            this.§##a§.§!"N§ = true;
            if(this.§-"T§ <= this.§]"0§)
            {
               if(this.§##a§.getBody())
               {
                  if(this.§-"T§ == 0)
                  {
                     §3Z§.§8!K§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§`$%§ == 0)
                  {
                     this.§=#D§();
                  }
                  this.§`$%§ += param1;
                  if(this.§`$%§ >= this.§"!f§)
                  {
                     this.§`$%§ = 0;
                  }
                  this.§##a§.getBody().SetAwake(true);
                  this.§##a§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§-"T§ += param1;
            }
            this.§##a§.§!"N§ = false;
         }
         else if(displayObject.visible)
         {
            §7n§.§6#K§.mLevelEngine.mWorld.§ "§(this.§[!l§,new b2Vec2(§["d§,§%#z§));
         }
         return true;
      }
      
      private function §[!l§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§;!U§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §;!U§;
            if(_loc3_ && !this.§##a§)
            {
               if(_loc3_.§4"v§() || _loc3_.§5!u§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§##a§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §=#D§() : void
      {
         (§7n§.§6#K§.particles as §%6§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,this.§##a§.getBody().GetPosition().x,this.§##a§.getBody().GetPosition().y,this.§]"V§,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §[?§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
