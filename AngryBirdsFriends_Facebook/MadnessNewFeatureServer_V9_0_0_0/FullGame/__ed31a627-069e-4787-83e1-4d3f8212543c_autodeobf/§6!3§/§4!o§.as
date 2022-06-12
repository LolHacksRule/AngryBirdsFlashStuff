package §6!3§
{
   import §!#C§.§4!Q§;
   import §&n§.§6"r§;
   import §'G§.§;D§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §-#X§.§,!B§;
   import §-#X§.§0!H§;
   import §-#X§.§9#J§;
   import §-#X§.§^"B§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §1#]§.b2Contact;
   import §4$E§.b2Distance;
   import §4$E§.b2DistanceInput;
   import §4$E§.b2DistanceOutput;
   import §4$E§.b2DistanceProxy;
   import §4$E§.b2RayCastInput;
   import §4$E§.b2RayCastOutput;
   import §4$E§.b2SimplexCache;
   import §6#H§.Sprite;
   import §7$?§.§,"6§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>2§.§!6§;
   import §>z§.ErrorPopup;
   import §?!C§.b2Vec2;
   import §?$<§.§6f§;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §4!o§ extends §"#Z§
   {
      
      private static const §5!^§:int = 150;
      
      private static const § r§:int = 3;
       
      
      public var §?I§:Sprite;
      
      private var §?"p§:int = 0;
      
      private var mLevelManager:§;"n§;
      
      private var §?"J§:Boolean;
      
      protected var §;"=§:Vector.<Object>;
      
      protected var §1#Z§:Vector.<Object>;
      
      protected var §6"l§:Number = 0;
      
      private var §#"O§:Number = 2000;
      
      private var §,$!§:Boolean = false;
      
      public function §4!o§(param1:§!6§, param2:§;"n§, param3:§7!J§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§?I§ = new Sprite();
         this.§?I§.§?#N§ = false;
         this.§?"J§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§,!B§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §!y§
      {
         var returnObject:§!y§ = null;
         var model:§,!B§ = param1;
         var id:int = param2;
         var trail:Boolean = param3;
         var activeObject:Boolean = param4;
         var tryToScream:Boolean = param5;
         var scale:Number = param6;
         var overlay:Boolean = param7;
         var inFrontObject:Boolean = param8;
         try
         {
            returnObject = super.addObjectFromModel(model,id,trail,activeObject,tryToScream,scale,overlay,inFrontObject);
            return returnObject;
         }
         catch(e:Error)
         {
            return null;
         }
      }
      
      override protected function isFoundEasterEgg(param1:String) : Boolean
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:Boolean = false;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc3_ = param1.split("_");
            _loc4_ = _loc3_[_loc3_.length - 1];
            _loc5_ = "1000-" + _loc4_;
            if((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§^!^§(_loc5_))
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function §6$B§(param1:§;!U§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §,s§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §4!Q§
      {
         return §4!Q§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§?I§.x = -param1;
         this.§?I§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§,!B§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §!y§
      {
         var levelItem:§?$>§ = null;
         var model:§,!B§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = §5#0§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = §5#0§.levelItemManager.getItem(§+$+§.§ !V§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §+$+§(sprite,§5#0§.animationManager.getAnimation(levelItem.itemName),§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§;D§ = §5#0§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §8!3§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §!"A§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §<!R§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §^$4§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §?"!§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §#n§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §@!_§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §+$6§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §7#q§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §@"U§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §7$+§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new §,#U§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new §"9§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("HalloweenSmallPiglette") == 0 || model.type.indexOf("HalloweenMediumPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0 || model.type.indexOf("HalloweenHelmetPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0)
         {
            return new §7!s§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new §"#i§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §0"i§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§6"r§.§;#G§) == 0)
            {
               return new §6"r§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new §[!g§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("FIRE_BLOCK") == 0)
            {
               if(model.type.indexOf("FIRE_BLOCK_SPARK") == 0)
               {
                  return new §-#9§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
               }
               return new §5j§(sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new §,!;§(§'##§.§`"H§.brandedTournamentAssetId,sprite,animation,§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
            levelItem = §5#0§.levelItemManager.getItem(§+$+§.§ !V§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §+$+§(sprite,§5#0§.animationManager.getAnimation(levelItem.itemName),§5#0§.mLevelEngine.mWorld,levelItem,model,scale);
         }
      }
      
      public function §,"r§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §@!_§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§'!§.ID_NEXT_FREE,false,false,false,param4) as §@!_§;
      }
      
      override protected function addObjectPig(param1:§,!B§, param2:Sprite, param3:§;D§, param4:§?$>§, param5:Number = 1.0) : §>#p§
      {
         if((this.mLevelManager as §;#A§).§5"G§() && §'##§.§`"H§.§false§())
         {
            return new §%#E§(param2,param3,§5#0§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return new §`i§(param2,param3,§5#0§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §3w§(param1:Object) : void
      {
         if(!this.§;"=§)
         {
            this.§;"=§ = new Vector.<Object>();
         }
         this.§;"=§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §0#J§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§;!U§) : §,"6§
      {
         return §`5§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§;!U§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§>#x§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§&$1§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §&"!§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§!y§, param2:§!y§) : Boolean
      {
         return param1.§7$;§ > §5!^§ || param2.§7$;§ > §5!^§ || §[!a§(param1,param2);
      }
      
      override public function objectCollision(param1:§!y§, param2:§!y§, param3:b2Contact) : Boolean
      {
         var _loc4_:§<!R§ = null;
         var _loc5_:§!"A§ = null;
         if(param1 is §@!_§ && param2 is §@!_§)
         {
            if(!(param1 as §@!_§).§=!d§ && !(param2 as §@!_§).§=!d§)
            {
               return false;
            }
         }
         if(param1 is §!"A§ && param2 is §<!R§ || param2 is §!"A§ && param1 is §<!R§)
         {
            _loc4_ = §<!R§(param1 is §<!R§ ? param1 : param2);
            if((_loc5_ = §!"A§(param1 is §!"A§ ? param1 : param2)).§5"'§ > 0 && _loc5_.§"#v§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §?"!§ || param2 is §?"!§)
         {
            if(param1 is §?"!§)
            {
               if(param2 is §,s§)
               {
                  return true;
               }
               if(param2 is §?"!§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §6!w§.§="4§)
               {
                  return true;
               }
            }
            else if(param2 is §?"!§)
            {
               if(param1 is §,s§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §6!w§.§="4§)
               {
                  return true;
               }
            }
         }
         if(param1 is §0"i§)
         {
            if((param1 as §0"i§).§9"y§(param2))
            {
               return true;
            }
         }
         if(param2 is §0"i§)
         {
            if((param2 as §0"i§).§9"y§(param1))
            {
               return true;
            }
         }
         if(param1 is §6"r§)
         {
            (param1 as §6"r§).§2!>§();
            return true;
         }
         if(param2 is §6"r§)
         {
            (param2 as §6"r§).§2!>§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§7n§.§6#K§.§'m§ < 2000)
            {
               return true;
            }
            §3Z§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§!y§, param2:§!y§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §0"i§)
         {
            (param1 as §0"i§).§ #_§(param2);
         }
         if(param2 is §0"i§)
         {
            (param2 as §0"i§).§ #_§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§;!U§, param2:§;!U§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§ $<§ = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(param2 is §,s§)
         {
            return 1;
         }
         _loc3_ = param1.§%!5§(param2.§5"1§());
         if(param1 is §,s§)
         {
            if(_loc4_ = param1.§[!Z§("slingShotAbility") as § $<§)
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
               _loc6_ = _loc4_.§!#P§(_loc5_,param1.itemName);
               if(_loc7_ = §6f§.§6"[§(param1.itemName))
               {
                  if(_loc7_[param2.§5"1§()])
                  {
                     _loc6_ = _loc6_ > _loc7_[param2.§5"1§()] ? Number(_loc7_[param2.§5"1§()]) : Number(_loc6_);
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
      
      override protected function getCollisionForceFactor(param1:§;!U§, param2:§;!U§) : Number
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
            §&"!§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §>#x§.§0#6§ && param1 != §@"e§.§=#N§)
         {
            §3Z§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §@"e§.§=#N§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §0"t§(param1:uint) : Vector.<§;!U§>
      {
         var _loc7_:§;!U§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§;!U§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §,N§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§;!U§> = new Vector.<§;!U§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §,N§[_loc5_] as §;!U§) && _loc7_ is §>#p§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§;!U§> = new Vector.<§;!U§>();
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
      
      public function get §>"R§() : int
      {
         return §@"U§.§!E§;
      }
      
      public function §0#H§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§;!U§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§;!U§> = new Vector.<§;!U§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §7n§.§6#K§.levelObjects.§&P§())
         {
            if((_loc7_ = §7n§.§6#K§.levelObjects.getObject(_loc3_) as §;!U§) is §>#p§)
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
                  _loc8_ = this.§!!w§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§`$?§(_loc2_[_loc8_].getBody());
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
               this.§9C§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §?#R§() : void
      {
         if(this.§6"l§ > this.§#"O§ && !this.§,$!§)
         {
            this.§,$!§ = true;
            §3Z§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§6"l§ = 0;
         }
      }
      
      private function §^#Z§() : Object
      {
         var _loc3_:§;!U§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§;!U§> = new Vector.<§;!U§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §7n§.§6#K§.levelObjects.§&P§())
         {
            _loc3_ = §7n§.§6#K§.levelObjects.getObject(_loc2_) as §;!U§;
            if(_loc3_)
            {
               if(_loc3_ is §^#x§ && !(_loc3_ is §>#p§) && !(_loc3_ is §,s§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§!!w§(_loc1_.length);
            return this.§`$?§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §!!w§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §[?§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §`$?§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§;!U§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         var _loc2_:b2Vec2 = new b2Vec2(0,§7n§.§8j§() * §!6§.§%$E§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§?"g§ = param1.GetTransform();
         _loc5_.§-!x§ = new b2DistanceProxy();
         _loc5_.§-!x§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§-!H§ = true;
         var _loc6_:Number = §!6§.§>"9§;
         var _loc10_:Number = 0;
         while(_loc10_ < §7n§.§6#K§.levelObjects.§&P§())
         {
            if(_loc19_ = §7n§.§6#K§.levelObjects.getObject(_loc10_) as §;!U§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§4"v§() || _loc19_.§5!u§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc20_ = _loc19_.getBody().GetFixtureList();
                  _loc5_.§'>§ = _loc19_.getBody().GetTransform();
                  _loc5_.§#"X§ = new b2DistanceProxy();
                  _loc5_.§#"X§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§8#5§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§9J§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§9J§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§?"0§;
                     _loc9_ = _loc21_.§9J§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §!6§.§>"9§,_loc11_.y - _loc13_ * §!6§.§>"9§);
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
      
      public function §9C§(param1:Object) : void
      {
         if(!this.§1#Z§)
         {
            this.§1#Z§ = new Vector.<Object>();
         }
         this.§1#Z§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         this.§4l§(param1);
         this.§7!v§();
         super.updateObjects(param1);
      }
      
      protected function §4l§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§@"U§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§7!s§ = null;
         if(this.§1#Z§ != null)
         {
            this.§6"l§ += param1;
            _loc2_ = this.§1#Z§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§1#Z§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§'!§.ID_NEXT_FREE,false,false,false,1,false) as §@"U§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§-#I§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§]"y§();
               }
               this.§1#Z§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§?#R§();
         }
         if(this.§;"=§ != null)
         {
            _loc2_ = this.§;"=§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§;"=§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §!6§.§[#v§;
                  (_loc9_ = §7!s§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§'!§.ID_NEXT_FREE,false,false,false,1,false))).§-#I§(_loc4_,_loc5_);
               }
               this.§;"=§.splice(_loc2_,1);
               _loc2_--;
            }
         }
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§;"=§ != null && this.§;"=§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§;"=§ != null && this.§;"=§.length != 0)
         {
            _loc2_ += this.§;"=§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§;"=§ != null && this.§;"=§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §--§(param1:§0!H§) : §9#J§
      {
         return §>""§(param1);
      }
      
      override protected function ignoreExplosion(param1:§;!U§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §"#i§)
         {
            return true;
         }
         if(param1 is §?"!§ && (param2 == §>#x§.§,"p§ || param2 == §>#x§.§0#6§ || param2 == §>#x§.§1$,§))
         {
            return true;
         }
         if(param1 is §6"r§)
         {
            return true;
         }
         if(param1 is §"9§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§9#J§ = null;
         if(§<U§.§='§() == §0$@§.§9!§.§1#7§)
         {
            _loc1_ = §&!y§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §&!y§[_loc1_ - 1] as §9#J§;
               if(!_loc2_.§ !§ || !(_loc2_.§ !§.§"#2§().GetUserData() is §"#i§ || _loc2_.§ !§.§1"z§().GetUserData() is §"#i§))
               {
                  _loc2_ = §&!y§[_loc1_ - 1];
                  §7#D§(_loc2_);
                  §&!y§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§;!U§) : void
      {
         var _loc2_:§^"B§ = null;
         for each(_loc2_ in §;!b§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§'"Z§ = true;
            }
         }
      }
      
      public function §6$D§(param1:§0"i§) : §0"i§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,N§.length)
         {
            if(§,N§[_loc2_] is §0"i§ && §,N§[_loc2_] != param1 && !(§,N§[_loc2_] as §0"i§).§+#1§() && §,N§[_loc2_].levelItem == param1.levelItem)
            {
               return §,N§[_loc2_] as §0"i§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7!v§() : void
      {
         var _loc3_:int = 0;
         if(this.§?"J§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §,N§.length)
         {
            if(§,N§[_loc3_] is §0"i§)
            {
               _loc1_ = true;
               if(!(§,N§[_loc3_] as §0"i§).§,$3§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§?"J§ = true;
         }
         else if(_loc2_)
         {
            (§7n§.§6#K§.objects as §'!§).generateTerrainTexture();
            (§7n§.§6#K§.objects as §'!§).setTexture(true);
            this.§?"J§ = true;
         }
      }
      
      public function get §8"X§() : Boolean
      {
         return this.§?"J§;
      }
      
      override public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         §>`§.push(§@"e§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
   }
}
