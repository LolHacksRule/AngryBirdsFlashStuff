package §8§#8
{
   import § "%§.b2Vec2;
   import §'"$§.b2Distance;
   import §'"$§.b2DistanceInput;
   import §'"$§.b2DistanceOutput;
   import §'"$§.b2DistanceProxy;
   import §'"$§.b2RayCastInput;
   import §'"$§.b2RayCastOutput;
   import §'"$§.b2SimplexCache;
   import §'#d§.§#§;
   import §-!S§.§##>§;
   import §2G§.§#"8§;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §8"L§.§4U§;
   import §8"L§.§`"!§;
   import §8#!§.§5`§;
   import §8$@§.§="6§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §>M§.§#H§;
   import §>M§.§+$9§;
   import §>M§.§3!1§;
   import §>M§.§["z§;
   import §?P§.ErrorPopup;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`!k§.b2Contact;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §;Y§ extends §4#l§
   {
      
      private static const §]"?§:int = 150;
      
      private static const §&"L§:int = 3;
       
      
      public var §[$>§:Sprite;
      
      private var §1"[§:int = 0;
      
      private var mLevelManager:§8=§;
      
      private var §`"r§:Boolean;
      
      protected var §[#>§:Vector.<Object>;
      
      protected var §`#[§:Vector.<Object>;
      
      protected var §3#y§:Number = 0;
      
      private var §8#D§:Number = 2000;
      
      private var §,"3§:Boolean = false;
      
      public function §;Y§(param1:§%!q§, param2:§8=§, param3:§>f§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§[$>§ = new Sprite();
         this.§[$>§.§?C§ = false;
         this.§`"r§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§["z§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §,#5§
      {
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         if(param1.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc9_ = param1.type.split("_");
            _loc10_ = _loc9_[_loc9_.length - 1];
            _loc11_ = "1000-" + _loc10_;
            if((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§44§(_loc11_))
            {
               return null;
            }
         }
         return super.addObjectFromModel(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      private function §1!L§(param1:§4!y§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §?$%§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §#"8§
      {
         return §#"8§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§[$>§.x = -param1;
         this.§[$>§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§["z§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §,#5§
      {
         var levelItem:§4U§ = null;
         var model:§["z§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = §=#N§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = §=#N§.levelItemManager.getItem(§"#1§.§1C§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §"#1§(sprite,§=#N§.animationManager.getAnimation(levelItem.itemName),§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§0$2§ = §=#N§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §<?§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §?#d§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §;#E§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new § #V§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §2">§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §3"1§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §,!+§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §&$<§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §]!k§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §<#,§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §"!r§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new §>$§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new § $<§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("_ZOMBIE") != -1)
         {
            return new §##u§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new §6$"§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §'$4§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§##8§.§2!^§) == 0)
            {
               return new §##8§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new §6$5§(sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new §>h§(§5`§.§6!§.brandedTournamentAssetId,sprite,animation,§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
            levelItem = §=#N§.levelItemManager.getItem(§"#1§.§1C§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §"#1§(sprite,§=#N§.animationManager.getAnimation(levelItem.itemName),§=#N§.mLevelEngine.mWorld,levelItem,model,scale);
         }
      }
      
      public function §<"E§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §,!+§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§!#L§.ID_NEXT_FREE,false,false,false,param4) as §,!+§;
      }
      
      override protected function addObjectPig(param1:§["z§, param2:Sprite, param3:§0$2§, param4:§4U§, param5:Number = 1.0) : §6!H§
      {
         return new § "w§(param2,param3,§=#N§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §'?§(param1:Object) : void
      {
         if(!this.§[#>§)
         {
            this.§[#>§ = new Vector.<Object>();
         }
         this.§[#>§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §8#>§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§4!y§) : §="6§
      {
         return §%!<§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§4!y§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§2#%§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§-#T§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §""x§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§,#5§, param2:§,#5§) : Boolean
      {
         return param1.§8G§ > §]"?§ || param2.§8G§ > §]"?§ || §8!r§(param1,param2);
      }
      
      override public function objectCollision(param1:§,#5§, param2:§,#5§, param3:b2Contact) : Boolean
      {
         var _loc4_:§;#E§ = null;
         var _loc5_:§?#d§ = null;
         if(param1 is §,!+§ && param2 is §,!+§)
         {
            if(!(param1 as §,!+§).§,!x§ && !(param2 as §,!+§).§,!x§)
            {
               return false;
            }
         }
         if(param1 is §?#d§ && param2 is §;#E§ || param2 is §?#d§ && param1 is §;#E§)
         {
            _loc4_ = §;#E§(param1 is §;#E§ ? param1 : param2);
            if((_loc5_ = §?#d§(param1 is §?#d§ ? param1 : param2)).§9"$§ > 0 && _loc5_.§]!9§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §2">§ || param2 is §2">§)
         {
            if(param1 is §2">§)
            {
               if(param2 is §?$%§)
               {
                  return true;
               }
               if(param2 is §2">§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §?"W§.§1#d§)
               {
                  return true;
               }
            }
            else if(param2 is §2">§)
            {
               if(param1 is §?$%§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §?"W§.§1#d§)
               {
                  return true;
               }
            }
         }
         if(param1 is §'$4§)
         {
            if((param1 as §'$4§).§!#I§(param2))
            {
               return true;
            }
         }
         if(param2 is §'$4§)
         {
            if((param2 as §'$4§).§!#I§(param1))
            {
               return true;
            }
         }
         if(param1 is §##8§)
         {
            (param1 as §##8§).§4`§();
            return true;
         }
         if(param2 is §##8§)
         {
            (param2 as §##8§).§4`§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§3#U§.§#$4§.§&!§ < 2000)
            {
               return true;
            }
            §!"p§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§,#5§, param2:§,#5§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §'$4§)
         {
            (param1 as §'$4§).§>"%§(param2);
         }
         if(param2 is §'$4§)
         {
            (param2 as §'$4§).§>"%§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§4!y§, param2:§4!y§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§'#v§ = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(param2 is §?$%§)
         {
            return 1;
         }
         _loc3_ = param1.§2$9§(param2.§;#B§());
         if(param1 is §?$%§)
         {
            if(_loc4_ = param1.§6"J§("slingShotAbility") as §'#v§)
            {
               if((_loc5_ = param2.levelItem.category) == "")
               {
                  switch(param2.levelItem.material.name)
                  {
                     case "MATERIAL_BLOCK_WOOD":
                        _loc5_ = "Wood";
                        break;
                     case "MATERIAL_BLOCK_STONE":
                        _loc5_ = "Stone";
                        break;
                     case "MATERIAL_BLOCK_ICE":
                        _loc5_ = "Ice";
                        break;
                     case "OTHER_MATERIALS":
                     case "Other_Materials":
                        _loc5_ = "Other_Materials";
                  }
               }
               _loc6_ = _loc4_.§'#I§(_loc5_,param1.itemName);
               if(_loc7_ = §`"!§.§6S§(param1.itemName))
               {
                  if(_loc7_[param2.§;#B§()])
                  {
                     _loc6_ = _loc6_ > _loc7_[param2.§;#B§()] ? Number(_loc7_[param2.§;#B§()]) : Number(_loc6_);
                  }
                  else if(_loc7_["DEFAULT"])
                  {
                     _loc6_ = _loc6_ > _loc7_["DEFAULT"] ? Number(_loc7_["DEFAULT"]) : Number(_loc6_);
                  }
               }
               _loc3_ *= _loc6_;
            }
         }
         return _loc3_;
      }
      
      override protected function getCollisionForceFactor(param1:§4!y§, param2:§4!y§) : Number
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
            §""x§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §2#%§.§>!Y§ && param1 != §7"L§.§]"2§)
         {
            §!"p§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §7"L§.§]"2§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function § use§(param1:uint) : Vector.<§4!y§>
      {
         var _loc7_:§4!y§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§4!y§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §4$8§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§4!y§> = new Vector.<§4!y§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §4$8§[_loc5_] as §4!y§) && _loc7_ is §6!H§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§4!y§> = new Vector.<§4!y§>();
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
      
      public function get §@"M§() : int
      {
         return §<#,§.§5"Q§;
      }
      
      public function §=#o§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§4!y§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§4!y§> = new Vector.<§4!y§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §3#U§.§#$4§.levelObjects.§&#1§())
         {
            if((_loc7_ = §3#U§.§#$4§.levelObjects.getObject(_loc3_) as §4!y§) is §6!H§)
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
                  _loc8_ = this.§6""§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§@"'§(_loc2_[_loc8_].getBody());
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
               this.§4#N§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §3!+§() : void
      {
         if(this.§3#y§ > this.§8#D§ && !this.§,"3§)
         {
            this.§,"3§ = true;
            §!"p§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§3#y§ = 0;
         }
      }
      
      private function §`$=§() : Object
      {
         var _loc3_:§4!y§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§4!y§> = new Vector.<§4!y§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §3#U§.§#$4§.levelObjects.§&#1§())
         {
            _loc3_ = §3#U§.§#$4§.levelObjects.getObject(_loc2_) as §4!y§;
            if(_loc3_)
            {
               if(_loc3_ is §]o§ && !(_loc3_ is §6!H§) && !(_loc3_ is §?$%§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§6""§(_loc1_.length);
            return this.§@"'§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §6""§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §;#b§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §@"'§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§4!y§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         var _loc2_:b2Vec2 = new b2Vec2(0,§3#U§.§,$>§() * §%!q§.§3#X§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§9#`§ = param1.GetTransform();
         _loc5_.§1#_§ = new b2DistanceProxy();
         _loc5_.§1#_§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§0#!§ = true;
         var _loc6_:Number = §%!q§.§!d§;
         var _loc10_:Number = 0;
         while(_loc10_ < §3#U§.§#$4§.levelObjects.§&#1§())
         {
            if(_loc19_ = §3#U§.§#$4§.levelObjects.getObject(_loc10_) as §4!y§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§83§() || _loc19_.§=$,§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc20_ = _loc19_.getBody().GetFixtureList();
                  _loc5_.§33§ = _loc19_.getBody().GetTransform();
                  _loc5_.§6"e§ = new b2DistanceProxy();
                  _loc5_.§6"e§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§3n§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§`"L§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§`"L§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§;#"§;
                     _loc9_ = _loc21_.§`"L§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §%!q§.§!d§,_loc11_.y - _loc13_ * §%!q§.§!d§);
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
      
      public function §4#N§(param1:Object) : void
      {
         if(!this.§`#[§)
         {
            this.§`#[§ = new Vector.<Object>();
         }
         this.§`#[§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§<#,§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§##u§ = null;
         if(this.§`#[§ != null)
         {
            this.§3#y§ += param1;
            _loc2_ = this.§`#[§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§`#[§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§!#L§.ID_NEXT_FREE,false,false,false,1,false) as §<#,§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§7i§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§]#?§();
               }
               this.§`#[§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§3!+§();
         }
         if(this.§[#>§ != null)
         {
            _loc2_ = this.§[#>§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§[#>§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §%!q§.§6q§;
                  (_loc9_ = §##u§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§!#L§.ID_NEXT_FREE,false,false,false,1,false))).§7i§(_loc4_,_loc5_);
               }
               this.§[#>§.splice(_loc2_,1);
               _loc2_--;
            }
         }
         this.§[!§();
         super.updateObjects(param1);
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§[#>§ != null && this.§[#>§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§[#>§ != null && this.§[#>§.length != 0)
         {
            _loc2_ += this.§[#>§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§[#>§ != null && this.§[#>§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §1$!§(param1:§3!1§) : §#H§
      {
         return §5#1§(param1);
      }
      
      override protected function ignoreExplosion(param1:§4!y§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §6$"§)
         {
            return true;
         }
         if(param1 is §2">§ && (param2 == §2#%§.§+"H§ || param2 == §2#%§.§>!Y§ || param2 == §2#%§.§=#U§))
         {
            return true;
         }
         if(param1 is §##8§)
         {
            return true;
         }
         if(param1 is § $<§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§#H§ = null;
         if(§7"]§.§<,§() == §4"c§.§]#q§.§5"g§)
         {
            _loc1_ = §4!V§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §4!V§[_loc1_ - 1] as §#H§;
               if(!_loc2_.§%#Z§ || !(_loc2_.§%#Z§.§94§().GetUserData() is §6$"§ || _loc2_.§%#Z§.§=#O§().GetUserData() is §6$"§))
               {
                  _loc2_ = §4!V§[_loc1_ - 1];
                  §;!-§(_loc2_);
                  §4!V§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§4!y§) : void
      {
         var _loc2_:§+$9§ = null;
         for each(_loc2_ in §`"j§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§1#X§ = true;
            }
         }
      }
      
      public function §8"2§(param1:§'$4§) : §'$4§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §4$8§.length)
         {
            if(§4$8§[_loc2_] is §'$4§ && §4$8§[_loc2_] != param1 && !(§4$8§[_loc2_] as §'$4§).§=#?§() && §4$8§[_loc2_].levelItem == param1.levelItem)
            {
               return §4$8§[_loc2_] as §'$4§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!§() : void
      {
         var _loc3_:int = 0;
         if(this.§`"r§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §4$8§.length)
         {
            if(§4$8§[_loc3_] is §'$4§)
            {
               _loc1_ = true;
               if(!(§4$8§[_loc3_] as §'$4§).§#>§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§`"r§ = true;
         }
         else if(_loc2_)
         {
            (§3#U§.§#$4§.objects as §!#L§).generateTerrainTexture();
            (§3#U§.§#$4§.objects as §!#L§).setTexture(true);
            this.§`"r§ = true;
         }
      }
      
      public function get §""W§() : Boolean
      {
         return this.§`"r§;
      }
      
      override public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         §;C§.push(§7"L§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
   }
}
