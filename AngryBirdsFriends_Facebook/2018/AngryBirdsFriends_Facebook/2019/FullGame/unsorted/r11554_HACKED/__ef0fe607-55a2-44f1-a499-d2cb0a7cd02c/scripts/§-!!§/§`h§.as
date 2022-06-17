package §-!!§
{
   import § !D§.§'"u§;
   import § O§.§&# §;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!6§.Sprite;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§=$&§;
   import §#!E§.§2#Q§;
   import §+"u§.§^"C§;
   import §0# §.b2Contact;
   import §0J§.b2Distance;
   import §0J§.b2DistanceInput;
   import §0J§.b2DistanceOutput;
   import §0J§.b2DistanceProxy;
   import §0J§.b2RayCastInput;
   import §0J§.b2RayCastOutput;
   import §0J§.b2SimplexCache;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §9$+§.§%L§;
   import §9$+§.§2"<§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.ErrorPopup;
   import §?§.§,Y§;
   import §?§.§1q§;
   import §[";§.§0#m§;
   import §]"'§.§@"%§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import §`n§.§1!f§;
   import flash.geom.Point;
   
   public class §`h§ extends §+#9§
   {
      
      private static const §3#!§:int = 150;
      
      private static const §`7§:int = 3;
       
      
      public var §^"T§:Sprite;
      
      private var §7J§:int = 0;
      
      private var mLevelManager:§'![§;
      
      private var §]"z§:Boolean;
      
      protected var §3!Z§:Vector.<Object>;
      
      protected var §0!'§:Vector.<Object>;
      
      protected var § #V§:Number = 0;
      
      private var §>#Q§:Number = 2000;
      
      private var §=#p§:Boolean = false;
      
      public function §`h§(param1:§'"u§, param2:§'![§, param3:§=$&§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§^"T§ = new Sprite();
         this.§^"T§.§7!w§ = false;
         this.§]"z§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§9"4§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §1#B§
      {
         var returnObject:§1#B§ = null;
         var model:§9"4§ = param1;
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
            if((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§!#h§(_loc5_))
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function §9#c§(param1:§8"J§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §5"W§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §@"%§
      {
         return §@"%§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§^"T§.x = -param1;
         this.§^"T§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§9"4§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §1#B§
      {
         var levelItem:§,Y§ = null;
         var model:§9"4§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = §&!g§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = §&!g§.levelItemManager.getItem(§!!E§.§9!O§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §!!E§(sprite,§&!g§.animationManager.getAnimation(levelItem.itemName),§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§4!8§ = §&!g§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §@d§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §?Z§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §4$'§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §"!%§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §@#f§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §]"S§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §'l§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §=M§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §>#3§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §7+§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §&$;§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new §=K§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new §21§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("HalloweenSmallPiglette") == 0 || model.type.indexOf("HalloweenMediumPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0 || model.type.indexOf("HalloweenHelmetPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0)
         {
            return new §#"+§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new §>m§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §""§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§0#m§.§!"v§) == 0)
            {
               return new §0#m§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new §+!u§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("FIRE_BLOCK") == 0)
            {
               if(model.type.indexOf("FIRE_BLOCK_SPARK") == 0)
               {
                  return new §@!t§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
               }
               return new §""9§(sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new § +§(§^"C§.§?q§.brandedTournamentAssetId,sprite,animation,§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
         }
         error = §§pop();
         levelItem = §&!g§.levelItemManager.getItem(§!!E§.§9!O§);
         if(!levelItem)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
         }
         return new §!!E§(sprite,§&!g§.animationManager.getAnimation(levelItem.itemName),§&!g§.mLevelEngine.mWorld,levelItem,model,scale);
      }
      
      public function §0#y§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §'l§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§7S§.ID_NEXT_FREE,false,false,false,param4) as §'l§;
      }
      
      override protected function addObjectPig(param1:§9"4§, param2:Sprite, param3:§4!8§, param4:§,Y§, param5:Number = 1.0) : §1$<§
      {
         if((this.mLevelManager as §,-§).§"#,§() && §^"C§.§?q§.§%#,§())
         {
            return new §>#q§(param2,param3,§&!g§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return new §"#^§(param2,param3,§&!g§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §<!K§(param1:Object) : void
      {
         if(!this.§3!Z§)
         {
            this.§3!Z§ = new Vector.<Object>();
         }
         this.§3!Z§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §^$<§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§8"J§) : §1!f§
      {
         return §6"e§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§8"J§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§]" §, param2:Number, param3:Number, param4:Number) : void
      {
         super.§;!;§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §?"G§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§1#B§, param2:§1#B§) : Boolean
      {
         return param1.§>"&§ > §3#!§ || param2.§>"&§ > §3#!§ || §-N§(param1,param2);
      }
      
      override public function objectCollision(param1:§1#B§, param2:§1#B§, param3:b2Contact) : Boolean
      {
         var _loc4_:§4$'§ = null;
         var _loc5_:§?Z§ = null;
         if(param1 is §'l§ && param2 is §'l§)
         {
            if(!(param1 as §'l§).§0!@§ && !(param2 as §'l§).§0!@§)
            {
               return false;
            }
         }
         if(param1 is §?Z§ && param2 is §4$'§ || param2 is §?Z§ && param1 is §4$'§)
         {
            _loc4_ = §4$'§(param1 is §4$'§ ? param1 : param2);
            if((_loc5_ = §?Z§(param1 is §?Z§ ? param1 : param2)).§9[§ > 0 && _loc5_.§,L§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §@#f§ || param2 is §@#f§)
         {
            if(param1 is §@#f§)
            {
               if(param2 is §5"W§)
               {
                  return true;
               }
               if(param2 is §@#f§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §<!r§.§&#3§)
               {
                  return true;
               }
            }
            else if(param2 is §@#f§)
            {
               if(param1 is §5"W§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §<!r§.§&#3§)
               {
                  return true;
               }
            }
         }
         if(param1 is §""§)
         {
            if((param1 as §""§).§`"$§(param2))
            {
               return true;
            }
         }
         if(param2 is §""§)
         {
            if((param2 as §""§).§`"$§(param1))
            {
               return true;
            }
         }
         if(param1 is §0#m§)
         {
            (param1 as §0#m§).§'%§();
            return true;
         }
         if(param2 is §0#m§)
         {
            (param2 as §0#m§).§'%§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§%"T§.§;`§.§ # § < 2000)
            {
               return true;
            }
            §[#%§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§1#B§, param2:§1#B§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §""§)
         {
            (param1 as §""§).§`"e§(param2);
         }
         if(param2 is §""§)
         {
            (param2 as §""§).§`"e§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§8"J§, param2:§8"J§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§6f§ = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(param2 is §5"W§)
         {
            return 1;
         }
         _loc3_ = param1.§7"C§(param2.§[#C§());
         if(param1 is §5"W§)
         {
            if(_loc4_ = param1.§,X§("slingShotAbility") as §6f§)
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
               _loc6_ = _loc4_.§8!§(_loc5_,param1.itemName);
               if(_loc7_ = §1q§.§6"@§(param1.itemName))
               {
                  if(_loc7_[param2.§[#C§()])
                  {
                     _loc6_ = _loc6_ > _loc7_[param2.§[#C§()] ? Number(_loc7_[param2.§[#C§()]) : Number(_loc6_);
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
      
      override protected function getCollisionForceFactor(param1:§8"J§, param2:§8"J§) : Number
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
            §?"G§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §]" §.§9'§ && param1 != §"#6§.§90§)
         {
            §[#%§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §"#6§.§90§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §6#?§(param1:uint) : Vector.<§8"J§>
      {
         var _loc7_:§8"J§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§8"J§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §3#$§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§8"J§> = new Vector.<§8"J§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §3#$§[_loc5_] as §8"J§) && _loc7_ is §1$<§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§8"J§> = new Vector.<§8"J§>();
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
      
      public function get §?#l§() : int
      {
         return §7+§.§^!1§;
      }
      
      public function §7"f§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§8"J§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§8"J§> = new Vector.<§8"J§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §%"T§.§;`§.levelObjects.§ "Z§())
         {
            if((_loc7_ = §%"T§.§;`§.levelObjects.getObject(_loc3_) as §8"J§) is §1$<§)
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
                  _loc8_ = this.§9#1§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§5$'§(_loc2_[_loc8_].getBody());
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
               this.§1!B§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §+#-§() : void
      {
         if(this.§ #V§ > this.§>#Q§ && !this.§=#p§)
         {
            this.§=#p§ = true;
            §[#%§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§ #V§ = 0;
         }
      }
      
      private function §-#A§() : Object
      {
         var _loc3_:§8"J§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§8"J§> = new Vector.<§8"J§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §%"T§.§;`§.levelObjects.§ "Z§())
         {
            _loc3_ = §%"T§.§;`§.levelObjects.getObject(_loc2_) as §8"J§;
            if(_loc3_)
            {
               if(_loc3_ is §,!h§ && !(_loc3_ is §1$<§) && !(_loc3_ is §5"W§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§9#1§(_loc1_.length);
            return this.§5$'§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §9#1§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §!U§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §5$'§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§8"J§ = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         new b2Vec2(0,§%"T§.§=$D§() * §'"u§.§`C§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§"#L§ = param1.GetTransform();
         _loc5_.§[$@§ = new b2DistanceProxy();
         _loc5_.§[$@§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§1#%§ = true;
         var _loc6_:Number = §'"u§.§,?§;
         var _loc10_:Number = 0;
         while(_loc10_ < §%"T§.§;`§.levelObjects.§ "Z§())
         {
            if(_loc19_ = §%"T§.§;`§.levelObjects.getObject(_loc10_) as §8"J§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§"!g§() || _loc19_.§&"y§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc19_.getBody().GetFixtureList();
                  _loc5_.§@D§ = _loc19_.getBody().GetTransform();
                  _loc5_.§[#G§ = new b2DistanceProxy();
                  _loc5_.§[#G§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§3$4§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§5$3§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§5$3§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§#!4§;
                     _loc9_ = _loc21_.§5$3§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §'"u§.§,?§,_loc11_.y - _loc13_ * §'"u§.§,?§);
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
      
      public function §1!B§(param1:Object) : void
      {
         if(!this.§0!'§)
         {
            this.§0!'§ = new Vector.<Object>();
         }
         this.§0!'§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         this.§7"L§(param1);
         this.§6"<§();
         super.updateObjects(param1);
      }
      
      protected function §7"L§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§7+§ = null;
         var _loc8_:Number = NaN;
         if(this.§0!'§ != null)
         {
            this.§ #V§ += param1;
            _loc2_ = this.§0!'§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§0!'§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§7S§.ID_NEXT_FREE,false,false,false,1,false) as §7+§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§[!X§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§>#<§();
               }
               this.§0!'§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§+#-§();
         }
         if(this.§3!Z§ != null)
         {
            _loc2_ = this.§3!Z§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§3!Z§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §'"u§.§'#e§;
                  §#"+§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§7S§.ID_NEXT_FREE,false,false,false,1,false)).§[!X§(_loc4_,_loc5_);
               }
               this.§3!Z§.splice(_loc2_,1);
               _loc2_--;
            }
         }
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§3!Z§ != null && this.§3!Z§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§3!Z§ != null && this.§3!Z§.length != 0)
         {
            _loc2_ += this.§3!Z§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§3!Z§ != null && this.§3!Z§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §7!§(param1:§5t§) : §%L§
      {
         return §"#Y§(param1);
      }
      
      override protected function ignoreExplosion(param1:§8"J§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §>m§)
         {
            return true;
         }
         if(param1 is §@#f§ && (param2 == §]" §.§-#v§ || param2 == §]" §.§9'§ || param2 == §]" §.§+#o§))
         {
            return true;
         }
         if(param1 is §0#m§)
         {
            return true;
         }
         if(param1 is §21§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§%L§ = null;
         if(§&# §.§!$0§() == §7!S§.§&"z§.§]'§)
         {
            _loc1_ = § t§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = § t§[_loc1_ - 1] as §%L§;
               if(!_loc2_.§8!E§ || !(_loc2_.§8!E§.§&$#§().GetUserData() is §>m§ || _loc2_.§8!E§.§&!u§().GetUserData() is §>m§))
               {
                  _loc2_ = § t§[_loc1_ - 1];
                  §7#t§(_loc2_);
                  § t§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§8"J§) : void
      {
         var _loc2_:§2"<§ = null;
         for each(_loc2_ in §,"j§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§>"B§ = true;
            }
         }
      }
      
      public function §=#Q§(param1:§""§) : §""§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §3#$§.length)
         {
            if(§3#$§[_loc2_] is §""§ && §3#$§[_loc2_] != param1 && !(§3#$§[_loc2_] as §""§).§6#N§() && §3#$§[_loc2_].levelItem == param1.levelItem)
            {
               return §3#$§[_loc2_] as §""§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6"<§() : void
      {
         var _loc3_:int = 0;
         if(this.§]"z§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §3#$§.length)
         {
            if(§3#$§[_loc3_] is §""§)
            {
               _loc1_ = true;
               if(!(§3#$§[_loc3_] as §""§).§`"P§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§]"z§ = true;
         }
         else if(_loc2_)
         {
            (§%"T§.§;`§.objects as §7S§).generateTerrainTexture();
            (§%"T§.§;`§.objects as §7S§).setTexture(true);
            this.§]"z§ = true;
         }
      }
      
      public function get §^#x§() : Boolean
      {
         return this.§]"z§;
      }
      
      override public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         §0#a§.push(§"#6§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
   }
}
