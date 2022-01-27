package §6"R§
{
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2BodyDef;
   import §1x§.b2FixtureDef;
   import §1x§.b2World;
   import §2",§.b2RevoluteJoint;
   import §2",§.b2RevoluteJointDef;
   import §2",§.b2WeldJoint;
   import §2",§.b2WeldJointDef;
   import §3"$§.§]!h§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §5!q§.§>o§;
   import §>P§.§3t§;
   import §>P§.§?"Q§;
   import §[!L§.b2MassData;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   
   public class §6M§ extends §'!Q§
   {
      
      private static const §8"C§:Number = 100;
       
      
      private var §]!n§:§%!0§;
      
      private var §]!<§:Sprite;
      
      private var §+"i§:Number;
      
      private var §%!F§:b2Vec2;
      
      private var §>!l§:Boolean = false;
      
      private var §[l§:b2WeldJoint;
      
      private var §9g§:Number;
      
      private var §%p§:b2Body;
      
      private var §'"u§:b2RevoluteJoint;
      
      private var §;!@§:§-i§;
      
      private var §&!^§:§-i§;
      
      private var §^!5§:Number = 0;
      
      private var §-!A§:Boolean = true;
      
      private var §0"N§:int;
      
      private var §%;§:§3t§;
      
      public function §6M§(param1:Sprite, param2:b2World, param3:§%!0§, param4:Number)
      {
         this.§]!n§ = param3;
         this.§9g§ = § !r§ = param4;
         var _loc5_:§^d§;
         (_loc5_ = new §^d§()).x = param3.§#"v§();
         _loc5_.y = param3.§2!;§();
         _loc5_.angle = param4;
         this.§%;§ = new §3t§(§>o§.§2C§);
         super(param1,param2,null,_loc5_);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("LASERDROID_01");
         this.§;!@§ = new §-i§(_loc1_.texture);
         this.§;!@§.x = -_loc1_.pivotX;
         this.§;!@§.y = -_loc1_.pivotY;
         var _loc2_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("LASERDROID_02");
         this.§&!^§ = new §-i§(_loc2_.texture);
         this.§&!^§.x = -_loc2_.pivotX;
         this.§&!^§.y = -_loc2_.pivotY;
         this.§]!<§ = new Sprite();
         this.§]!<§.addChild(this.§;!@§);
         this.§]!<§.scaleX = this.§]!<§.scaleY = §>o§.§2!?§;
         sprite.addChild(this.§]!<§);
         this.§+"i§ = §>o§.§0"h§ / 2;
         this.§%!F§ = new b2Vec2();
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_dynamicBody;
         _loc3_.position.SetV(this.§]!n§.§?"Z§().GetPosition());
         this.§%p§ = mWorld.CreateBody(_loc3_);
         var _loc4_:b2MassData;
         (_loc4_ = new b2MassData()).§=#%§ = 1e-7;
         this.§%p§.§?!W§(_loc4_);
         var _loc5_:b2RevoluteJointDef;
         (_loc5_ = new b2RevoluteJointDef()).§!!x§ = this.§]!n§.§?"Z§();
         _loc5_.§%!x§ = this.§%p§;
         _loc5_.collideConnected = false;
         _loc5_.§2"g§.Set(0,0);
         _loc5_.§#l§.Set(0,0);
         this.§'"u§ = b2RevoluteJoint(mWorld.CreateJoint(_loc5_));
         var _loc6_:b2BodyDef;
         (_loc6_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc6_.position.Set(this.§]!n§.§?"Z§().GetPosition().x + §>o§.§@"f§ * this.§]!n§.scale,this.§]!n§.§?"Z§().GetPosition().y);
         §#"R§ = mWorld.CreateBody(_loc6_);
         §#"R§.SetUserData(this);
         var _loc7_:b2FixtureDef;
         (_loc7_ = new b2FixtureDef()).shape = this.§%;§.getB2Shape();
         _loc7_.density = 1e-8;
         _loc7_.friction = §>o§.§7!r§;
         _loc7_.restitution = §>o§.§8"f§;
         §<!$§ = §#"R§.CreateFixture(_loc7_);
         var _loc8_:b2WeldJointDef;
         (_loc8_ = new b2WeldJointDef()).collideConnected = false;
         _loc8_.§8!s§(this.§%p§,§#"R§,this.§%p§.GetPosition());
         this.§[l§ = b2WeldJoint(mWorld.CreateJoint(_loc8_));
         this.§%p§.SetAngle(§>o§.§`!]§);
         this.§ case§();
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§ !Q§ = null;
         this.§+"i§ -= param1;
         if(!this.§-!A§ && this.§0"N§ <= 0 && this.§+"i§ <= 0)
         {
            this.§>!l§ = true;
         }
         if(this.§>!l§)
         {
            this.§8"W§(param2);
            return;
         }
         super.update(param1,param2);
         if(this.§+"i§ <= 0)
         {
            if(this.§%p§)
            {
               _loc3_ = §>o§.§'!R§ + this.§%p§.GetAngle() + Math.PI / 2;
            }
            else
            {
               _loc3_ = §>o§.§'!R§ + §#"R§.GetAngle() + Math.PI / 2;
            }
            _loc4_ = !!this.§-!A§ ? Number(§>o§.§ !`§) : Number(1);
            if(_loc5_ = param2 as § !Q§)
            {
               _loc5_.§^"L§("BLOCK_LAZER_SHOT_RED",§#"v§() + Math.cos(_loc3_) * _loc4_,§2!;§() + Math.sin(_loc3_) * _loc4_,_loc3_ * (180 / Math.PI),§>o§.§>",§,true);
            }
            this.§+"i§ += §>o§.§0"h§;
            this.§]!<§.removeChild(this.§;!@§);
            this.§]!<§.addChild(this.§&!^§);
            this.§^!5§ = §8"C§;
            if(!this.§-!A§)
            {
               --this.§0"N§;
            }
         }
         else if(this.§&!^§.parent == this.§]!<§)
         {
            this.§^!5§ -= param1;
            if(this.§^!5§ <= 0)
            {
               this.§]!<§.removeChild(this.§&!^§);
               this.§]!<§.addChild(this.§;!@§);
            }
         }
         if(this.§-!A§ && (this.§]!n§.health != this.§]!n§.healthMax || this.§]!n§.§?"Z§() == null))
         {
            this.§'"'§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§-!A§ && this.§]!n§.§?"Z§() == null)
         {
            this.§'"'§();
         }
         super.render(param1,param2,param3);
         this.§ case§();
      }
      
      private function § case§() : void
      {
         if(this.§-!A§)
         {
            this.§%p§.SetAngle(this.§]!n§.§4F§() - Math.PI / 2);
         }
         this.§]!<§.x = §#"v§() / §3"X§.§;"l§;
         this.§]!<§.y = §2!;§() / §3"X§.§;"l§;
         this.§]!<§.rotation = Math.PI + §?"Z§().GetAngle() + §>o§.§'!R§;
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         if(param1 == this.§]!n§)
         {
            return;
         }
         if(this.§]!n§ is §<"D§ && param1 is §<"D§)
         {
            return;
         }
         if(!(param1 is §4!w§))
         {
            return;
         }
         if(this.§-!A§)
         {
            this.§'"'§();
         }
      }
      
      private function §'"'§() : void
      {
         this.§-!A§ = false;
         mWorld.DestroyJoint(this.§[l§);
         mWorld.DestroyJoint(this.§'"u§);
         mWorld.DestroyBody(this.§%p§);
         this.§[l§ = null;
         this.§%p§ = null;
         this.§'"u§ = null;
         §<!$§.SetDensity(1);
         §#"R§.ResetMassData();
         §#"R§.SetAwake(true);
         this.§0"N§ = §>o§.§;"x§;
      }
      
      private function §8"W§(param1:§""M§) : void
      {
         param1.§7"§(§#"v§(),§2!;§(),§>o§.§7j§,§>o§.§9?§,§>o§.§-!z§,§>o§.§7"?§);
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         param1.addObject("explosionBuff",_loc2_,_loc3_,0,§super§.§4"D§,false,false,false,1,true);
         param1.§ "p§("droidBuff",_loc2_,_loc3_,0,§super§.§4"D§,3,3,1,true);
         param1.removeObject(this,false);
      }
      
      override public function dispose() : void
      {
         if(this.§-!A§)
         {
            this.§'"'§();
         }
         super.dispose();
      }
      
      override public function get shape() : §?"Q§
      {
         return this.§%;§;
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§-!A§)
         {
            return false;
         }
         return super.applyGravity();
      }
   }
}
