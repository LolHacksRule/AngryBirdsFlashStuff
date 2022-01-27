package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §1!2§.b2RevoluteJoint;
   import §1!2§.b2RevoluteJointDef;
   import §1!2§.b2WeldJoint;
   import §1!2§.b2WeldJointDef;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §4!$§.b2MassData;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§15§;
   import com.angrybirds.§,!q§;
   
   public class §=T§ extends §#m§
   {
      
      private static const §7"u§:Number = 100;
       
      
      private var §2#D§:§?"N§;
      
      private var §=7§:Sprite;
      
      private var §"!!§:Number;
      
      private var §&#'§:b2Vec2;
      
      private var §@"B§:Boolean = false;
      
      private var §^[§:b2WeldJoint;
      
      private var §0R§:Number;
      
      private var §#!Z§:b2Body;
      
      private var §6!_§:b2RevoluteJoint;
      
      private var §'G§:§#"t§;
      
      private var § #]§:§#"t§;
      
      private var §%U§:Number = 0;
      
      private var § !M§:Boolean = true;
      
      private var §+2§:int;
      
      private var §&"5§:§?#Q§;
      
      public function §=T§(param1:Sprite, param2:b2World, param3:§?"N§, param4:Number)
      {
         this.§2#D§ = param3;
         this.§0R§ = §<#W§ = param4;
         var _loc5_:§94§;
         (_loc5_ = new §94§()).x = param3.§'"8§();
         _loc5_.y = param3.§;">§();
         _loc5_.angle = param4;
         this.§&"5§ = new §?#Q§(§15§.§>!#§);
         super(param1,param2,null,_loc5_);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_01");
         this.§'G§ = new §#"t§(_loc1_.texture);
         this.§'G§.x = -_loc1_.pivotX;
         this.§'G§.y = -_loc1_.pivotY;
         var _loc2_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_02");
         this.§ #]§ = new §#"t§(_loc2_.texture);
         this.§ #]§.x = -_loc2_.pivotX;
         this.§ #]§.y = -_loc2_.pivotY;
         this.§=7§ = new Sprite();
         this.§=7§.addChild(this.§'G§);
         this.§=7§.scaleX = this.§=7§.scaleY = §15§.§ "e§;
         sprite.addChild(this.§=7§);
         this.§"!!§ = §15§.§,"2§ / 2;
         this.§&#'§ = new b2Vec2();
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_dynamicBody;
         _loc3_.position.SetV(this.§2#D§.§3!t§().GetPosition());
         this.§#!Z§ = mWorld.CreateBody(_loc3_);
         var _loc4_:b2MassData;
         (_loc4_ = new b2MassData()).§5"Z§ = 1e-7;
         this.§#!Z§.§@!R§(_loc4_);
         var _loc5_:b2RevoluteJointDef;
         (_loc5_ = new b2RevoluteJointDef()).§9"P§ = this.§2#D§.§3!t§();
         _loc5_.§continue§ = this.§#!Z§;
         _loc5_.collideConnected = false;
         _loc5_.§!"4§.Set(0,0);
         _loc5_.§#"B§.Set(0,0);
         this.§6!_§ = b2RevoluteJoint(mWorld.CreateJoint(_loc5_));
         var _loc6_:b2BodyDef;
         (_loc6_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc6_.position.Set(this.§2#D§.§3!t§().GetPosition().x + §15§.§[#F§ * this.§2#D§.scale,this.§2#D§.§3!t§().GetPosition().y);
         §04§ = mWorld.CreateBody(_loc6_);
         §04§.SetUserData(this);
         var _loc7_:b2FixtureDef;
         (_loc7_ = new b2FixtureDef()).shape = this.§&"5§.getB2Shape();
         _loc7_.density = 1e-8;
         _loc7_.friction = §15§.§`#1§;
         _loc7_.restitution = §15§.§`#B§;
         §^!L§ = §04§.CreateFixture(_loc7_);
         var _loc8_:b2WeldJointDef;
         (_loc8_ = new b2WeldJointDef()).collideConnected = false;
         _loc8_.§8#5§(this.§#!Z§,§04§,this.§#!Z§.GetPosition());
         this.§^[§ = b2WeldJoint(mWorld.CreateJoint(_loc8_));
         this.§#!Z§.SetAngle(§15§.§8!a§);
         this.§"r§();
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§,#Z§ = null;
         this.§"!!§ -= param1;
         if(!this.§ !M§ && this.§+2§ <= 0 && this.§"!!§ <= 0)
         {
            this.§@"B§ = true;
         }
         if(this.§@"B§)
         {
            this.§>!V§(param2);
            return;
         }
         super.update(param1,param2);
         if(this.§"!!§ <= 0)
         {
            if(this.§#!Z§)
            {
               _loc3_ = §15§.§#v§ + this.§#!Z§.GetAngle() + Math.PI / 2;
            }
            else
            {
               _loc3_ = §15§.§#v§ + §04§.GetAngle() + Math.PI / 2;
            }
            _loc4_ = !!this.§ !M§ ? Number(§15§.§?!y§) : Number(1);
            if(_loc5_ = param2 as §,#Z§)
            {
               _loc5_.§#!#§("BLOCK_LAZER_SHOT_RED",§'"8§() + Math.cos(_loc3_) * _loc4_,§;">§() + Math.sin(_loc3_) * _loc4_,_loc3_ * (180 / Math.PI),§15§.§4u§,true);
            }
            this.§"!!§ += §15§.§,"2§;
            this.§=7§.removeChild(this.§'G§);
            this.§=7§.addChild(this.§ #]§);
            this.§%U§ = §7"u§;
            if(!this.§ !M§)
            {
               --this.§+2§;
            }
         }
         else if(this.§ #]§.parent == this.§=7§)
         {
            this.§%U§ -= param1;
            if(this.§%U§ <= 0)
            {
               this.§=7§.removeChild(this.§ #]§);
               this.§=7§.addChild(this.§'G§);
            }
         }
         if(this.§ !M§ && (this.§2#D§.health != this.§2#D§.healthMax || this.§2#D§.§3!t§() == null))
         {
            this.§!K§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ !M§ && this.§2#D§.§3!t§() == null)
         {
            this.§!K§();
         }
         super.render(param1,param2,param3);
         this.§"r§();
      }
      
      private function §"r§() : void
      {
         if(this.§ !M§)
         {
            this.§#!Z§.SetAngle(this.§2#D§.§"#,§() - Math.PI / 2);
         }
         this.§=7§.x = §'"8§() / §#_§.§8]§;
         this.§=7§.y = §;">§() / §#_§.§8]§;
         this.§=7§.rotation = Math.PI + §3!t§().GetAngle() + §15§.§#v§;
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         if(param1 == this.§2#D§)
         {
            return;
         }
         if(this.§2#D§ is §@!8§ && param1 is §@!8§)
         {
            return;
         }
         if(!(param1 is §&#=§))
         {
            return;
         }
         if(this.§ !M§)
         {
            this.§!K§();
         }
      }
      
      private function §!K§() : void
      {
         this.§ !M§ = false;
         mWorld.DestroyJoint(this.§^[§);
         mWorld.DestroyJoint(this.§6!_§);
         mWorld.DestroyBody(this.§#!Z§);
         this.§^[§ = null;
         this.§#!Z§ = null;
         this.§6!_§ = null;
         §^!L§.SetDensity(1);
         §04§.ResetMassData();
         §04§.SetAwake(true);
         this.§+2§ = §15§.§7"m§;
      }
      
      private function §>!V§(param1:§;$§) : void
      {
         param1.§6#4§(§'"8§(),§;">§(),§15§.§8"G§,§15§.§!N§,§15§.§=!H§,§15§.§?!`§);
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         param1.addObject("explosionBuff",_loc2_,_loc3_,0,§;=§.§""3§,false,false,false,1,true);
         param1.§]#^§("droidBuff",_loc2_,_loc3_,0,§;=§.§""3§,3,3,1,true);
         param1.removeObject(this,false);
      }
      
      override public function dispose() : void
      {
         if(this.§ !M§)
         {
            this.§!K§();
         }
         super.dispose();
      }
      
      override public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§ !M§)
         {
            return false;
         }
         return super.applyGravity();
      }
   }
}
