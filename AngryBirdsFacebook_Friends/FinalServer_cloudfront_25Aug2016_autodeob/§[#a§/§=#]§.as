package §[#a§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §%$!§.§+3§;
   import §+!d§.§&b§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §+!u§.§]8§;
   import §,#L§.§!#%§;
   import §,#L§.§'!5§;
   import §,#L§.§8"y§;
   import §,#L§.§=#O§;
   import §0m§.b2Vec2;
   import §3"q§.b2Distance;
   import §3"q§.b2DistanceInput;
   import §3"q§.b2DistanceOutput;
   import §3"q§.b2DistanceProxy;
   import §3"q§.b2RayCastInput;
   import §3"q§.b2RayCastOutput;
   import §3"q§.b2SimplexCache;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §;"R§.b2Contact;
   import §;$%§.§"c§;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §=#]§ extends §5"S§
   {
      
      private static const §3$ §:int = 150;
      
      private static const §]m§:int = 3;
       
      
      public var §'n§:Sprite;
      
      private var §`#,§:int = 0;
      
      private var mLevelManager:§#!?§;
      
      private var §5"?§:Vector.<Object>;
      
      private var §;"`§:Vector.<Object>;
      
      private var §&"p§:Number = 0;
      
      private var §]#'§:Number = 2000;
      
      private var §'#@§:Boolean = false;
      
      public function §=#]§(param1:§#!,§, param2:§#!?§, param3:§-"R§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§'n§ = new Sprite();
         this.§'n§.§0$6§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§!#%§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §<"H§
      {
         var _loc11_:String = null;
         var _loc12_:String = null;
         if(param1.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc11_ = param1.type.split("_")[param1.type.split("_").length - 1];
            _loc12_ = "1000-" + _loc11_;
            if((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§9"C§(_loc12_))
            {
               return null;
            }
         }
         return super.addObjectFromModel(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      private function §2#S§(param1:§="@§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §-k§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      private function §&!7§() : String
      {
         if(this.dataModel.§&!?§ == null)
         {
            return "";
         }
         if(!this.dataModel.§&!?§.§=#t§() || this.dataModel.§&!?§.§8"#§() || !this.dataModel.§&!?§.§5$6§())
         {
            return "";
         }
         var _loc1_:Number = this.dataModel.§&!?§.§`$$§(this.mLevelManager.currentLevel);
         if(_loc1_ > 0.5 && this.§`#,§ < §]m§)
         {
            ++this.§`#,§;
            return "MISC_COLLECTIBLE_EGG_";
         }
         return "";
      }
      
      protected function get dataModel() : §+3§
      {
         return §+3§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§'n§.x = -param1;
         this.§'n§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§!#%§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<"H§
      {
         var _loc5_:§8K§;
         if(!(_loc5_ = §,#2§.levelItemManager.getItem(param1.type)))
         {
            if(!(_loc5_ = §,#2§.levelItemManager.getItem(§0!H§.§%!H§)))
            {
               throw new Error("Can\'t find level item \'" + param1.type + "\'. No temporary block found.");
            }
            return new §0!H§(param2,§,#2§.animationManager.getAnimation(_loc5_.itemName),§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         var _loc6_:§`"W§ = §,#2§.animationManager.getAnimation(_loc5_.itemName);
         if(param1.type.indexOf("_INFECTED") != -1 || AngryBirdsBase.singleton.§^!X§() == §]8§.STATE_NAME && _loc5_.itemType == §8K§.§=l§ && §]!m§.§3!]§.brandedTournamentAssetId == §]!m§.§6s§ && param1.type.indexOf("ZOMBIE") == -1)
         {
            return new §=#§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §6"y§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §7#D§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("CANNON") != -1)
         {
            return new §?!§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || param1.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §?x§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(param1.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || param1.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || param1.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §^#M§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new § $1§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §7$&§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §3H§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §0!2§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §[#Q§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new § "S§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("_ZOMBIE") != -1)
         {
            return new §+!o§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("MISC_THEMED_") == 0 || param1.type.indexOf("MISC_CHUCK_") == 0)
         {
            return new §7#5§(§]!m§.§3!]§.brandedTournamentAssetId,param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || param1.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || param1.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
         {
            return new §^!n§(param2,_loc6_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      public function §-"8§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §7$&§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§6"[§.ID_NEXT_FREE,false,false,false,param4) as §7$&§;
      }
      
      override protected function addObjectPig(param1:§!#%§, param2:Sprite, param3:§`"W§, param4:§8K§, param5:Number = 1.0) : §3a§
      {
         return new §##7§(param2,param3,§,#2§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §'D§(param1:Object) : void
      {
         if(!this.§5"?§)
         {
            this.§5"?§ = new Vector.<Object>();
         }
         this.§5"?§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §9!@§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§="@§) : §"c§
      {
         return §^"h§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§="@§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§<#;§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§%0§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         § !A§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§<"H§, param2:§<"H§) : Boolean
      {
         return param1.§"4§ > §3$ § || param2.§"4§ > §3$ § || §&$7§(param1,param2);
      }
      
      override public function objectCollision(param1:§<"H§, param2:§<"H§, param3:b2Contact) : Boolean
      {
         var _loc4_:§?!§ = null;
         var _loc5_:§7#D§ = null;
         if(param1 is §7$&§ && param2 is §7$&§)
         {
            if(!(param1 as §7$&§).§!#[§ && !(param2 as §7$&§).§!#[§)
            {
               return false;
            }
         }
         if(param1 is §7#D§ && param2 is §?!§ || param2 is §7#D§ && param1 is §?!§)
         {
            _loc4_ = §?!§(param1 is §?!§ ? param1 : param2);
            if((_loc5_ = §7#D§(param1 is §7#D§ ? param1 : param2)).§%=§ > 0 && _loc5_.§;"W§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §^#M§ || param2 is §^#M§)
         {
            if(param1 is §^#M§)
            {
               if(param2 is §-k§)
               {
                  return true;
               }
               if(param2 is §^#M§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §""G§.§default§)
               {
                  return true;
               }
            }
            else if(param2 is §^#M§)
            {
               if(param1 is §-k§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §""G§.§default§)
               {
                  return true;
               }
            }
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§>"$§.§3#'§.§?#W§ < 2000)
            {
               return true;
            }
            §#$+§.playSound("Trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override protected function getCollisionDamageFactor(param1:§="@§, param2:§="@§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§&b§ = null;
         if(param2 is §-k§)
         {
            return 1;
         }
         _loc3_ = param1.§!w§(param2.§5"J§());
         if(param1 is §-k§)
         {
            if(_loc4_ = (param1 as §-k§).§6!0§("slingShotAbility") as §&b§)
            {
               _loc3_ *= _loc4_.§?_§(param2.levelItem.category,param1.itemName);
            }
         }
         return _loc3_;
      }
      
      override protected function getCollisionForceFactor(param1:§="@§, param2:§="@§) : Number
      {
         return 1;
      }
      
      override protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 > 50)
         {
            _loc4_ = Math.max(param2,param3);
            param1 = Math.min(param1,_loc4_);
            _loc5_ = 3000000;
            param1 = Math.min(param1 * param1 * param1,_loc5_);
            § !A§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §<#;§.§;#]§ && param1 != §3#Z§.§2#j§)
         {
            §#$+§.playSound("TntExplosions","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §3#Z§.§2#j§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §super§(param1:uint) : Vector.<§="@§>
      {
         var _loc7_:§="@§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§="@§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §3!2§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§="@§> = new Vector.<§="@§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §3!2§[_loc5_] as §="@§) && _loc7_ is §3a§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§="@§> = new Vector.<§="@§>();
         while(_loc6_.length < param1)
         {
            if(_loc4_.length == 0)
            {
               _loc6_[_loc6_.length] = null;
            }
            else
            {
               _loc8_ = _loc4_.length * Math.random();
               _loc9_ = _loc4_.splice(_loc8_,1);
               _loc6_[_loc6_.length] = _loc9_[0];
            }
         }
         return _loc6_;
      }
      
      public function get §<# §() : int
      {
         return §[#Q§.§;B§;
      }
      
      public function §7""§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§="@§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§="@§> = new Vector.<§="@§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §>"$§.§3#'§.levelObjects.§0y§())
         {
            if((_loc7_ = §>"$§.§3#'§.levelObjects.getObject(_loc3_) as §="@§) is §3a§)
            {
               _loc2_.push(_loc7_);
            }
            _loc3_++;
         }
         if(_loc2_.length == 0)
         {
            return;
         }
         var _loc4_:Array = new Array();
         var _loc5_:int = _loc2_.length > 4 ? 4 : int(_loc2_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if(_loc2_.length > 1)
            {
               do
               {
                  _loc8_ = this.§'#x§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§^"r§(_loc2_[_loc8_].getBody());
            if(_loc1_)
            {
               if(_loc6_ == 0)
               {
                  _loc1_.scaleModifier = 1;
               }
               else if(_loc6_ == 1)
               {
                  _loc1_.scaleModifier = 0.7;
               }
               else
               {
                  _loc1_.scaleModifier = 0.25;
               }
               this.§6#"§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      private function §>#D§() : void
      {
         if(this.§&"p§ > this.§]#'§ && !this.§'#@§)
         {
            this.§'#@§ = true;
            §#$+§.playSound("Mushroom_Grow_1","ChannelMisc",0,1);
            this.§&"p§ = 0;
         }
      }
      
      private function §9B§() : Object
      {
         var _loc3_:§="@§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§="@§> = new Vector.<§="@§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §>"$§.§3#'§.levelObjects.§0y§())
         {
            _loc3_ = §>"$§.§3#'§.levelObjects.getObject(_loc2_) as §="@§;
            if(_loc3_)
            {
               if(_loc3_ is §=,§ && !(_loc3_ is §3a§) && !(_loc3_ is §-k§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§'#x§(_loc1_.length);
            return this.§^"r§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §'#x§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §?#1§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §^"r§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§="@§ = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         new b2Vec2(0,§>"$§.§@!F§() * §#!,§.§7#@§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§6"M§ = param1.GetTransform();
         _loc5_.§?$;§ = new b2DistanceProxy();
         _loc5_.§?$;§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§2"4§ = true;
         var _loc6_:Number = §#!,§.§]"L§;
         var _loc10_:Number = 0;
         while(_loc10_ < §>"$§.§3#'§.levelObjects.§0y§())
         {
            if(_loc19_ = §>"$§.§3#'§.levelObjects.getObject(_loc10_) as §="@§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§?#C§() || _loc19_.§=P§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc19_.getBody().GetFixtureList();
                  _loc5_.§0E§ = _loc19_.getBody().GetTransform();
                  _loc5_.§["-§ = new b2DistanceProxy();
                  _loc5_.§["-§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§ !R§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§-!i§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§-!i§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§&"F§;
                     _loc9_ = _loc21_.§-!i§;
                  }
               }
            }
            _loc10_++;
         }
         var _loc11_:b2Vec2 = param1.GetPosition();
         if(_loc9_ == 0)
         {
            _loc9_ = 1;
         }
         var _loc12_:Number = (_loc11_.x - _loc8_.x) / _loc9_;
         var _loc13_:Number = (_loc11_.y - _loc8_.y) / _loc9_;
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §#!,§.§]"L§,_loc11_.y - _loc13_ * §#!,§.§]"L§);
         var _loc15_:b2RayCastInput = new b2RayCastInput(_loc11_,_loc14_);
         var _loc16_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc7_.RayCast(_loc16_,_loc15_))
         {
            return null;
         }
         _loc3_ = _loc16_.fraction;
         _loc4_ = _loc16_.normal;
         var _loc17_:Number = _loc11_.x + _loc3_ * (_loc14_.x - _loc11_.x);
         var _loc18_:Number = _loc11_.y + _loc3_ * (_loc14_.y - _loc11_.y);
         return {
            "point":new Point(_loc17_,_loc18_),
            "normal":new Point(_loc4_.x,_loc4_.y)
         };
      }
      
      public function §6#"§(param1:Object) : void
      {
         if(!this.§;"`§)
         {
            this.§;"`§ = new Vector.<Object>();
         }
         this.§;"`§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§[#Q§ = null;
         var _loc8_:Number = NaN;
         if(this.§;"`§ != null)
         {
            this.§&"p§ += param1;
            _loc2_ = this.§;"`§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§;"`§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§6"[§.ID_NEXT_FREE,false,false,false,1,false) as §[#Q§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§^"U§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§ "O§();
               }
               this.§;"`§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§>#D§();
         }
         if(this.§5"?§ != null)
         {
            _loc2_ = this.§5"?§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§5"?§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §#!,§.§?$#§;
                  §+!o§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§6"[§.ID_NEXT_FREE,false,false,false,1,false)).§^"U§(_loc4_,_loc5_);
               }
               this.§5"?§.splice(_loc2_,1);
               _loc2_--;
            }
         }
         super.updateObjects(param1);
      }
      
      override public function isLevelGoalObjectsAlive() : Boolean
      {
         if(this.§5"?§ != null && this.§5"?§.length != 0)
         {
            return true;
         }
         return super.isLevelGoalObjectsAlive();
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§5"?§ != null && this.§5"?§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§5"?§ != null && this.§5"?§.length != 0)
         {
            _loc2_ += this.§5"?§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§5"?§ != null && this.§5"?§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §&V§(param1:§8"y§) : §=#O§
      {
         return §;#6§(param1);
      }
      
      override protected function ignoreExplosion(param1:§="@§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §^!n§)
         {
            return true;
         }
         if(param1 is §^#M§ && (param2 == §<#;§.§,"%§ || param2 == §<#;§.§;#]§ || param2 == §<#;§.§%$&§))
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§=#O§ = null;
         if(§2![§.§,#>§() == §3#8§.§ "Z§.§"!E§)
         {
            _loc1_ = §#$2§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §#$2§[_loc1_ - 1] as §=#O§;
               if(!_loc2_.§&#X§ || !(_loc2_.§&#X§.§+#0§().GetUserData() is §^!n§ || _loc2_.§&#X§.§4#M§().GetUserData() is §^!n§))
               {
                  _loc2_ = §#$2§[_loc1_ - 1];
                  §02§(_loc2_);
                  §#$2§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§="@§) : void
      {
         var _loc2_:§'!5§ = null;
         for each(_loc2_ in §]"2§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§6!6§ = true;
            }
         }
      }
   }
}
