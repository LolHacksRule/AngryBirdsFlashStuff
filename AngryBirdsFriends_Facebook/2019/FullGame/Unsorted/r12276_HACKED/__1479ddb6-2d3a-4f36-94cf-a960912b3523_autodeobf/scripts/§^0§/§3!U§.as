package §^0§
{
   import § "v§.§4$4§;
   import § h§.ErrorPopup;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §+"_§.§ #X§;
   import §-!j§.§-"8§;
   import §-!j§.§^"q§;
   import §-"S§.§>#G§;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §4#$§.§5"L§;
   import §6!R§.b2Vec2;
   import §6"0§.b2Contact;
   import §9#M§.§,`§;
   import §9$A§.b2Distance;
   import §9$A§.b2DistanceInput;
   import §9$A§.b2DistanceOutput;
   import §9$A§.b2DistanceProxy;
   import §9$A§.b2RayCastInput;
   import §9$A§.b2RayCastOutput;
   import §9$A§.b2SimplexCache;
   import §="o§.§>"f§;
   import §>#Y§.§,#b§;
   import §?$#§.§<d§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §@"v§.§0$=§;
   import §@"v§.§5#>§;
   import §@"v§.§6$D§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §3!U§ extends §;$5§
   {
      
      private static const §7"d§:int = 150;
      
      private static const §,!4§:int = 3;
       
      
      public var §]#L§:Sprite;
      
      private var §'"0§:int = 0;
      
      private var mLevelManager:§4#?§;
      
      private var §!A§:Boolean;
      
      protected var §+!m§:Vector.<Object>;
      
      protected var § $#§:Vector.<Object>;
      
      protected var §5,§:Number = 0;
      
      private var §&#B§:Number = 2000;
      
      private var § #6§:Boolean = false;
      
      public function §3!U§(param1:§<d§, param2:§4#?§, param3:§ ^§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§]#L§ = new Sprite();
         this.§]#L§.§^"$§ = false;
         this.§!A§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§@$<§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §4!t§
      {
         var returnObject:§4!t§ = null;
         var model:§@$<§ = param1;
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
         }
         catch(e:Error)
         {
         }
         return returnObject;
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
            if((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§3"^§(_loc5_))
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function §6X§(param1:§=Q§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §[# §)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §,#b§
      {
         return §,#b§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§]#L§.x = -param1;
         this.§]#L§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§@$<§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §4!t§
      {
         var levelItem:§-"8§ = null;
         var model:§@$<§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = § 6§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = § 6§.levelItemManager.getItem(§?#6§.§&";§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §?#6§(sprite,§ 6§.animationManager.getAnimation(levelItem.itemName),§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§,`§ = § 6§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §^![§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §3I§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §0!P§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §@"N§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §##[§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §1#g§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §8#4§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §5!4§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §2$?§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §5#y§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §8"e§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new §[#S§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new §#$%§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("HalloweenSmallPiglette") == 0 || model.type.indexOf("HalloweenMediumPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0 || model.type.indexOf("HalloweenHelmetPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0)
         {
            return new §[!v§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new §`W§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §2!o§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§ #X§.§4" §) == 0)
            {
               return new § #X§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new §[""§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("FIRE_BLOCK") == 0)
            {
               if(model.type.indexOf("FIRE_BLOCK_SPARK") == 0)
               {
                  return new §1&§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
               }
               return new §%"F§(sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new §%!n§(§5"L§.§3"1§.brandedTournamentAssetId,sprite,animation,§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
         }
         error = §§pop();
         levelItem = § 6§.levelItemManager.getItem(§?#6§.§&";§);
         if(!levelItem)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
         }
         return new §?#6§(sprite,§ 6§.animationManager.getAnimation(levelItem.itemName),§ 6§.mLevelEngine.mWorld,levelItem,model,scale);
      }
      
      public function §]$"§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §8#4§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§%"^§.ID_NEXT_FREE,false,false,false,param4) as §8#4§;
      }
      
      override protected function addObjectPig(param1:§@$<§, param2:Sprite, param3:§,`§, param4:§-"8§, param5:Number = 1.0) : §&"e§
      {
         if((this.mLevelManager as §?"m§).§0R§() && §5"L§.§3"1§.§["%§())
         {
            return new §9j§(param2,param3,§ 6§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return new §9;§(param2,param3,§ 6§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §>!^§(param1:Object) : void
      {
         if(!this.§+!m§)
         {
            this.§+!m§ = new Vector.<Object>();
         }
         this.§+!m§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §-z§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§=Q§) : §>"f§
      {
         return §-!7§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§=Q§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§0#;§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§'!!§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §7"f§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§4!t§, param2:§4!t§) : Boolean
      {
         return param1.§<K§ > §7"d§ || param2.§<K§ > §7"d§ || §?"L§(param1,param2);
      }
      
      override public function objectCollision(param1:§4!t§, param2:§4!t§, param3:b2Contact) : Boolean
      {
         var _loc4_:§0!P§ = null;
         var _loc5_:§3I§ = null;
         if(param1 is §8#4§ && param2 is §8#4§)
         {
            if(!(param1 as §8#4§).§7!F§ && !(param2 as §8#4§).§7!F§)
            {
               return false;
            }
         }
         if(param1 is §3I§ && param2 is §0!P§ || param2 is §3I§ && param1 is §0!P§)
         {
            _loc4_ = §0!P§(param1 is §0!P§ ? param1 : param2);
            if((_loc5_ = §3I§(param1 is §3I§ ? param1 : param2)).§2#T§ > 0 && _loc5_.§^8§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §##[§ || param2 is §##[§)
         {
            if(param1 is §##[§)
            {
               if(param2 is §[# §)
               {
                  return true;
               }
               if(param2 is §##[§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §>#U§.§;"l§)
               {
                  return true;
               }
            }
            else if(param2 is §##[§)
            {
               if(param1 is §[# §)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §>#U§.§;"l§)
               {
                  return true;
               }
            }
         }
         if(param1 is §2!o§)
         {
            if((param1 as §2!o§).§=!W§(param2))
            {
               return true;
            }
         }
         if(param2 is §2!o§)
         {
            if((param2 as §2!o§).§=!W§(param1))
            {
               return true;
            }
         }
         if(param1 is § #X§)
         {
            (param1 as § #X§).§@x§();
            return true;
         }
         if(param2 is § #X§)
         {
            (param2 as § #X§).§@x§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§+!p§.§`?§.§4#k§ < 2000)
            {
               return true;
            }
            §4$4§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§4!t§, param2:§4!t§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §2!o§)
         {
            (param1 as §2!o§).§;$!§(param2);
         }
         if(param2 is §2!o§)
         {
            (param2 as §2!o§).§;$!§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§=Q§, param2:§=Q§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§^#i§ = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(param2 is §[# §)
         {
            return 1;
         }
         _loc3_ = param1.§7p§(param2.§!#'§());
         if(param1 is §[# §)
         {
            if(_loc4_ = param1.§7!;§("slingShotAbility") as §^#i§)
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
               _loc6_ = _loc4_.§+$B§(_loc5_,param1.itemName);
               if(_loc7_ = §^"q§.§ "c§(param1.itemName))
               {
                  if(_loc7_[param2.§!#'§()])
                  {
                     _loc6_ = _loc6_ > _loc7_[param2.§!#'§()] ? Number(_loc7_[param2.§!#'§()]) : Number(_loc6_);
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
      
      override protected function getCollisionForceFactor(param1:§=Q§, param2:§=Q§) : Number
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
            §7"f§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §0#;§.§>8§ && param1 != §1!M§.§%!v§)
         {
            §4$4§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §1!M§.§%!v§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §^t§(param1:uint) : Vector.<§=Q§>
      {
         var _loc7_:§=Q§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§=Q§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §!#4§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§=Q§> = new Vector.<§=Q§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §!#4§[_loc5_] as §=Q§) && _loc7_ is §&"e§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§=Q§> = new Vector.<§=Q§>();
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
      
      public function get §=$+§() : int
      {
         return §5#y§.§9b§;
      }
      
      public function §>B§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§=Q§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§=Q§> = new Vector.<§=Q§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §+!p§.§`?§.levelObjects.§,=§())
         {
            if((_loc7_ = §+!p§.§`?§.levelObjects.getObject(_loc3_) as §=Q§) is §&"e§)
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
                  _loc8_ = this.§0#j§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§@!;§(_loc2_[_loc8_].getBody());
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
               this.§9#O§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §`G§() : void
      {
         if(this.§5,§ > this.§&#B§ && !this.§ #6§)
         {
            this.§ #6§ = true;
            §4$4§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§5,§ = 0;
         }
      }
      
      private function §;!L§() : Object
      {
         var _loc3_:§=Q§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§=Q§> = new Vector.<§=Q§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §+!p§.§`?§.levelObjects.§,=§())
         {
            _loc3_ = §+!p§.§`?§.levelObjects.getObject(_loc2_) as §=Q§;
            if(_loc3_)
            {
               if(_loc3_ is §%N§ && !(_loc3_ is §&"e§) && !(_loc3_ is §[# §))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§0#j§(_loc1_.length);
            return this.§@!;§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §0#j§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §!7§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §@!;§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§=Q§ = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         new b2Vec2(0,§+!p§.§[#%§() * §<d§.§2"h§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§]l§ = param1.GetTransform();
         _loc5_.§!S§ = new b2DistanceProxy();
         _loc5_.§!S§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§-"b§ = true;
         var _loc6_:Number = §<d§.§]#Q§;
         var _loc10_:Number = 0;
         while(_loc10_ < §+!p§.§`?§.levelObjects.§,=§())
         {
            if(_loc19_ = §+!p§.§`?§.levelObjects.getObject(_loc10_) as §=Q§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§[#o§() || _loc19_.§0#o§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc19_.getBody().GetFixtureList();
                  _loc5_.§&>§ = _loc19_.getBody().GetTransform();
                  _loc5_.§,"?§ = new b2DistanceProxy();
                  _loc5_.§,"?§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§^#q§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§6V§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§6V§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§`$A§;
                     _loc9_ = _loc21_.§6V§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §<d§.§]#Q§,_loc11_.y - _loc13_ * §<d§.§]#Q§);
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
      
      public function §9#O§(param1:Object) : void
      {
         if(!this.§ $#§)
         {
            this.§ $#§ = new Vector.<Object>();
         }
         this.§ $#§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         this.§5#2§(param1);
         this.§4",§();
         super.updateObjects(param1);
      }
      
      protected function §5#2§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§5#y§ = null;
         var _loc8_:Number = NaN;
         if(this.§ $#§ != null)
         {
            this.§5,§ += param1;
            _loc2_ = this.§ $#§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§ $#§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§%"^§.ID_NEXT_FREE,false,false,false,1,false) as §5#y§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§8!Q§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§,#0§();
               }
               this.§ $#§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§`G§();
         }
         if(this.§+!m§ != null)
         {
            _loc2_ = this.§+!m§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§+!m§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §<d§.§6@§;
                  §[!v§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§%"^§.ID_NEXT_FREE,false,false,false,1,false)).§8!Q§(_loc4_,_loc5_);
               }
               this.§+!m§.splice(_loc2_,1);
               _loc2_--;
            }
         }
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§+!m§ != null && this.§+!m§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§+!m§ != null && this.§+!m§.length != 0)
         {
            _loc2_ += this.§+!m§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§+!m§ != null && this.§+!m§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §+"'§(param1:§0$=§) : §6$D§
      {
         return §0#t§(param1);
      }
      
      override protected function ignoreExplosion(param1:§=Q§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §`W§)
         {
            return true;
         }
         if(param1 is §##[§ && (param2 == §0#;§.§ do§ || param2 == §0#;§.§>8§ || param2 == §0#;§.§`"9§))
         {
            return true;
         }
         if(param1 is § #X§)
         {
            return true;
         }
         if(param1 is §#$%§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§6$D§ = null;
         if(§!"=§.§!$#§() == §[9§.§%"<§.§=#@§)
         {
            _loc1_ = §&$D§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §&$D§[_loc1_ - 1] as §6$D§;
               if(!_loc2_.§<!"§ || !(_loc2_.§<!"§.§""V§().GetUserData() is §`W§ || _loc2_.§<!"§.§""?§().GetUserData() is §`W§))
               {
                  _loc2_ = §&$D§[_loc1_ - 1];
                  §0!#§(_loc2_);
                  §&$D§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§=Q§) : void
      {
         var _loc2_:§5#>§ = null;
         for each(_loc2_ in §0!W§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§]"`§ = true;
            }
         }
      }
      
      public function §!!E§(param1:§2!o§) : §2!o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §!#4§.length)
         {
            if(§!#4§[_loc2_] is §2!o§ && §!#4§[_loc2_] != param1 && !(§!#4§[_loc2_] as §2!o§).§;j§() && §!#4§[_loc2_].levelItem == param1.levelItem)
            {
               return §!#4§[_loc2_] as §2!o§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §4",§() : void
      {
         var _loc3_:int = 0;
         if(this.§!A§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §!#4§.length)
         {
            if(§!#4§[_loc3_] is §2!o§)
            {
               _loc1_ = true;
               if(!(§!#4§[_loc3_] as §2!o§).§3#J§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§!A§ = true;
         }
         else if(_loc2_)
         {
            (§+!p§.§`?§.objects as §%"^§).generateTerrainTexture();
            (§+!p§.§`?§.objects as §%"^§).setTexture(true);
            this.§!A§ = true;
         }
      }
      
      public function get §"!>§() : Boolean
      {
         return this.§!A§;
      }
      
      override public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         §]#&§.push(§1!M§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
   }
}
