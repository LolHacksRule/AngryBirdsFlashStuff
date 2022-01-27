package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§#!<§;
   import §1"?§.§%!0§;
   import §1"?§.§-N§;
   import §1"?§.§4! §;
   import §1"?§.§8!H§;
   import §1"?§.§8G§;
   import §1"?§.§;!C§;
   import §1"?§.§@"G§;
   import §1z§.§!P§;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §3>§.§1!;§;
   import §3>§.§34§;
   import §3>§.§3n§;
   import §3>§.§7!%§;
   import §3>§.§?_§;
   import §9!K§.b2Fixture;
   import §9!K§.b2World;
   import §9!v§.§"[§;
   import §9!v§.§1!_§;
   import §;!Z§.b2AABB;
   import §="+§.§&!i§;
   
   public class §]m§ extends §5g§
   {
       
      
      public function §]m§(param1:§`"8§, param2:§!P§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getCommonTextureName() : String
      {
         return §?_§.§^9§;
      }
      
      override protected function createObjectInstance(param1:§&!i§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §,%§
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
         var _loc5_:§3n§;
         if(!(_loc5_ = §'"9§.levelItemManager.getItem(param1.type) as §3n§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §#!<§.§#!"§;
            }
            if(!(_loc5_ = §'"9§.levelItemManager.getItem(_loc8_) as §3n§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
         }
         var _loc6_:String = _loc5_.itemName;
         var _loc7_:§1!_§ = §'"9§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §7!%§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(_loc5_ is §1!;§)
         {
            return this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         if(_loc5_.itemType == §-"8§.§9!s§)
         {
            return this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         if(param1.type.indexOf(§@5§.§#!"§) != -1)
         {
            return new §@5§(param2,_loc7_,§'"9§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf(§-,§.§#!"§) != -1)
         {
            return new §-,§(param2,_loc7_,§'"9§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return this.createObjectBlockSpace(param2,_loc7_,§'"9§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number) : §@!w§
      {
         return new §1!`§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§&!i§, param2:Sprite, param3:§1!_§, param4:§-"8§, param5:Number = 1.0) : §,r§
      {
         if(param3.hasSubAnimation(§34§.§8"§))
         {
            return new §&"H§(param2,param3,§'"9§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
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
            §#!h§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §#!h§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function addParticleSpace(param1:§&!i§, param2:Sprite, param3:§1!_§) : §,%§
      {
         var _loc11_:§"[§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §#!<§.§#!"§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§?v§;
         var _loc9_:Number = param1.§0!o§;
         var _loc10_:§7!%§;
         if(!(_loc10_ = §'"9§.levelItemManager.getItem(_loc4_) as §7!%§))
         {
            return null;
         }
         if(_loc4_ == §#!<§.§#!"§)
         {
            _loc11_ = §'"9§.textureManager.getTexture(param1.type);
            return new §#!<§(_loc11_,param2,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §;g§.§%W§)
         {
            return new §8G§(param2,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("gravityBuff") != -1)
         {
            return new §8!H§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("explosionBuff") != -1)
         {
            return new §;!C§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("burningAsteroidFire") != -1)
         {
            return new §;!C§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,0,1,3);
         }
         if(_loc4_ == §4! §.§#!"§)
         {
            return new §4! §(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc4_ == §-N§.§#!"§)
         {
            return new §-N§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc10_.amount <= 3)
         {
            return new §;!C§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §@"G§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount == 1)
         {
            return new §;!C§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §8!H§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
      }
      
      private function §4!g§() : void
      {
         var _loc1_:§%!0§ = null;
         for each(_loc1_ in §6!E§)
         {
            if(_loc1_ is §8G§)
            {
               (_loc1_ as §8G§).§!!p§();
            }
         }
      }
      
      override protected function addObjectBird(param1:§&!i§, param2:Sprite, param3:§1!_§, param4:§-"8§, param5:Number = 1.0, param6:Boolean = true) : §!!H§
      {
         this.§4!g§();
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         var _loc11_:§1!;§;
         if(_loc11_ = param4 as §1!;§)
         {
            if(_loc7_.indexOf(§"0§.§#!"§) == 0)
            {
               return new §"0§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§#q§.§#!"§) == 0)
            {
               return new §#q§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§;g§.§#!"§) == 0)
            {
               return new §;g§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§"!6§.§#!"§) == 0)
            {
               return new §"!6§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§1Z§.§#!"§) == 0)
            {
               return new §1Z§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§97§.§#!"§) == 0)
            {
               return new §97§(param2,param3,§'"9§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
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
         var _loc4_:§^"3§ = null;
         var _loc2_:§,%§ = null;
         var _loc3_:int = §9!S§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §9!S§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               §#o§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §^"3§;
               if(§'c§(_loc2_))
               {
                  §#o§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  §#o§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         §>!V§(param1);
         §=>§();
      }
      
      private function §!'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§^"3§>
      {
         var objects:Vector.<§^"3§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§^"3§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§'!l§.Set(x + left,y + down);
         aabb.§?i§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§^"3§ = param1.GetBody().GetUserData() as §^"3§;
            if(_loc2_ != null)
            {
               objects.push(§^"3§(_loc2_));
            }
            return true;
         };
         §'"9§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      override protected function checkCameraBoundaries(param1:§,%§) : void
      {
         if(param1 && param1.levelItem)
         {
            if(param1 is §&"H§)
            {
               if(§;!R§(param1.§`I§().GetPosition().x,param1.§`I§().GetPosition().y))
               {
                  §&"H§(param1).updateOutOfCamera();
               }
            }
            if(param1 is §7!>§)
            {
               if(§;!R§(param1.§`I§().GetPosition().x,param1.§`I§().GetPosition().y))
               {
                  §7!>§(param1).updateOutOfCamera();
               }
            }
         }
      }
   }
}
