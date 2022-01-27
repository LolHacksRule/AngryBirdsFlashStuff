package §6"R§
{
   import §,"v§.§@§;
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2BodyDef;
   import §1x§.b2FixtureDef;
   import §1x§.b2World;
   import §2",§.b2Joint;
   import §2",§.b2WeldJointDef;
   import §3"$§.§]!h§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §5!q§.§>o§;
   import §>P§.§3t§;
   import §>P§.§?"Q§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   
   public class §]"-§ extends §'!Q§
   {
      
      private static const §!"@§:Number = 2000;
      
      private static const §13§:Number = 600;
      
      private static const §["B§:Number = 1300;
       
      
      private var §]!<§:Sprite;
      
      private var §]!n§:§%!0§;
      
      private var §[l§:b2Joint;
      
      private var §-!A§:Boolean = true;
      
      private var §^"+§:Number = 2000;
      
      private var §+W§:§-i§;
      
      private var §?"e§:Vector.<§-i§>;
      
      private var § #%§:Sprite;
      
      private var §`E§:Boolean = false;
      
      private var §<!d§:Number;
      
      private var §%;§:§3t§;
      
      private var §!"J§:Sprite;
      
      public function §]"-§(param1:Sprite, param2:b2World, param3:§%!0§)
      {
         this.§]!n§ = param3;
         var _loc4_:§^d§;
         (_loc4_ = new §^d§()).x = this.§]!n§.x;
         _loc4_.y = this.§]!n§.y;
         this.§%;§ = new §3t§(§>o§.§+"[§);
         super(param1,param2,null,_loc4_);
         this.init();
      }
      
      public function get §,!r§() : §%!0§
      {
         return this.§]!n§;
      }
      
      private function init() : void
      {
         var _loc1_:Number = §>o§.§@S§ * (Math.PI / 180);
         var _loc2_:Number = this.§]!n§.levelItem.getItemWidth() * this.§]!n§.levelItem.scale / §3"X§.§;"l§;
         var _loc3_:Number = Math.cos(_loc1_) * (_loc2_ + §>o§.§2!6§);
         var _loc4_:Number = Math.sin(_loc1_) * (_loc2_ + §>o§.§2!6§);
         var _loc5_:b2BodyDef;
         (_loc5_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc5_.§9"a§ = true;
         _loc5_.position = new b2Vec2(this.§]!n§.§#"v§() + _loc3_ * §3"X§.§;"l§,this.§]!n§.§2!;§() + _loc4_ * §3"X§.§;"l§);
         §#"R§ = mWorld.CreateBody(_loc5_);
         §#"R§.SetUserData(this);
         var _loc6_:b2FixtureDef;
         (_loc6_ = new b2FixtureDef()).shape = new §3t§(§>o§.§+"[§).getB2Shape();
         _loc6_.density = 1e-8;
         _loc6_.friction = §>o§.§7!r§;
         _loc6_.restitution = §>o§.§8"f§;
         §<!$§ = §#"R§.CreateFixture(_loc6_);
         var _loc7_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("THERMAL_DETONATOR_01");
         var _loc8_:§-i§;
         (_loc8_ = new §-i§(_loc7_.texture)).x = -_loc7_.pivotX;
         _loc8_.y = -_loc7_.pivotY;
         var _loc9_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("THERMAL_DETONATOR_02");
         this.§+W§ = new §-i§(_loc9_.texture,true);
         this.§+W§.x = -_loc9_.pivotX;
         this.§+W§.y = -_loc9_.pivotY;
         this.§]!<§ = new Sprite();
         this.§]!<§.addChild(_loc8_);
         this.§]!<§.scaleX = this.§]!<§.scaleY = §>o§.§9!R§;
         var _loc10_:b2WeldJointDef;
         (_loc10_ = new b2WeldJointDef()).§!!x§ = §#"R§;
         _loc10_.§%!x§ = this.§]!n§.§?"Z§();
         _loc10_.collideConnected = false;
         _loc10_.§2"g§ = new b2Vec2(-_loc3_ * §3"X§.§;"l§,-_loc4_ * §3"X§.§;"l§);
         this.§[l§ = mWorld.CreateJoint(_loc10_);
         this.§ #%§ = new Sprite();
         this.§ #%§.scaleX = this.§ #%§.scaleY = 2;
         sprite.addChildAt(this.§ #%§,0);
         sprite.addChild(this.§]!<§);
         this.§ case§(0,0,0);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§ case§(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         var _loc3_:§ !Q§ = null;
         super.update(param1,param2);
         if(this.§-!A§ && this.§]!n§.health != this.§]!n§.healthMax)
         {
            this.§ S§();
         }
         if(!this.§-!A§)
         {
            this.§^"+§ -= param1;
            if(this.§^"+§ < §13§ + §["B§ && !this.§`E§)
            {
               this.§`E§ = true;
               _loc3_ = param2 as § !Q§;
               if(_loc3_)
               {
                  _loc3_.§8#3§(§["B§ * 1.6,100,1,0.25);
               }
            }
            if(this.§^"+§ <= 0)
            {
               this.§8W§(param2);
            }
         }
      }
      
      private function §8W§(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         param1.§ "p§("thermalBuff",_loc2_,_loc3_,0,§super§.§4"D§,5,5,1,true);
         param1.removeObject(this,false);
         param1.§7"§(§#"v§(),§2!;§(),§>o§.§^"[§,§>o§.§;A§,§>o§.§<!s§,§>o§.§]#$§);
         §@§.§=Y§("thermal_detonator_blast");
      }
      
      private function § case§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§]!h§ = null;
         var _loc7_:§-i§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:§]!h§ = null;
         var _loc13_:§-i§ = null;
         this.§ #%§.x = this.§]!<§.x = §#"v§() / §3"X§.§;"l§;
         this.§ #%§.y = this.§]!<§.y = §2!;§() / §3"X§.§;"l§;
         this.§]!<§.rotation = §?"Z§().GetAngle();
         if(!this.§-!A§)
         {
            _loc4_ = 1 - this.§^"+§ / §!"@§;
            this.§+W§.alpha = Math.pow(_loc4_,2);
            if(this.§^"+§ < §13§ + §["B§)
            {
               _loc5_ = 1 - (this.§^"+§ - param3) / (§13§ + §["B§);
               if(!this.§!"J§)
               {
                  _loc6_ = §;!e§.§<x§.textureManager.getTexture("THERMAL_REDRING");
                  (_loc7_ = new §-i§(_loc6_.texture,true)).x = -_loc6_.pivotX;
                  _loc7_.y = -_loc6_.pivotY - 3;
                  this.§!"J§ = new Sprite();
                  this.§!"J§.addChild(_loc7_);
                  this.§ #%§.addChild(this.§!"J§);
                  §@§.§=Y§("thermal_detonator_charge");
               }
               this.§!"J§.scaleX = this.§!"J§.scaleY = (1 - Math.pow(1 - _loc5_,1.5)) * 1.1;
            }
            if(this.§^"+§ < §13§)
            {
               _loc8_ = 1 - (this.§^"+§ - param3) / §13§;
               this.§ #%§.rotation += param1 / 1000;
               _loc10_ = (_loc9_ = 6) * _loc8_;
               if(!this.§?"e§)
               {
                  this.§?"e§ = new Vector.<§-i§>(_loc9_);
               }
               _loc11_ = 0;
               while(_loc11_ < _loc9_)
               {
                  if(_loc10_ >= _loc11_ && _loc10_ <= _loc11_ + 2)
                  {
                     if(!this.§?"e§[_loc11_])
                     {
                        _loc12_ = §;!e§.§<x§.textureManager.getTexture("THERMAL_EXPLOSION_0" + (_loc11_ + 1));
                        (_loc13_ = new §-i§(_loc12_.texture,true)).x = -_loc12_.pivotX;
                        _loc13_.y = -_loc12_.pivotY;
                        this.§ #%§.addChild(_loc13_);
                        this.§?"e§[_loc11_] = _loc13_;
                     }
                     this.§?"e§[_loc11_].alpha = Math.min(1,_loc10_ - _loc11_) * _loc8_;
                  }
                  else if(this.§?"e§[_loc11_])
                  {
                     this.§ #%§.removeChild(this.§?"e§[_loc11_]);
                     this.§?"e§[_loc11_].dispose();
                     this.§?"e§[_loc11_] = null;
                  }
                  _loc11_++;
               }
            }
         }
      }
      
      public function § S§() : void
      {
         §<!$§.SetDensity(§>o§.§[W§);
         §#"R§.ResetMassData();
         mWorld.DestroyJoint(this.§[l§);
         this.§[l§ = null;
         this.§-!A§ = false;
         this.§]!<§.addChild(this.§+W§);
      }
      
      public function get §3n§() : Boolean
      {
         return this.§-!A§;
      }
      
      public function get § #4§() : Boolean
      {
         return this.§[l§ != null;
      }
      
      public function §1"_§(param1:§!z§) : void
      {
         var _loc2_:b2WeldJointDef = new b2WeldJointDef();
         _loc2_.§8!s§(param1.§?"Z§(),§#"R§,param1.§?"Z§().§!"P§());
         _loc2_.collideConnected = false;
         this.§[l§ = mWorld.CreateJoint(_loc2_);
      }
      
      override public function attachedJointRemoved(param1:§!z§ = null) : void
      {
         this.§[l§ = null;
      }
      
      override public function dispose() : void
      {
         if(sprite && sprite.parent)
         {
            sprite.parent.removeChild(sprite,true);
         }
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         if(this.§]!n§ is §<"D§ && param1 is §<"D§)
         {
            return;
         }
         if(!(param1 is §4!w§))
         {
            return;
         }
         if(this.§3n§)
         {
            this.§ S§();
         }
         else if(!this.§ #4§ && !(param1 is §%!0§))
         {
            this.§1"_§(param1);
         }
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§-!A§)
         {
            return false;
         }
         return super.applyGravity();
      }
      
      override public function get shape() : §?"Q§
      {
         return this.§%;§;
      }
   }
}
