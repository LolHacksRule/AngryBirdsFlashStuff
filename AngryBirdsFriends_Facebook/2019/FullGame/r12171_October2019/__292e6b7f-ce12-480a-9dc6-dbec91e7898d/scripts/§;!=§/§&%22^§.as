package §;!=§
{
   import § !N§.§2m§;
   import § !N§.§5"?§;
   import § !N§.§]!#§;
   import § !N§.§^#C§;
   import §!L§.§`#u§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §+!Y§.§3!B§;
   import §+!Y§.§="S§;
   import §+!Y§.§[@§;
   import §,#,§.§=#o§;
   import §,#E§.b2Distance;
   import §,#E§.b2DistanceInput;
   import §,#E§.b2DistanceOutput;
   import §,#E§.b2DistanceProxy;
   import §,#E§.b2RayCastInput;
   import §,#E§.b2RayCastOutput;
   import §,#E§.b2SimplexCache;
   import §,#e§.Sprite;
   import §-#F§.b2Contact;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7#$§.§8$%§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8#K§.§&2§;
   import §8#K§.§<!E§;
   import §9#G§.§[$#§;
   import §?#z§.§]$?§;
   import §?Q§.ErrorPopup;
   import §`!Z§.§7J§;
   import §`,§.§7!$§;
   import flash.geom.Point;
   
   public class §&"^§ extends §0!L§
   {
      
      private static const §#!%§:int = 150;
      
      private static const §^#8§:int = 3;
       
      
      public var §1!o§:Sprite;
      
      private var §,#Q§:int = 0;
      
      private var mLevelManager:§]#q§;
      
      private var §=#e§:Boolean;
      
      protected var §&!H§:Vector.<Object>;
      
      protected var §]"Y§:Vector.<Object>;
      
      protected var §5E§:Number = 0;
      
      private var §'"]§:Number = 2000;
      
      private var §#$6§:Boolean = false;
      
      public function §&"^§(param1:§8#3§, param2:§]#q§, param3:§?# §, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§1!o§ = new Sprite();
         this.§1!o§.§4"e§ = false;
         this.§=#e§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§5"?§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §'#N§
      {
         var returnObject:§'#N§ = null;
         var model:§5"?§ = param1;
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
            if((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§`p§(_loc5_))
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function §;#0§(param1:§>"G§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §[!k§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §=#o§
      {
         return §=#o§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§1!o§.x = -param1;
         this.§1!o§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§5"?§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §'#N§
      {
         var levelItem:§&2§ = null;
         var model:§5"?§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = §9!E§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = §9!E§.levelItemManager.getItem(§>"W§.§@!4§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §>"W§(sprite,§9!E§.animationManager.getAnimation(levelItem.itemName),§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§7b§ = §9!E§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new § $3§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §@#^§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §'$,§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §9#&§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new §?!F§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §;#5§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §8!o§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §!!S§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §7!w§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §;!h§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §0![§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new §+#v§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new §`G§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("HalloweenSmallPiglette") == 0 || model.type.indexOf("HalloweenMediumPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0 || model.type.indexOf("HalloweenHelmetPiglette") == 0 || model.type.indexOf("HalloweenLargePiglette") == 0)
         {
            return new §7#1§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new § !2§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §2"r§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§7J§.§>[§) == 0)
            {
               return new §7J§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new §["o§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("FIRE_BLOCK") == 0)
            {
               if(model.type.indexOf("FIRE_BLOCK_SPARK") == 0)
               {
                  return new §="#§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
               }
               return new §7#>§(sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new §3#N§(§7!$§.§+!,§.brandedTournamentAssetId,sprite,animation,§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
            levelItem = §9!E§.levelItemManager.getItem(§>"W§.§@!4§);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new §>"W§(sprite,§9!E§.animationManager.getAnimation(levelItem.itemName),§9!E§.mLevelEngine.mWorld,levelItem,model,scale);
         }
      }
      
      public function §?#G§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §8!o§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§ !i§.ID_NEXT_FREE,false,false,false,param4) as §8!o§;
      }
      
      override protected function addObjectPig(param1:§5"?§, param2:Sprite, param3:§7b§, param4:§&2§, param5:Number = 1.0) : §#!m§
      {
         if((this.mLevelManager as §8$%§).§4$,§() && §7!$§.§+!,§.§+v§())
         {
            return new §,Y§(param2,param3,§9!E§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return new §&#§(param2,param3,§9!E§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §""?§(param1:Object) : void
      {
         if(!this.§&!H§)
         {
            this.§&!H§ = new Vector.<Object>();
         }
         this.§&!H§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §=![§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§>"G§) : §[$#§
      {
         return §2#L§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§>"G§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§-!J§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§&#i§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §-!D§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§'#N§, param2:§'#N§) : Boolean
      {
         return param1.§1!j§ > §#!%§ || param2.§1!j§ > §#!%§ || §0B§(param1,param2);
      }
      
      override public function objectCollision(param1:§'#N§, param2:§'#N§, param3:b2Contact) : Boolean
      {
         var _loc4_:§'$,§ = null;
         var _loc5_:§@#^§ = null;
         if(param1 is §8!o§ && param2 is §8!o§)
         {
            if(!(param1 as §8!o§).§[#6§ && !(param2 as §8!o§).§[#6§)
            {
               return false;
            }
         }
         if(param1 is §@#^§ && param2 is §'$,§ || param2 is §@#^§ && param1 is §'$,§)
         {
            _loc4_ = §'$,§(param1 is §'$,§ ? param1 : param2);
            if((_loc5_ = §@#^§(param1 is §@#^§ ? param1 : param2)).§;#@§ > 0 && _loc5_.§]#"§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is §?!F§ || param2 is §?!F§)
         {
            if(param1 is §?!F§)
            {
               if(param2 is §[!k§)
               {
                  return true;
               }
               if(param2 is §?!F§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §6!7§.§7!_§)
               {
                  return true;
               }
            }
            else if(param2 is §?!F§)
            {
               if(param1 is §[!k§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §6!7§.§7!_§)
               {
                  return true;
               }
            }
         }
         if(param1 is §2"r§)
         {
            if((param1 as §2"r§).§ #D§(param2))
            {
               return true;
            }
         }
         if(param2 is §2"r§)
         {
            if((param2 as §2"r§).§ #D§(param1))
            {
               return true;
            }
         }
         if(param1 is §7J§)
         {
            (param1 as §7J§).§-"<§();
            return true;
         }
         if(param2 is §7J§)
         {
            (param2 as §7J§).§-"<§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§]$?§.§2#§.§>e§ < 2000)
            {
               return true;
            }
            § b§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§'#N§, param2:§'#N§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §2"r§)
         {
            (param1 as §2"r§).§9"Y§(param2);
         }
         if(param2 is §2"r§)
         {
            (param2 as §2"r§).§9"Y§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§>"G§, param2:§>"G§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§3!B§ = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(param2 is §[!k§)
         {
            return 1;
         }
         _loc3_ = param1.§-#§(param2.§=#a§());
         if(param1 is §[!k§)
         {
            if(_loc4_ = param1.§["7§("slingShotAbility") as §3!B§)
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
               _loc6_ = _loc4_.§`!v§(_loc5_,param1.itemName);
               if(_loc7_ = §<!E§.§5!r§(param1.itemName))
               {
                  if(_loc7_[param2.§=#a§()])
                  {
                     _loc6_ = _loc6_ > _loc7_[param2.§=#a§()] ? Number(_loc7_[param2.§=#a§()]) : Number(_loc6_);
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
      
      override protected function getCollisionForceFactor(param1:§>"G§, param2:§>"G§) : Number
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
            §-!D§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §-!J§.§[K§ && param1 != §,c§.§&!"§)
         {
            § b§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §,c§.§&!"§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §[#G§(param1:uint) : Vector.<§>"G§>
      {
         var _loc7_:§>"G§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§>"G§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §1#s§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§>"G§> = new Vector.<§>"G§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §1#s§[_loc5_] as §>"G§) && _loc7_ is §#!m§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§>"G§> = new Vector.<§>"G§>();
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
      
      public function get §6Y§() : int
      {
         return §;!h§.§!t§;
      }
      
      public function §-"g§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§>"G§> = new Vector.<§>"G§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §]$?§.§2#§.levelObjects.§-B§())
         {
            if((_loc7_ = §]$?§.§2#§.levelObjects.getObject(_loc3_) as §>"G§) is §#!m§)
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
                  _loc8_ = this.§7#v§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§2!H§(_loc2_[_loc8_].getBody());
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
               this.§5#q§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §9#k§() : void
      {
         if(this.§5E§ > this.§'"]§ && !this.§#$6§)
         {
            this.§#$6§ = true;
            § b§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§5E§ = 0;
         }
      }
      
      private function §4#H§() : Object
      {
         var _loc3_:§>"G§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§>"G§> = new Vector.<§>"G§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §]$?§.§2#§.levelObjects.§-B§())
         {
            _loc3_ = §]$?§.§2#§.levelObjects.getObject(_loc2_) as §>"G§;
            if(_loc3_)
            {
               if(_loc3_ is §1!y§ && !(_loc3_ is §#!m§) && !(_loc3_ is §[!k§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§7#v§(_loc1_.length);
            return this.§2!H§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §7#v§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §""5§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §2!H§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§>"G§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         var _loc2_:b2Vec2 = new b2Vec2(0,§]$?§.§""4§() * §8#3§.§#!B§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§8"Z§ = param1.GetTransform();
         _loc5_.§2$A§ = new b2DistanceProxy();
         _loc5_.§2$A§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§2!J§ = true;
         var _loc6_:Number = §8#3§.§1!=§;
         var _loc10_:Number = 0;
         while(_loc10_ < §]$?§.§2#§.levelObjects.§-B§())
         {
            if(_loc19_ = §]$?§.§2#§.levelObjects.getObject(_loc10_) as §>"G§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§%@§() || _loc19_.§&"R§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc20_ = _loc19_.getBody().GetFixtureList();
                  _loc5_.§>#J§ = _loc19_.getBody().GetTransform();
                  _loc5_.§^#1§ = new b2DistanceProxy();
                  _loc5_.§^#1§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§"!t§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§56§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§56§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§3"J§;
                     _loc9_ = _loc21_.§56§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §8#3§.§1!=§,_loc11_.y - _loc13_ * §8#3§.§1!=§);
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
      
      public function §5#q§(param1:Object) : void
      {
         if(!this.§]"Y§)
         {
            this.§]"Y§ = new Vector.<Object>();
         }
         this.§]"Y§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         this.§9#;§(param1);
         this.§@$D§();
         super.updateObjects(param1);
      }
      
      protected function §9#;§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§;!h§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§7#1§ = null;
         if(this.§]"Y§ != null)
         {
            this.§5E§ += param1;
            _loc2_ = this.§]"Y§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§]"Y§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§ !i§.ID_NEXT_FREE,false,false,false,1,false) as §;!h§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§"!s§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§4s§();
               }
               this.§]"Y§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§9#k§();
         }
         if(this.§&!H§ != null)
         {
            _loc2_ = this.§&!H§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§&!H§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §8#3§.§2K§;
                  (_loc9_ = §7#1§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§ !i§.ID_NEXT_FREE,false,false,false,1,false))).§"!s§(_loc4_,_loc5_);
               }
               this.§&!H§.splice(_loc2_,1);
               _loc2_--;
            }
         }
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§&!H§ != null && this.§&!H§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§&!H§ != null && this.§&!H§.length != 0)
         {
            _loc2_ += this.§&!H§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§&!H§ != null && this.§&!H§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §'#k§(param1:§2m§) : §]!#§
      {
         return §%$§(param1);
      }
      
      override protected function ignoreExplosion(param1:§>"G§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is § !2§)
         {
            return true;
         }
         if(param1 is §?!F§ && (param2 == §-!J§.§'"$§ || param2 == §-!J§.§[K§ || param2 == §-!J§.§]#V§))
         {
            return true;
         }
         if(param1 is §7J§)
         {
            return true;
         }
         if(param1 is §`G§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§]!#§ = null;
         if(§="S§.§2!c§() == §[@§.§;"c§.§8t§)
         {
            _loc1_ = §5!-§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §5!-§[_loc1_ - 1] as §]!#§;
               if(!_loc2_.§?#§ || !(_loc2_.§?#§.§0I§().GetUserData() is § !2§ || _loc2_.§?#§.§2"y§().GetUserData() is § !2§))
               {
                  _loc2_ = §5!-§[_loc1_ - 1];
                  §!!I§(_loc2_);
                  §5!-§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§>"G§) : void
      {
         var _loc2_:§^#C§ = null;
         for each(_loc2_ in §-#S§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§##B§ = true;
            }
         }
      }
      
      public function §^#e§(param1:§2"r§) : §2"r§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §1#s§.length)
         {
            if(§1#s§[_loc2_] is §2"r§ && §1#s§[_loc2_] != param1 && !(§1#s§[_loc2_] as §2"r§).§]$%§() && §1#s§[_loc2_].levelItem == param1.levelItem)
            {
               return §1#s§[_loc2_] as §2"r§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@$D§() : void
      {
         var _loc3_:int = 0;
         if(this.§=#e§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §1#s§.length)
         {
            if(§1#s§[_loc3_] is §2"r§)
            {
               _loc1_ = true;
               if(!(§1#s§[_loc3_] as §2"r§).§'$<§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§=#e§ = true;
         }
         else if(_loc2_)
         {
            (§]$?§.§2#§.objects as § !i§).generateTerrainTexture();
            (§]$?§.§2#§.objects as § !i§).setTexture(true);
            this.§=#e§ = true;
         }
      }
      
      public function get §0"V§() : Boolean
      {
         return this.§=#e§;
      }
      
      override public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         §"#Q§.push(§,c§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
   }
}
