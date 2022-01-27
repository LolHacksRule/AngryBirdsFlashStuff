package §!r§
{
   import §!!k§.§'!j§;
   import §"§.§ !3§;
   import §"§.§;!E§;
   import §#g§.§'<§;
   import §#g§.§<b§;
   import §1!2§.b2MassData;
   import §7"A§.b2Vec2;
   import §=![§.b2RevoluteJoint;
   import §=![§.b2RevoluteJointDef;
   import §=![§.b2WeldJoint;
   import §=![§.b2WeldJointDef;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2BodyDef;
   import §>"_§.b2FixtureDef;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class § ""§ extends §]e§
   {
      
      private static const §+"c§:Number = 100;
       
      
      private var override:§;!T§;
      
      private var §=!c§:Sprite;
      
      private var §],§:Number;
      
      private var §?!V§:b2Vec2;
      
      private var §3%§:Boolean = false;
      
      private var §0$§:b2WeldJoint;
      
      private var §+"E§:Number;
      
      private var §="u§:b2Body;
      
      private var §6L§:b2RevoluteJoint;
      
      private var §<"0§:§,!u§;
      
      private var §,""§:§,!u§;
      
      private var §?!o§:Number = 0;
      
      private var §?!n§:Boolean = true;
      
      private var §7#&§:int;
      
      private var §04§:§<b§;
      
      public function § ""§(param1:Sprite, param2:b2World, param3:§;!T§, param4:Number)
      {
         this.override = param3;
         this.§+"E§ = §-T§ = param4;
         var _loc5_:§9v§;
         (_loc5_ = new §9v§()).x = param3.§"!r§();
         _loc5_.y = param3.§8#1§();
         _loc5_.angle = param4;
         this.§04§ = new §<b§(§ !3§.§;W§);
         super(param1,param2,null,_loc5_);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("LASERDROID_01");
         this.§<"0§ = new §,!u§(_loc1_.texture);
         this.§<"0§.x = -_loc1_.pivotX;
         this.§<"0§.y = -_loc1_.pivotY;
         var _loc2_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("LASERDROID_02");
         this.§,""§ = new §,!u§(_loc2_.texture);
         this.§,""§.x = -_loc2_.pivotX;
         this.§,""§.y = -_loc2_.pivotY;
         this.§=!c§ = new Sprite();
         this.§=!c§.addChild(this.§<"0§);
         this.§=!c§.scaleX = this.§=!c§.scaleY = § !3§.§&!K§;
         sprite.addChild(this.§=!c§);
         this.§],§ = § !3§.§2!'§ / 2;
         this.§?!V§ = new b2Vec2();
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_dynamicBody;
         _loc3_.position.SetV(this.override.§3"s§().GetPosition());
         this.§="u§ = mWorld.CreateBody(_loc3_);
         var _loc4_:b2MassData;
         (_loc4_ = new b2MassData()).§2"f§ = 1e-7;
         this.§="u§.§[T§(_loc4_);
         var _loc5_:b2RevoluteJointDef;
         (_loc5_ = new b2RevoluteJointDef()).§5"I§ = this.override.§3"s§();
         _loc5_.§[!K§ = this.§="u§;
         _loc5_.collideConnected = false;
         _loc5_.§?"y§.Set(0,0);
         _loc5_.§0d§.Set(0,0);
         this.§6L§ = b2RevoluteJoint(mWorld.CreateJoint(_loc5_));
         var _loc6_:b2BodyDef;
         (_loc6_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc6_.position.Set(this.override.§3"s§().GetPosition().x + § !3§.§6v§ * this.override.scale,this.override.§3"s§().GetPosition().y);
         §-#6§ = mWorld.CreateBody(_loc6_);
         §-#6§.SetUserData(this);
         var _loc7_:b2FixtureDef;
         (_loc7_ = new b2FixtureDef()).shape = this.§04§.getB2Shape();
         _loc7_.density = 1e-8;
         _loc7_.friction = § !3§.§-p§;
         _loc7_.restitution = § !3§.§!!H§;
         §&"B§ = §-#6§.CreateFixture(_loc7_);
         var _loc8_:b2WeldJointDef;
         (_loc8_ = new b2WeldJointDef()).collideConnected = false;
         _loc8_.§>D§(this.§="u§,§-#6§,this.§="u§.GetPosition());
         this.§0$§ = b2WeldJoint(mWorld.CreateJoint(_loc8_));
         this.§="u§.SetAngle(§ !3§.§!">§);
         this.§5"N§();
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§<!F§ = null;
         this.§],§ -= param1;
         if(!this.§?!n§ && this.§7#&§ <= 0 && this.§],§ <= 0)
         {
            this.§3%§ = true;
         }
         if(this.§3%§)
         {
            this.§<"S§(param2);
            return;
         }
         super.update(param1,param2);
         if(this.§],§ <= 0)
         {
            if(this.§="u§)
            {
               _loc3_ = § !3§.§-!W§ + this.§="u§.GetAngle() + Math.PI / 2;
            }
            else
            {
               _loc3_ = § !3§.§-!W§ + §-#6§.GetAngle() + Math.PI / 2;
            }
            _loc4_ = !!this.§?!n§ ? Number(§ !3§.§3#'§) : Number(1);
            if(_loc5_ = param2 as §<!F§)
            {
               _loc5_.§=-§("BLOCK_LAZER_SHOT_RED",§"!r§() + Math.cos(_loc3_) * _loc4_,§8#1§() + Math.sin(_loc3_) * _loc4_,_loc3_ * (180 / Math.PI),§ !3§.§1"L§,true);
            }
            this.§],§ += § !3§.§2!'§;
            this.§=!c§.removeChild(this.§<"0§);
            this.§=!c§.addChild(this.§,""§);
            this.§?!o§ = §+"c§;
            if(!this.§?!n§)
            {
               --this.§7#&§;
            }
         }
         else if(this.§,""§.parent == this.§=!c§)
         {
            this.§?!o§ -= param1;
            if(this.§?!o§ <= 0)
            {
               this.§=!c§.removeChild(this.§,""§);
               this.§=!c§.addChild(this.§<"0§);
            }
         }
         if(this.§?!n§ && (this.override.health != this.override.healthMax || this.override.§3"s§() == null))
         {
            this.§"?§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§?!n§ && this.override.§3"s§() == null)
         {
            this.§"?§();
         }
         super.render(param1,param2,param3);
         this.§5"N§();
      }
      
      private function §5"N§() : void
      {
         if(this.§?!n§)
         {
            this.§="u§.SetAngle(this.override.§<"g§() - Math.PI / 2);
         }
         this.§=!c§.x = §"!r§() / §;!E§.§0"?§;
         this.§=!c§.y = §8#1§() / §;!E§.§0"?§;
         this.§=!c§.rotation = Math.PI + §3"s§().GetAngle() + § !3§.§-!W§;
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         if(param1 == this.override)
         {
            return;
         }
         if(this.override is §`"w§ && param1 is §`"w§)
         {
            return;
         }
         if(!(param1 is §0N§))
         {
            return;
         }
         if(this.§?!n§)
         {
            this.§"?§();
         }
      }
      
      private function §"?§() : void
      {
         this.§?!n§ = false;
         mWorld.DestroyJoint(this.§0$§);
         mWorld.DestroyJoint(this.§6L§);
         mWorld.DestroyBody(this.§="u§);
         this.§0$§ = null;
         this.§="u§ = null;
         this.§6L§ = null;
         §&"B§.SetDensity(1);
         §-#6§.ResetMassData();
         §-#6§.SetAwake(true);
         this.§7#&§ = § !3§.§>!u§;
      }
      
      private function §<"S§(param1:§'=§) : void
      {
         param1.§?#6§(§"!r§(),§8#1§(),§ !3§.§6#6§,§ !3§.§0!+§,§ !3§.§ !,§,§ !3§.§5"b§);
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         param1.addObject("explosionBuff",_loc2_,_loc3_,0,§9"f§.§["_§,false,false,false,1,true);
         param1.§]1§("droidBuff",_loc2_,_loc3_,0,§9"f§.§["_§,3,3,1,true);
         param1.removeObject(this,false);
      }
      
      override public function dispose() : void
      {
         if(this.§?!n§)
         {
            this.§"?§();
         }
         super.dispose();
      }
      
      override public function get shape() : §'<§
      {
         return this.§04§;
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§?!n§)
         {
            return false;
         }
         return super.applyGravity();
      }
   }
}
