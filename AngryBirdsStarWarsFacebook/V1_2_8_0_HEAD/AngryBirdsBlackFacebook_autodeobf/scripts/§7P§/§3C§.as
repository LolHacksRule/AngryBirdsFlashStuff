package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §1!2§.b2Joint;
   import §1!2§.b2WeldJointDef;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§15§;
   import com.angrybirds.§,!q§;
   
   public class §3C§ extends §#m§
   {
      
      private static const §'!d§:Number = 2000;
      
      private static const §9#1§:Number = 600;
      
      private static const §<"T§:Number = 1300;
       
      
      private var §=7§:Sprite;
      
      private var §2#D§:§?"N§;
      
      private var §^[§:b2Joint;
      
      private var § !M§:Boolean = true;
      
      private var §3g§:Number = 2000;
      
      private var §,!5§:§#"t§;
      
      private var §[!I§:Vector.<§#"t§>;
      
      private var §;;§:Sprite;
      
      private var §%!,§:Boolean = false;
      
      private var §^]§:Number;
      
      private var §&"5§:§?#Q§;
      
      private var §6!$§:Sprite;
      
      public function §3C§(param1:Sprite, param2:b2World, param3:§?"N§)
      {
         this.§2#D§ = param3;
         var _loc4_:§94§;
         (_loc4_ = new §94§()).x = this.§2#D§.x;
         _loc4_.y = this.§2#D§.y;
         this.§&"5§ = new §?#Q§(§15§.§&!r§);
         super(param1,param2,null,_loc4_);
         this.init();
      }
      
      public function get §?#'§() : §?"N§
      {
         return this.§2#D§;
      }
      
      private function init() : void
      {
         var _loc1_:Number = §15§.§]!4§ * (Math.PI / 180);
         var _loc2_:Number = this.§2#D§.levelItem.getItemWidth() * this.§2#D§.levelItem.scale / §#_§.§8]§;
         var _loc3_:Number = Math.cos(_loc1_) * (_loc2_ + §15§.§]&§);
         var _loc4_:Number = Math.sin(_loc1_) * (_loc2_ + §15§.§]&§);
         var _loc5_:b2BodyDef;
         (_loc5_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
         _loc5_.§%#2§ = true;
         _loc5_.position = new b2Vec2(this.§2#D§.§'"8§() + _loc3_ * §#_§.§8]§,this.§2#D§.§;">§() + _loc4_ * §#_§.§8]§);
         §04§ = mWorld.CreateBody(_loc5_);
         §04§.SetUserData(this);
         var _loc6_:b2FixtureDef;
         (_loc6_ = new b2FixtureDef()).shape = new §?#Q§(§15§.§&!r§).getB2Shape();
         _loc6_.density = 1e-8;
         _loc6_.friction = §15§.§`#1§;
         _loc6_.restitution = §15§.§`#B§;
         §^!L§ = §04§.CreateFixture(_loc6_);
         var _loc7_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_01");
         var _loc8_:§#"t§;
         (_loc8_ = new §#"t§(_loc7_.texture)).x = -_loc7_.pivotX;
         _loc8_.y = -_loc7_.pivotY;
         var _loc9_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_02");
         this.§,!5§ = new §#"t§(_loc9_.texture,true);
         this.§,!5§.x = -_loc9_.pivotX;
         this.§,!5§.y = -_loc9_.pivotY;
         this.§=7§ = new Sprite();
         this.§=7§.addChild(_loc8_);
         this.§=7§.scaleX = this.§=7§.scaleY = §15§.§1E§;
         var _loc10_:b2WeldJointDef;
         (_loc10_ = new b2WeldJointDef()).§9"P§ = §04§;
         _loc10_.§continue§ = this.§2#D§.§3!t§();
         _loc10_.collideConnected = false;
         _loc10_.§!"4§ = new b2Vec2(-_loc3_ * §#_§.§8]§,-_loc4_ * §#_§.§8]§);
         this.§^[§ = mWorld.CreateJoint(_loc10_);
         this.§;;§ = new Sprite();
         this.§;;§.scaleX = this.§;;§.scaleY = 2;
         sprite.addChildAt(this.§;;§,0);
         sprite.addChild(this.§=7§);
         this.§"r§(0,0,0);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§"r§(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:§,#Z§ = null;
         super.update(param1,param2);
         if(this.§ !M§ && this.§2#D§.health != this.§2#D§.healthMax)
         {
            this.§2#]§();
         }
         if(!this.§ !M§)
         {
            this.§3g§ -= param1;
            if(this.§3g§ < §9#1§ + §<"T§ && !this.§%!,§)
            {
               this.§%!,§ = true;
               _loc3_ = param2 as §,#Z§;
               if(_loc3_)
               {
                  _loc3_.§&Q§(§<"T§ * 1.6,100,1,0.25);
               }
            }
            if(this.§3g§ <= 0)
            {
               this.§1#,§(param2);
            }
         }
      }
      
      private function §1#,§(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         param1.§]#^§("thermalBuff",_loc2_,_loc3_,0,§;=§.§""3§,5,5,1,true);
         param1.removeObject(this,false);
         param1.§6#4§(§'"8§(),§;">§(),§15§.§6"3§,§15§.§3!G§,§15§.§="X§,§15§.§!"U§);
         §?!r§.§"#_§("thermal_detonator_blast");
      }
      
      private function §"r§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§8!W§ = null;
         var _loc7_:§#"t§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:§8!W§ = null;
         var _loc13_:§#"t§ = null;
         this.§;;§.x = this.§=7§.x = §'"8§() / §#_§.§8]§;
         this.§;;§.y = this.§=7§.y = §;">§() / §#_§.§8]§;
         this.§=7§.rotation = §3!t§().GetAngle();
         if(!this.§ !M§)
         {
            _loc4_ = 1 - this.§3g§ / §'!d§;
            this.§,!5§.alpha = Math.pow(_loc4_,2);
            if(this.§3g§ < §9#1§ + §<"T§)
            {
               _loc5_ = 1 - (this.§3g§ - param3) / (§9#1§ + §<"T§);
               if(!this.§6!$§)
               {
                  _loc6_ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_REDRING");
                  (_loc7_ = new §#"t§(_loc6_.texture,true)).x = -_loc6_.pivotX;
                  _loc7_.y = -_loc6_.pivotY - 3;
                  this.§6!$§ = new Sprite();
                  this.§6!$§.addChild(_loc7_);
                  this.§;;§.addChild(this.§6!$§);
                  §?!r§.§"#_§("thermal_detonator_charge");
               }
               this.§6!$§.scaleX = this.§6!$§.scaleY = (1 - Math.pow(1 - _loc5_,1.5)) * 1.1;
            }
            if(this.§3g§ < §9#1§)
            {
               _loc8_ = 1 - (this.§3g§ - param3) / §9#1§;
               this.§;;§.rotation += param1 / 1000;
               _loc10_ = (_loc9_ = 6) * _loc8_;
               if(!this.§[!I§)
               {
                  this.§[!I§ = new Vector.<§#"t§>(_loc9_);
               }
               _loc11_ = 0;
               while(_loc11_ < _loc9_)
               {
                  if(_loc10_ >= _loc11_ && _loc10_ <= _loc11_ + 2)
                  {
                     if(!this.§[!I§[_loc11_])
                     {
                        _loc12_ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_EXPLOSION_0" + (_loc11_ + 1));
                        (_loc13_ = new §#"t§(_loc12_.texture,true)).x = -_loc12_.pivotX;
                        _loc13_.y = -_loc12_.pivotY;
                        this.§;;§.addChild(_loc13_);
                        this.§[!I§[_loc11_] = _loc13_;
                     }
                     this.§[!I§[_loc11_].alpha = Math.min(1,_loc10_ - _loc11_) * _loc8_;
                  }
                  else if(this.§[!I§[_loc11_])
                  {
                     this.§;;§.removeChild(this.§[!I§[_loc11_]);
                     this.§[!I§[_loc11_].dispose();
                     this.§[!I§[_loc11_] = null;
                  }
                  _loc11_++;
               }
            }
         }
      }
      
      public function §2#]§() : void
      {
         §^!L§.SetDensity(§15§.§[!6§);
         §04§.ResetMassData();
         mWorld.DestroyJoint(this.§^[§);
         this.§^[§ = null;
         this.§ !M§ = false;
         this.§=7§.addChild(this.§,!5§);
      }
      
      public function get native() : Boolean
      {
         return this.§ !M§;
      }
      
      public function get §#P§() : Boolean
      {
         return this.§^[§ != null;
      }
      
      public function § "D§(param1:§7B§) : void
      {
         var _loc2_:b2WeldJointDef = new b2WeldJointDef();
         _loc2_.§8#5§(param1.§3!t§(),§04§,param1.§3!t§().§;#&§());
         _loc2_.collideConnected = false;
         this.§^[§ = mWorld.CreateJoint(_loc2_);
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         this.§^[§ = null;
      }
      
      override public function dispose() : void
      {
         if(sprite && sprite.parent)
         {
            sprite.parent.removeChild(sprite,true);
         }
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         if(this.§2#D§ is §@!8§ && param1 is §@!8§)
         {
            return;
         }
         if(!(param1 is §&#=§))
         {
            return;
         }
         if(this.native)
         {
            this.§2#]§();
         }
         else if(!this.§#P§ && !(param1 is §?"N§))
         {
            this.§ "D§(param1);
         }
      }
      
      override public function applyGravity() : Boolean
      {
         if(this.§ !M§)
         {
            return false;
         }
         return super.applyGravity();
      }
      
      override public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
   }
}
