package §>!5§
{
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §&"J§.§`]§;
   import §+!C§.§!!S§;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §1#W§.§!#&§;
   import §3§.§try §;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §6$"§.§ #F§;
   import §6$"§.§&![§;
   import §6$"§.§4#s§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§2!Y§;
   import §7"^§.b2Distance;
   import §7"^§.b2DistanceInput;
   import §7"^§.b2DistanceOutput;
   import §7"^§.b2DistanceProxy;
   import §7"^§.b2RayCastInput;
   import §7"^§.b2RayCastOutput;
   import §7"^§.b2SimplexCache;
   import §<#m§.§^#o§;
   import §=#C§.§1"r§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §[#L§.b2Contact;
   import §]#K§.§&p§;
   import §];§.§-!t§;
   import flash.geom.Point;
   
   public class §<j§ extends §="Y§
   {
      
      private static const §]"F§:int = 150;
      
      private static const §5#a§:int = 3;
       
      
      public var §,"i§:Sprite;
      
      private var §9"#§:int = 0;
      
      private var mLevelManager:§^#Q§;
      
      private var §#$8§:Boolean;
      
      protected var §["T§:Vector.<Object>;
      
      protected var §&#<§:Vector.<Object>;
      
      protected var §<!N§:Number = 0;
      
      private var §%"1§:Number = 2000;
      
      private var §9!v§:Boolean = false;
      
      public function §<j§(param1:§!!S§, param2:§^#Q§, param3:§]#B§, param4:Sprite, param5:String)
      {
         this.mLevelManager = param2;
         this.§,"i§ = new Sprite();
         this.§,"i§.§ !$§ = false;
         this.§#$8§ = false;
         super(param1,param3,param4,param5);
      }
      
      override protected function addObjectFromModel(param1:§]"o§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §#-§
      {
         var splitItemName:Array = null;
         var lastPart:String = null;
         var easterEggId:String = null;
         var model:§]"o§ = param1;
         var id:int = param2;
         var trail:Boolean = param3;
         var activeObject:Boolean = param4;
         var tryToScream:Boolean = param5;
         var scale:Number = param6;
         var overlay:Boolean = param7;
         var inFrontObject:Boolean = param8;
         var object:§#-§ = null;
         try
         {
            if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
            {
               splitItemName = model.type.split("_");
               lastPart = splitItemName[splitItemName.length - 1];
               easterEggId = "1000-" + lastPart;
               if((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§#!V§(easterEggId))
               {
                  return null;
               }
            }
            object = super.addObjectFromModel(model,id,trail,activeObject,tryToScream,scale,overlay,inFrontObject);
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§^#c§,e.message + " : " + e.getStackTrace()));
         }
         return object;
      }
      
      private function §9$"§(param1:§^"9§) : String
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 is §"7§)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + param1.itemName;
      }
      
      protected function get dataModel() : §`]§
      {
         return §`]§(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§,"i§.x = -param1;
         this.§,"i§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObjectInstance(param1:§]"o§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §#-§
      {
         var levelItem:§!"v§ = null;
         var model:§]"o§ = param1;
         var sprite:Sprite = param2;
         var tryToScream:Boolean = param3;
         var scale:Number = param4;
         levelItem = §`=§.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = §`=§.levelItemManager.getItem(§]$1§.§["A§);
            if(!levelItem)
            {
               throw new Error("Can\'t find level item \'" + model.type + "\'. No temporary block found.");
            }
            return new §]$1§(sprite,§`=§.animationManager.getAnimation(levelItem.itemName),§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:§8#B§ = §`=§.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §8#<§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new §-"I§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new §#"L§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new §^!O§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new § ",§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §<"%§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new §%!8§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §^#8§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §+!c§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §2#%§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §<"V§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("_ZOMBIE") != -1)
         {
            return new §6!"§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(!(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0))
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new §0W§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new §^!§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(§&p§.§+"N§) == 0)
            {
               return new §&p§(sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
         try
         {
            return new §!#a§(§-!t§.§ "D§.brandedTournamentAssetId,sprite,animation,§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
         catch(error:Error)
         {
            levelItem = §`=§.levelItemManager.getItem(§]$1§.§["A§);
            if(!levelItem)
            {
               throw new Error("Can\'t find level item \'" + model.type + "\'. No temporary block found.");
            }
            return new §]$1§(sprite,§`=§.animationManager.getAnimation(levelItem.itemName),§`=§.mLevelEngine.mWorld,levelItem,model,scale);
         }
      }
      
      public function §-!O§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §%!8§
      {
         return addObject("POWERUP_BOMB",param1,param2,param3,§6#-§.ID_NEXT_FREE,false,false,false,param4) as §%!8§;
      }
      
      override protected function addObjectPig(param1:§]"o§, param2:Sprite, param3:§8#B§, param4:§!"v§, param5:Number = 1.0) : §76§
      {
         return new §="U§(param2,param3,§`=§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function §3"w§(param1:Object) : void
      {
         if(!this.§["T§)
         {
            this.§["T§ = new Vector.<Object>();
         }
         this.§["T§.push(param1);
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return §]M§(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§^"9§) : §try §
      {
         return §"#G§(param1,param2,param3);
      }
      
      override protected function applyExplosionDamage(param1:§^"9§, param2:Number, param3:Boolean = false) : void
      {
         super.applyExplosionDamage(param1,param2,Boolean(true));
      }
      
      override protected function updateExplosionEffects(param1:§+!H§, param2:Number, param3:Number, param4:Number) : void
      {
         super.§4""§(param1,param2,param3,param4);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §#2§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§#-§, param2:§#-§) : Boolean
      {
         return param1.§`"b§ > §]"F§ || param2.§`"b§ > §]"F§ || §^"_§(param1,param2);
      }
      
      override public function objectCollision(param1:§#-§, param2:§#-§, param3:b2Contact) : Boolean
      {
         var _loc4_:§#"L§ = null;
         var _loc5_:§-"I§ = null;
         if(param1 is §%!8§ && param2 is §%!8§)
         {
            if(!(param1 as §%!8§).§;D§ && !(param2 as §%!8§).§;D§)
            {
               return false;
            }
         }
         if(param1 is §-"I§ && param2 is §#"L§ || param2 is §-"I§ && param1 is §#"L§)
         {
            _loc4_ = §#"L§(param1 is §#"L§ ? param1 : param2);
            if((_loc5_ = §-"I§(param1 is §-"I§ ? param1 : param2)).§%#6§ > 0 && _loc5_.§-"g§ == _loc4_)
            {
               return true;
            }
         }
         if(param1 is § ",§ || param2 is § ",§)
         {
            if(param1 is § ",§)
            {
               if(param2 is §"7§)
               {
                  return true;
               }
               if(param2 is § ",§)
               {
                  return true;
               }
               if(param2.levelItem && param2.levelItem.itemName == §]!n§.§3#J§)
               {
                  return true;
               }
            }
            else if(param2 is § ",§)
            {
               if(param1 is §"7§)
               {
                  return true;
               }
               if(param1.levelItem && param1.levelItem.itemName == §]!n§.§3#J§)
               {
                  return true;
               }
            }
         }
         if(param1 is §^!§)
         {
            if((param1 as §^!§).§-#D§(param2))
            {
               return true;
            }
         }
         if(param2 is §^!§)
         {
            if((param2 as §^!§).§-#D§(param1))
            {
               return true;
            }
         }
         if(param1 is §&p§)
         {
            (param1 as §&p§).§&!E§();
            return true;
         }
         if(param2 is §&p§)
         {
            (param2 as §&p§).§&!E§();
            return true;
         }
         if(param1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || param1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || param2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(§!#A§.§#F§.§^'§ < 2000)
            {
               return true;
            }
            §!#&§.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      override public function objectCollisionEnded(param1:§#-§, param2:§#-§) : void
      {
         super.objectCollisionEnded(param1,param2);
         if(param1 is §^!§)
         {
            (param1 as §^!§).§?!3§(param2);
         }
         if(param2 is §^!§)
         {
            (param2 as §^!§).§?!3§(param1);
         }
      }
      
      override protected function getCollisionDamageFactor(param1:§^"9§, param2:§^"9§) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:§6!u§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         if(param2 is §"7§)
         {
            return 1;
         }
         _loc3_ = param1.§=!%§(param2.§0!C§());
         if(param1 is §"7§)
         {
            if(_loc4_ = (param1 as §"7§).§1#,§("slingShotAbility") as §6!u§)
            {
               _loc5_ = _loc4_.§,!e§(param2.levelItem.category,param1.itemName);
               if(_loc6_ = §2!Y§.§@"4§(param1.itemName))
               {
                  if(_loc6_[param2.§0!C§()])
                  {
                     _loc5_ = _loc5_ > _loc6_[param2.§0!C§()] ? Number(_loc6_[param2.§0!C§()]) : Number(_loc5_);
                  }
                  else if(_loc6_["DEFAULT"])
                  {
                     _loc5_ = _loc5_ > _loc6_["DEFAULT"] ? Number(_loc6_["DEFAULT"]) : Number(_loc5_);
                  }
               }
               _loc3_ *= _loc5_;
            }
         }
         return _loc3_;
      }
      
      override protected function getCollisionForceFactor(param1:§^"9§, param2:§^"9§) : Number
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
            §#2§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function playExplosionSound(param1:int) : void
      {
         if(param1 != §+!H§.§;!t§ && param1 != §?$'§.§=$+§)
         {
            §!#&§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §?$'§.§=$+§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §^K§(param1:uint) : Vector.<§^"9§>
      {
         var _loc7_:§^"9§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§^"9§> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §2!E§.length;
         var _loc3_:int = this.getPigCount();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§^"9§> = new Vector.<§^"9§>();
         var _loc5_:int = _loc2_ - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §2!E§[_loc5_] as §^"9§) && _loc7_ is §76§ && _loc7_.health > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§^"9§> = new Vector.<§^"9§>();
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
      
      public function get §^[§() : int
      {
         return §2#%§.§9!=§;
      }
      
      public function §1"f§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§^"9§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§^"9§> = new Vector.<§^"9§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §!#A§.§#F§.levelObjects.§7D§())
         {
            if((_loc7_ = §!#A§.§#F§.levelObjects.getObject(_loc3_) as §^"9§) is §76§)
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
                  _loc8_ = this.§"#u§(_loc2_.length);
               }
               while(_loc4_.indexOf(_loc8_) != -1);
               
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§##l§(_loc2_[_loc8_].getBody());
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
               this.§[4§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      protected function §0"5§() : void
      {
         if(this.§<!N§ > this.§%"1§ && !this.§9!v§)
         {
            this.§9!v§ = true;
            §!#&§.playSound("mushroom_grow","ChannelMisc",0,1);
            this.§<!N§ = 0;
         }
      }
      
      private function §=#k§() : Object
      {
         var _loc3_:§^"9§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§^"9§> = new Vector.<§^"9§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §!#A§.§#F§.levelObjects.§7D§())
         {
            _loc3_ = §!#A§.§#F§.levelObjects.getObject(_loc2_) as §^"9§;
            if(_loc3_)
            {
               if(_loc3_ is §;"i§ && !(_loc3_ is §76§) && !(_loc3_ is §"7§))
               {
                  _loc1_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§"#u§(_loc1_.length);
            return this.§##l§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §"#u§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §[§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §##l§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§^"9§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         var _loc2_:b2Vec2 = new b2Vec2(0,§!#A§.§%!o§() * §!!S§.§;s§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§+!8§ = param1.GetTransform();
         _loc5_.§>z§ = new b2DistanceProxy();
         _loc5_.§>z§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§'#u§ = true;
         var _loc6_:Number = §!!S§.§-I§;
         var _loc10_:Number = 0;
         while(_loc10_ < §!#A§.§#F§.levelObjects.§7D§())
         {
            if(_loc19_ = §!#A§.§#F§.levelObjects.getObject(_loc10_) as §^"9§)
            {
               if(_loc19_.getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.§5!P§() || _loc19_.§-"V§()) && _loc19_.itemName.indexOf("INVISIBLE") == -1)
               {
                  _loc20_ = _loc19_.getBody().GetFixtureList();
                  _loc5_.§"!a§ = _loc19_.getBody().GetTransform();
                  _loc5_.§7"'§ = new b2DistanceProxy();
                  _loc5_.§7"'§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                  _loc21_ = new b2DistanceOutput();
                  (_loc22_ = new b2SimplexCache()).count = 0;
                  b2Distance.§"u§(_loc21_,_loc22_,_loc5_);
                  if(_loc6_ > _loc21_.§0!j§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
                  {
                     _loc6_ = _loc21_.§0!j§;
                     _loc7_ = _loc19_.getBody().GetFixtureList();
                     _loc8_ = _loc21_.§%"t§;
                     _loc9_ = _loc21_.§0!j§;
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
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §!!S§.§-I§,_loc11_.y - _loc13_ * §!!S§.§-I§);
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
      
      public function §[4§(param1:Object) : void
      {
         if(!this.§&#<§)
         {
            this.§&#<§ = new Vector.<Object>();
         }
         this.§&#<§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§2#%§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§6!"§ = null;
         if(this.§&#<§ != null)
         {
            this.§<!N§ += param1;
            _loc2_ = this.§&#<§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§&#<§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,§6#-§.ID_NEXT_FREE,false,false,false,1,false) as §2#%§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§8"i§(_loc4_,_loc5_);
                  _loc7_.health *= _loc7_.scaleModifier;
                  _loc7_.§'4§();
               }
               this.§&#<§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§0"5§();
         }
         if(this.§["T§ != null)
         {
            _loc2_ = this.§["T§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§["T§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc8_ = -47 * §!!S§.§,"3§;
                  (_loc9_ = §6!"§(addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc8_,_loc4_.y + _loc5_.y * _loc8_,_loc6_ * 57.2957795 + 180,§6#-§.ID_NEXT_FREE,false,false,false,1,false))).§8"i§(_loc4_,_loc5_);
               }
               this.§["T§.splice(_loc2_,1);
               _loc2_--;
            }
         }
         this.§1#`§();
         super.updateObjects(param1);
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.§["T§ != null && this.§["T§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§["T§ != null && this.§["T§.length != 0)
         {
            _loc2_ += this.§["T§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§["T§ != null && this.§["T§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function §`8§(param1:§ #F§) : §4#s§
      {
         return §9"^§(param1);
      }
      
      override protected function ignoreExplosion(param1:§^"9§, param2:int) : Boolean
      {
         var _loc3_:Boolean = super.ignoreExplosion(param1,param2);
         if(param1 is §0W§)
         {
            return true;
         }
         if(param1 is § ",§ && (param2 == §+!H§.§,"X§ || param2 == §+!H§.§;!t§ || param2 == §+!H§.§;$9§))
         {
            return true;
         }
         if(param1 is §&p§)
         {
            return true;
         }
         return _loc3_;
      }
      
      override public function destroyAllJoints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§4#s§ = null;
         if(§1"r§.§,#8§() == §7"G§.§1d§.§?"9§)
         {
            _loc1_ = §7#J§.length;
            while(_loc1_ > 0)
            {
               _loc2_ = §7#J§[_loc1_ - 1] as §4#s§;
               if(!_loc2_.§^;§ || !(_loc2_.§^;§.§""Z§().GetUserData() is §0W§ || _loc2_.§^;§.§+"2§().GetUserData() is §0W§))
               {
                  _loc2_ = §7#J§[_loc1_ - 1];
                  §[!z§(_loc2_);
                  §7#J§.splice(_loc1_ - 1,1);
               }
               _loc1_--;
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(param1:§^"9§) : void
      {
         var _loc2_:§&![§ = null;
         for each(_loc2_ in §2#Q§)
         {
            if(_loc2_.objectId1 == param1.id)
            {
               _loc2_.§'#G§ = true;
            }
         }
      }
      
      public function §5K§(param1:§^!§) : §^!§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §2!E§.length)
         {
            if(§2!E§[_loc2_] is §^!§ && §2!E§[_loc2_] != param1 && !(§2!E§[_loc2_] as §^!§).§!%§() && §2!E§[_loc2_].levelItem == param1.levelItem)
            {
               return §2!E§[_loc2_] as §^!§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1#`§() : void
      {
         var _loc3_:int = 0;
         if(this.§#$8§)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(_loc3_ < §2!E§.length)
         {
            if(§2!E§[_loc3_] is §^!§)
            {
               _loc1_ = true;
               if(!(§2!E§[_loc3_] as §^!§).§'^§)
               {
                  _loc2_ = false;
                  break;
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§#$8§ = true;
         }
         else if(_loc2_)
         {
            (§!#A§.§#F§.objects as §6#-§).generateTerrainTexture();
            (§!#A§.§#F§.objects as §6#-§).setTexture(true);
            this.§#$8§ = true;
         }
      }
      
      public function get §&U§() : Boolean
      {
         return this.§#$8§;
      }
   }
}
