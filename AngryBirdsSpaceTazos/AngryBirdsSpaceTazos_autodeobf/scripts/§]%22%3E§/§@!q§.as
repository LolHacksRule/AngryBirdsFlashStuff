package §]">§
{
   import §"!&§.§!"7§;
   import §"!&§.§%F§;
   import §"!&§.§+W§;
   import §"!&§.§3",§;
   import §"!&§.§8X§;
   import §"!&§.§`D§;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §1"H§.§!v§;
   import §1"H§.§'" §;
   import §1"H§.§+>§;
   import §1"H§.§1f§;
   import §1"H§.§4h§;
   import §1"H§.§<!I§;
   import §1"H§.§=!3§;
   import §1"H§.§>!b§;
   import §3c§.b2AABB;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §@w§.§`a§;
   import §`!j§.§2!7§;
   
   public class §@!q§ extends §0!D§
   {
       
      
      public function §@!q§(param1:§^g§, param2:§2!7§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getCommonTextureName() : String
      {
         return §!"7§.§%"=§;
      }
      
      override protected function createObjectInstance(param1:§`a§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc8_:String = null;
         switch(param1.type)
         {
            case "BIRD_BLUE":
               param1.type = "smallbluebird";
               break;
            case "BIRD_BLACK":
               param1.type = "blackbird";
               break;
            case "BIRD_RED":
               param1.type = "redbird";
               break;
            case "BIRD_REDBIG":
               param1.type = "redbigbird";
         }
         var _loc5_:§`D§;
         if(!(_loc5_ = §?>§.levelItemManager.getItem(param1.type) as §`D§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §1f§.§!!p§;
            }
            if(!(_loc5_ = §?>§.levelItemManager.getItem(_loc8_) as §`D§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
         }
         var _loc6_:String = _loc5_.itemName;
         var _loc7_:§#r§ = §?>§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §%F§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(_loc5_ is §+W§)
         {
            return this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         if(_loc5_.itemType == §8X§.§<g§)
         {
            return this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         if(param1.type.indexOf(§14§.§!!p§) != -1)
         {
            return new §14§(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf(§,!@§.§!!p§) != -1)
         {
            return new §,!@§(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return this.createObjectBlockSpace(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number) : §-"A§
      {
         return new §[!p§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         if(param3.hasSubAnimation(§3",§.§#"B§))
         {
            return new §+"A§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
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
            §&c§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §&c§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function addParticleSpace(param1:§`a§, param2:Sprite, param3:§#r§) : §<!=§
      {
         var _loc11_:§'!"§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §1f§.§!!p§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§2]§;
         var _loc9_:Number = param1.§0!Z§;
         var _loc10_:§%F§;
         if(!(_loc10_ = §?>§.levelItemManager.getItem(_loc4_) as §%F§))
         {
            return null;
         }
         if(_loc4_ == §1f§.§!!p§)
         {
            _loc11_ = §?>§.textureManager.getTexture(param1.type);
            return new §1f§(_loc11_,param2,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §]"-§.§]2§)
         {
            return new §!v§(param2,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("gravityBuff") != -1)
         {
            return new §4h§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("explosionBuff") != -1)
         {
            return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("burningAsteroidFire") != -1)
         {
            return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,0,1,3);
         }
         if(_loc4_ == §<!I§.§!!p§)
         {
            return new §<!I§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc4_ == §=!3§.§!!p§)
         {
            return new §=!3§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc10_.amount <= 3)
         {
            return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §'" §(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount == 1)
         {
            return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §4h§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
      }
      
      private function §7"F§() : void
      {
         var _loc1_:§+>§ = null;
         for each(_loc1_ in §3R§)
         {
            if(_loc1_ is §!v§)
            {
               (_loc1_ as §!v§).§[U§();
            }
         }
      }
      
      override protected function addObjectBird(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0, param6:Boolean = true) : § 6§
      {
         this.§7"F§();
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         var _loc11_:§+W§;
         if(_loc11_ = param4 as §+W§)
         {
            if(_loc7_.indexOf(§!!r§.§!!p§) == 0)
            {
               return new §!!r§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§`!R§.§!!p§) == 0)
            {
               return new §`!R§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§]"-§.§!!p§) == 0)
            {
               return new §]"-§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§=!;§.§!!p§) == 0)
            {
               return new §=!;§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§#"'§.§!!p§) == 0)
            {
               return new §#"'§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§=?§.§!!p§) == 0)
            {
               return new §=?§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
         }
         return super.addObjectBird(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getLevelTextureName() : String
      {
         return super.getLevelTextureName();
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc4_:§1!0§ = null;
         var _loc2_:§<!=§ = null;
         var _loc3_:int = §-`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §-`§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               §-"C§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §1!0§;
               if(§"=§(_loc2_))
               {
                  §-"C§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  §-"C§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         §7o§(param1);
         §7q§();
      }
      
      private function §-!g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§1!0§>
      {
         var objects:Vector.<§1!0§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§1!0§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§<!@§.Set(x + left,y + down);
         aabb.§2!1§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§1!0§ = param1.GetBody().GetUserData() as §1!0§;
            if(_loc2_ != null)
            {
               objects.push(§1!0§(_loc2_));
            }
            return true;
         };
         §?>§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      override protected function checkCameraBoundaries(param1:§<!=§) : void
      {
         if(param1 && param1.levelItem)
         {
            if(param1 is §+"A§)
            {
               if(§#"$§(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y))
               {
                  §+"A§(param1).updateOutOfCamera();
               }
            }
            if(param1 is §6!y§)
            {
               if(§#"$§(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y))
               {
                  §6!y§(param1).updateOutOfCamera();
               }
            }
         }
      }
   }
}
