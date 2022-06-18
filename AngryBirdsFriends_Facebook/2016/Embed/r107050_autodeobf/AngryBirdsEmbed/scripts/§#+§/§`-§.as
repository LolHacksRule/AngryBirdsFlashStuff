package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §>!O§.§[+§;
   import §?!8§.§]f§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   
   public class §`-§ extends §9!E§
   {
       
      
      private var §#!K§:Number = 0;
      
      private const §'!3§:Number = 1500;
      
      private var §^3§:§]f§;
      
      public function §`-§(param1:§=E§, param2:§6!4§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §;!D§ += 0.5;
         if(§;!D§ > 360)
         {
            §;!D§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§^3§)
         {
            this.§^3§.§2z§ = true;
            if(this.§#!K§ <= this.§'!3§)
            {
               this.§#!K§ += param1;
               if(this.§^3§.§<!9§())
               {
                  this.§^3§.§<!9§().SetAwake(true);
                  this.§^3§.§<!9§().SetLinearVelocity(new b2Vec2(0,-10));
                  this.§5!"§();
                  §<2§.visible = false;
               }
            }
            if(this.§^3§.§<!9§())
            {
               this.§^3§.§<!9§().SetAwake(true);
            }
            this.§^3§.§2z§ = false;
         }
         else
         {
            §[+§.§,!&§.mLevelEngine.mWorld.QueryPoint(this.§;V§,new b2Vec2(§;!>§,§8<§));
         }
         return true;
      }
      
      private function §;V§(param1:b2Fixture) : Boolean
      {
         var _loc2_:§]f§ = null;
         if(param1.GetBody().GetUserData())
         {
            _loc2_ = param1.GetBody().GetUserData() as §]f§;
            if(!this.§^3§ && _loc2_ && _loc2_.§]!0§() && _loc2_.§7!#§.§4h§ != "MISC_FAIRY_BLOCK_4X4")
            {
               this.§^3§ = _loc2_;
               return false;
            }
            if(_loc2_ && (_loc2_.isTexture() || _loc2_.isGround()))
            {
               §7!B§.visible = false;
            }
         }
         return false;
      }
      
      private function §5!"§() : void
      {
         var _loc1_:§7#§ = §[+§.§,!&§.particles as §7#§;
         var _loc2_:Number = this.§^3§.§<!9§().GetPosition().x;
         _loc2_ += this.§0f§(-2,2);
         var _loc3_:Number = this.§^3§.§<!9§().GetPosition().y;
         _loc3_ += this.§0f§(-2,2);
         var _loc4_:Number = Math.random() * 1;
         _loc1_.§1!7§("PARTICLE_WONDERLAND_DUST",§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_,_loc3_,400,"",§@!<§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,20,_loc4_,0.5);
      }
      
      private function §0f§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
