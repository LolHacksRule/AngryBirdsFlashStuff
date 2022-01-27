package §!r§
{
   import §!!k§.§'!j§;
   import §"§.§ !3§;
   import §"§.§;!E§;
   import §#g§.§'<§;
   import §#g§.§<b§;
   import §7"A§.b2Vec2;
   import §=![§.b2Joint;
   import §=![§.b2WeldJointDef;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2BodyDef;
   import §>"_§.b2FixtureDef;
   import §>"_§.b2World;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §<#&§ extends §]e§
   {
      
      private static const §1"k§:Number = 2000;
      
      private static const §'"[§:Number = 600;
      
      private static const §3"@§:Number = 1300;
       
      
      private var §=!c§:Sprite;
      
      private var override:§;!T§;
      
      private var §0$§:b2Joint;
      
      private var §?!n§:Boolean = true;
      
      private var §[!d§:Number = 2000;
      
      private var §,"X§:§,!u§;
      
      private var §%"2§:Vector.<§,!u§>;
      
      private var §>!z§:Sprite;
      
      private var §@;§:Boolean = false;
      
      private var §]!J§:Number;
      
      private var §04§:§<b§;
      
      private var §9!1§:Sprite;
      
      public function §<#&§(param1:Sprite, param2:b2World, param3:§;!T§)
      {
         this.override = param3;
         var _loc4_:§9v§;
         (_loc4_ = new §9v§()).x = this.override.x;
         _loc4_.y = this.override.y;
         this.§04§ = new §<b§(§ !3§.§5"X§);
         super(param1,param2,null,_loc4_);
         this.init();
      }
      
      public function get §1!_§() : §;!T§
      {
         return this.override;
      }
      
      private function init() : void
      {
         var _loc1_:Number = § !3§.§;"a§ * (Math.PI / 180);
         var _loc2_:Number = this.override.levelItem.getItemWidth() * this.override.levelItem.scale / §;!E§.§0"?§;
         var _loc3_:Number = Math.cos(_loc1_) * (_loc2_ + § !3§.§%!#§);
         var _loc4_:Number = Math.sin(_loc1_) * (_loc2_ + § !3§.§%!#§);
         var _loc5_:b2BodyDef;
         (_loc5_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc5_.§^!Z§ = true;
         _loc5_.position = new b2Vec2(this.override.§"!r§() + _loc3_ * §;!E§.§0"?§,this.override.§8#1§() + _loc4_ * §;!E§.§0"?§);
         §-#6§ = mWorld.CreateBody(_loc5_);
         §-#6§.SetUserData(this);
         var _loc6_:b2FixtureDef;
         (_loc6_ = new b2FixtureDef()).shape = new §<b§(§ !3§.§5"X§).getB2Shape();
         _loc6_.density = 1e-8;
         _loc6_.friction = § !3§.§-p§;
         _loc6_.restitution = § !3§.§!!H§;
         §&"B§ = §-#6§.CreateFixture(_loc6_);
         var _loc7_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("THERMAL_DETONATOR_01");
         var _loc8_:§,!u§;
         (_loc8_ = new §,!u§(_loc7_.texture)).x = -_loc7_.pivotX;
         _loc8_.y = -_loc7_.pivotY;
         var _loc9_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("THERMAL_DETONATOR_02");
         this.§,"X§ = new §,!u§(_loc9_.texture,true);
         this.§,"X§.x = -_loc9_.pivotX;
         this.§,"X§.y = -_loc9_.pivotY;
         this.§=!c§ = new Sprite();
         this.§=!c§.addChild(_loc8_);
         this.§=!c§.scaleX = this.§=!c§.scaleY = § !3§.§,"s§;
         var _loc10_:b2WeldJointDef;
         (_loc10_ = new b2WeldJointDef()).§5"I§ = §-#6§;
         _loc10_.§[!K§ = this.override.§3"s§();
         _loc10_.collideConnected = false;
         _loc10_.§?"y§ = new b2Vec2(-_loc3_ * §;!E§.§0"?§,-_loc4_ * §;!E§.§0"?§);
         this.§0$§ = mWorld.CreateJoint(_loc10_);
         this.§>!z§ = new Sprite();
         this.§>!z§.scaleX = this.§>!z§.scaleY = 2;
         sprite.addChildAt(this.§>!z§,0);
         sprite.addChild(this.§=!c§);
         this.§5"N§(0,0,0);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§5"N§(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         var _loc3_:§<!F§ = null;
         super.update(param1,param2);
         if(this.§?!n§ && this.override.health != this.override.healthMax)
         {
            this.§^!&§();
         }
         if(!this.§?!n§)
         {
            this.§[!d§ -= param1;
            if(this.§[!d§ < §'"[§ + §3"@§ && !this.§@;§)
            {
               this.§@;§ = true;
               _loc3_ = param2 as §<!F§;
               if(_loc3_)
               {
                  _loc3_.§["a§(§3"@§ * 1.6,100,1,0.25);
               }
            }
            if(this.§[!d§ <= 0)
            {
               this.§=!8§(param2);
            }
         }
      }
      
      private function §=!8§(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         param1.§]1§("thermalBuff",_loc2_,_loc3_,0,§9"f§.§["_§,5,5,1,true);
         param1.removeObject(this,false);
         param1.§?#6§(§"!r§(),§8#1§(),§ !3§.§]"U§,§ !3§.§5"o§,§ !3§.§8^§,§ !3§.§2q§);
         §=Q§.§`!A§("thermal_detonator_blast");
      }
      
      private function §5"N§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§'!j§ = null;
         var _loc7_:§,!u§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:§'!j§ = null;
         var _loc13_:§,!u§ = null;
         this.§>!z§.x = this.§=!c§.x = §"!r§() / §;!E§.§0"?§;
         this.§>!z§.y = this.§=!c§.y = §8#1§() / §;!E§.§0"?§;
         this.§=!c§.rotation = §3"s§().GetAngle();
         if(!this.§?!n§)
         {
            _loc4_ = 1 - this.§[!d§ / §1"k§;
            this.§,"X§.alpha = Math.pow(_loc4_,2);
            if(this.§[!d§ < §'"[§ + §3"@§)
            {
               _loc5_ = 1 - (this.§[!d§ - param3) / (§'"[§ + §3"@§);
               if(!this.§9!1§)
               {
                  _loc6_ = §<!J§.§=!%§.textureManager.getTexture("THERMAL_REDRING");
                  (_loc7_ = new §,!u§(_loc6_.texture,true)).x = -_loc6_.pivotX;
                  _loc7_.y = -_loc6_.pivotY - 3;
                  this.§9!1§ = new Sprite();
                  this.§9!1§.addChild(_loc7_);
                  this.§>!z§.addChild(this.§9!1§);
                  §=Q§.§`!A§("thermal_detonator_charge");
               }
               this.§9!1§.scaleX = this.§9!1§.scaleY = (1 - Math.pow(1 - _loc5_,1.5)) * 1.1;
            }
            if(this.§[!d§ < §'"[§)
            {
               _loc8_ = 1 - (this.§[!d§ - param3) / §'"[§;
               this.§>!z§.rotation += param1 / 1000;
               _loc10_ = (_loc9_ = 6) * _loc8_;
               if(!this.§%"2§)
               {
                  this.§%"2§ = new Vector.<§,!u§>(_loc9_);
               }
               _loc11_ = 0;
               while(_loc11_ < _loc9_)
               {
                  if(_loc10_ >= _loc11_ && _loc10_ <= _loc11_ + 2)
                  {
                     if(!this.§%"2§[_loc11_])
                     {
                        _loc12_ = §<!J§.§=!%§.textureManager.getTexture("THERMAL_EXPLOSION_0" + (_loc11_ + 1));
                        (_loc13_ = new §,!u§(_loc12_.texture,true)).x = -_loc12_.pivotX;
                        _loc13_.y = -_loc12_.pivotY;
                        this.§>!z§.addChild(_loc13_);
                        this.§%"2§[_loc11_] = _loc13_;
                     }
                     this.§%"2§[_loc11_].alpha = Math.min(1,_loc10_ - _loc11_) * _loc8_;
                  }
                  else if(this.§%"2§[_loc11_])
                  {
                     this.§>!z§.removeChild(this.§%"2§[_loc11_]);
                     this.§%"2§[_loc11_].dispose();
                     this.§%"2§[_loc11_] = null;
                  }
                  _loc11_++;
               }
            }
         }
      }
      
      public function §^!&§() : void
      {
         §&"B§.SetDensity(§ !3§.§""f§);
         §-#6§.ResetMassData();
         mWorld.DestroyJoint(this.§0$§);
         this.§0$§ = null;
         this.§?!n§ = false;
         this.§=!c§.addChild(this.§,"X§);
      }
      
      public function get §>#&§() : Boolean
      {
         return this.§?!n§;
      }
      
      public function get §class§() : Boolean
      {
         return this.§0$§ != null;
      }
      
      public function §^!C§(param1:§?!x§) : void
      {
         var _loc2_:b2WeldJointDef = new b2WeldJointDef();
         _loc2_.§>D§(param1.§3"s§(),§-#6§,param1.§3"s§().§]";§());
         _loc2_.collideConnected = false;
         this.§0$§ = mWorld.CreateJoint(_loc2_);
      }
      
      override public function attachedJointRemoved(param1:§?!x§ = null) : void
      {
         this.§0$§ = null;
      }
      
      override public function dispose() : void
      {
         if(sprite && sprite.parent)
         {
            sprite.parent.removeChild(sprite,true);
         }
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         if(this.override is §`"w§ && param1 is §`"w§)
         {
            return;
         }
         if(!(param1 is §0N§))
         {
            return;
         }
         if(this.§>#&§)
         {
            this.§^!&§();
         }
         else if(!this.§class§ && !(param1 is §;!T§))
         {
            this.§^!C§(param1);
         }
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§?!n§)
         {
            return false;
         }
         return super.applyGravity();
      }
      
      override public function get shape() : §'<§
      {
         return this.§04§;
      }
   }
}
