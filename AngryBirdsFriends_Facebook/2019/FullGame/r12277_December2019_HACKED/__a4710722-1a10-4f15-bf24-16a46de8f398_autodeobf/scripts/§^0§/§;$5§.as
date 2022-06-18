package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§"#s§;
   import §%$0§.§#!+§;
   import §%$0§.§'#!§;
   import §%$0§.§1G§;
   import §%$0§.§[$$§;
   import §-!j§.§,#V§;
   import §-!j§.§-"8§;
   import §-!j§.§4#"§;
   import §-!j§.§>!8§;
   import §-!j§.§@! §;
   import §-!j§.§]!e§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §8"h§.§>;§;
   import §9#M§.§'!-§;
   import §9#M§.§,`§;
   import §;"8§.§6#§;
   import §="o§.§<!X§;
   import §="o§.§>"f§;
   import §?$#§.§<d§;
   import §?o§.§ !B§;
   import §?o§.§ ^§;
   import §@"v§.§9#t§;
   import §@"v§.§@$<§;
   import §@"v§.§]$,§;
   import flash.geom.Point;
   
   public class §;$5§ extends §%"^§ implements §;">§
   {
       
      
      protected var §0#C§:String;
      
      protected var §0$B§:String;
      
      protected var §!"T§:b2Vec2;
      
      protected var §,!p§:b2Vec2;
      
      protected var §6!B§:Boolean = true;
      
      protected var §1!S§:§6#§;
      
      public function §;$5§(param1:§<d§, param2:§ ^§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§!"T§ = new b2Vec2();
         this.§,!p§ = new b2Vec2();
         this.§0#C§ = param5;
         this.§0$B§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is § !B§)
         {
            if((param2 as § !B§).§`#h§ > 0)
            {
               this.§6!B§ = false;
            }
         }
         this.§1!S§ = new §6#§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§1!S§)
         {
            this.§1!S§.dispose();
            this.§1!S§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§>;§ = § 6§.background as §>;§;
         if(_loc1_)
         {
            return _loc1_.§3!1§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§=Q§) : Boolean
      {
         var _loc2_:§>!8§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §>!8§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§=Q§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§ ^§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§]$,§ = null;
         var _loc2_:§ !B§ = param1 as § !B§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§`#h§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§+$C§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §!!I§(param1:§@$<§, param2:Sprite, param3:§,`§) : §4!t§
      {
         var _loc11_:§'!-§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §[$$§.§&";§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§'"u§;
         var _loc9_:Number = param1.§%"b§;
         var _loc10_:§4#"§;
         if(!(_loc10_ = § 6§.levelItemManager.getItem(_loc4_) as §4#"§))
         {
            return null;
         }
         if(_loc10_.§3#d§)
         {
            return new §'#!§(param2,param3,§ 6§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §[$$§.§&";§)
         {
            _loc11_ = § 6§.textureManager.getTexture(param1.type);
            return new §[$$§(_loc11_,param2,§ 6§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §#!+§(param2,param3,§ 6§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §"#s§(param2,param3,§ 6§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §1G§(param2,param3,§ 6§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§@$<§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §4!t§
      {
         var _loc6_:String = null;
         var _loc7_:§,`§ = null;
         var _loc8_:§]$,§ = null;
         var _loc9_:§'!-§ = null;
         var _loc10_:§'!-§ = null;
         var _loc5_:§-"8§;
         if((_loc5_ = § 6§.levelItemManager.getItem(param1.type)) is §@! §)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = § 6§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §4#"§)
            {
               return this.§!!I§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§&F§.§&";§) != -1)
            {
               if(_loc8_ = param1 as §]$,§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = § 6§.backgroundTextureManager.getTexture(this.§0#C§);
                  _loc10_ = § 6§.backgroundTextureManager.getTexture(this.§0$B§);
                  return new §&F§(param2,§ 6§.mLevelEngine.mWorld,param1,_loc5_ as §@! §,§,#V§(_loc8_.shape).radius,_loc8_.§ W§,_loc8_.§?>§,_loc8_.§+"%§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §?"i§(param2,§ 6§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §#!l§(param2,_loc7_,§ 6§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §>!8§)
            {
               if(param1 is §9#t§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§0#;§.§>!M§,param4);
               }
               return this.§@#w§(param2,_loc7_,§ 6§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §@#w§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number) : §0"C§
      {
         return new §0"C§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§@$<§, param2:Sprite, param3:§,`§, param4:§-"8§, param5:Number = 1.0) : §&"e§
      {
         if(param3.hasSubAnimation(§]!e§.§#!J§))
         {
            return new §-"a§(param2,param3,§ 6§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§@$<§, param2:Sprite, param3:§,`§, param4:§-"8§, param5:int, param6:Number = 1.0) : §4!t§
      {
         var _loc7_:§@! § = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§9#t§ = null;
         if(param4 is §@! §)
         {
            _loc8_ = (_loc7_ = param4 as §@! §).§6`§("explosionRadius");
            _loc9_ = _loc7_.§6`§("explosionForce");
            _loc10_ = _loc7_.§6`§("explosionDamageRadius");
            _loc11_ = _loc7_.§6`§("explosionDamage");
            if(param1 is §9#t§)
            {
               _loc12_ = param1 as §9#t§;
               if(!isNaN(_loc12_.explosionRadius))
               {
                  _loc8_ = _loc12_.explosionRadius;
               }
               if(!isNaN(_loc12_.explosionForce))
               {
                  _loc9_ = _loc12_.explosionForce;
               }
               if(!isNaN(_loc12_.explosionDamageRadius))
               {
                  _loc10_ = _loc12_.explosionDamageRadius;
               }
               if(!isNaN(_loc12_.explosionDamage))
               {
                  _loc11_ = _loc12_.explosionDamage;
               }
            }
            return new §`#Z§(param2,param3,§ 6§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§1!S§)
         {
            this.§1!S§.§,!S§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §-z§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§=Q§) : §>"f§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §<!X§.§0!I§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §-!7§(param1:Number, param2:Number, param3:§=Q§) : §>"f§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §-!,§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§,`§ = null;
         var _loc7_:§>!8§;
         if(_loc7_ = § 6§.levelItemManager.getItem(param1) as §>!8§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = § 6§.animationManager.getAnimation(param1);
            this.§1!S§.§-!,§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §2+§.addChild(_loc9_);
         }
      }
      
      public function §>!I§(param1:Number, param2:Number) : §-"a§
      {
         var _loc7_:§-"a§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§-"a§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §!#4§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §!#4§[_loc6_] as §-"a§) && _loc7_.health > 0 && !_loc7_.§'"f§)
            {
               _loc8_ = _loc7_.getBody().GetPosition();
               _loc9_ = Math.sqrt((param1 - _loc8_.x) * (param1 - _loc8_.x) + (param2 - _loc8_.y) * (param2 - _loc8_.y));
               if(_loc3_ == null || _loc9_ < _loc4_)
               {
                  _loc3_ = _loc7_;
                  _loc4_ = _loc9_;
               }
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      public function §]j§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         § 6§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc6_:§&F§ = null;
         if(this.§6!B§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §]$<§;
         while(§§hasnext(_loc8_,_loc7_))
         {
            if(_loc6_ = §§nextvalue(_loc7_,_loc8_) as §&F§)
            {
               this.§!"T§.x = param1;
               this.§!"T§.y = param2;
               _loc6_.§1,§(this.§!"T§,param3,this.§,!p§);
               param4.§?$6§(this.§,!p§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§0#;§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §'!!§(param1:§0#;§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§4!t§, param2:§4!t§) : Boolean
      {
         return true;
      }
      
      protected function §%!e§(param1:§=Q§, param2:§=Q§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§=Q§, param2:§=Q§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §[# §)
         {
            return 1;
         }
         if(param2 is §[# §)
         {
            return 0;
         }
         return Number(param1.§7p§(param2.§!#'§()));
      }
      
      protected function §>$@§(param1:§=Q§, param2:§=Q§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§=Q§, param2:§=Q§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §[# §)
         {
            return Number(param1.§7p§(param2.§!#'§()));
         }
         return 1;
      }
      
      public function get §,m§() : Boolean
      {
         var _loc1_:§5;§ = null;
         if(§]$<§.length > 0)
         {
            for each(_loc1_ in §]$<§)
            {
               if(_loc1_ is §&F§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
