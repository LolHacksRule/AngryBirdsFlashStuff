package §5"D§
{
   import §!u§.§#!d§;
   import §!u§.§,9§;
   import §!u§.§-r§;
   import §!u§.§2"+§;
   import §!u§.§2w§;
   import §!u§.§3!=§;
   import §!u§.§5r§;
   import §!u§.§>!z§;
   import §3R§.§1!R§;
   import §4",§.§;"%§;
   import §4"@§.Sprite;
   import §5!<§.§5!l§;
   import §6!M§.§%h§;
   import §6!M§.§1",§;
   import §6!M§.§74§;
   import §6!M§.§9`§;
   import §6!M§.§<!r§;
   import §6!M§.§[]§;
   import §;`§.b2Fixture;
   import §;`§.b2World;
   import §>!m§.b2AABB;
   import §^e§.§7!R§;
   import §^e§.§^5§;
   
   public class §=r§ extends §6g§
   {
       
      
      public function §=r§(param1:§1!R§, param2:§;"%§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getCommonTextureName() : String
      {
         return §1",§.§ !r§;
      }
      
      override protected function createObjectInstance(param1:§5!l§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §>q§
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
         var _loc5_:§%h§;
         if(!(_loc5_ = §;H§.levelItemManager.getItem(param1.type) as §%h§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §#!d§.§8p§;
            }
            if(!(_loc5_ = §;H§.levelItemManager.getItem(_loc8_) as §%h§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
         }
         var _loc6_:String = _loc5_.itemName;
         var _loc7_:§^5§ = §;H§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §[]§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(_loc5_ is §9`§)
         {
            return this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         if(_loc5_.itemType == §<!r§.§`";§)
         {
            return this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         if(param1.type.indexOf(§`§.§8p§) != -1)
         {
            return new §`§(param2,_loc7_,§;H§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf(§92§.§8p§) != -1)
         {
            return new §92§(param2,_loc7_,§;H§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return this.createObjectBlockSpace(param2,_loc7_,§;H§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number) : §"Z§
      {
         return new §0R§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§5!l§, param2:Sprite, param3:§^5§, param4:§<!r§, param5:Number = 1.0) : §9V§
      {
         if(param3.hasSubAnimation(§74§.§6"E§))
         {
            return new §""<§(param2,param3,§;H§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
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
            §"!B§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §"!B§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function addParticleSpace(param1:§5!l§, param2:Sprite, param3:§^5§) : §>q§
      {
         var _loc11_:§7!R§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §#!d§.§8p§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§0!v§;
         var _loc9_:Number = param1.§%! §;
         var _loc10_:§[]§;
         if(!(_loc10_ = §;H§.levelItemManager.getItem(_loc4_) as §[]§))
         {
            return null;
         }
         if(_loc4_ == §#!d§.§8p§)
         {
            _loc11_ = §;H§.textureManager.getTexture(param1.type);
            return new §#!d§(_loc11_,param2,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §<!9§.§5!5§)
         {
            return new §>!z§(param2,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("gravityBuff") != -1)
         {
            return new §2w§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("explosionBuff") != -1)
         {
            return new §3!=§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("burningAsteroidFire") != -1)
         {
            return new §3!=§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,0,1,3);
         }
         if(_loc4_ == §-r§.§8p§)
         {
            return new §-r§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc4_ == §,9§.§8p§)
         {
            return new §,9§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc10_.amount <= 3)
         {
            return new §3!=§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §2"+§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount == 1)
         {
            return new §3!=§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §2w§(param2,param3,§;H§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
      }
      
      private function §7"3§() : void
      {
         var _loc1_:§5r§ = null;
         for each(_loc1_ in §6!u§)
         {
            if(_loc1_ is §>!z§)
            {
               (_loc1_ as §>!z§).§4!D§();
            }
         }
      }
      
      override protected function addObjectBird(param1:§5!l§, param2:Sprite, param3:§^5§, param4:§<!r§, param5:Number = 1.0, param6:Boolean = true) : §1"G§
      {
         this.§7"3§();
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         var _loc11_:§9`§;
         if(_loc11_ = param4 as §9`§)
         {
            if(_loc7_.indexOf(§&!,§.§8p§) == 0)
            {
               return new §&!,§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§[3§.§8p§) == 0)
            {
               return new §[3§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§<!9§.§8p§) == 0)
            {
               return new §<!9§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§"B§.§8p§) == 0)
            {
               return new §"B§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§%!!§.§8p§) == 0)
            {
               return new §%!!§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§!"F§.§8p§) == 0)
            {
               return new §!"F§(param2,param3,§;H§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
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
         var _loc4_:§6!!§ = null;
         var _loc2_:§>q§ = null;
         var _loc3_:int = §%!§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §%!§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               §'%§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §6!!§;
               if(§0U§(_loc2_))
               {
                  §'%§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  §'%§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         §]!S§(param1);
         § 4§();
      }
      
      private function §9M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§6!!§>
      {
         var objects:Vector.<§6!!§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§6!!§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§5!v§.Set(x + left,y + down);
         aabb.§4r§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§6!!§ = param1.GetBody().GetUserData() as §6!!§;
            if(_loc2_ != null)
            {
               objects.push(§6!!§(_loc2_));
            }
            return true;
         };
         §;H§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      override protected function checkCameraBoundaries(param1:§>q§) : void
      {
         if(param1 && param1.levelItem)
         {
            if(param1 is §""<§)
            {
               if(§'k§(param1.§9B§().GetPosition().x,param1.§9B§().GetPosition().y))
               {
                  §""<§(param1).updateOutOfCamera();
               }
            }
            if(param1 is §34§)
            {
               if(§'k§(param1.§9B§().GetPosition().x,param1.§9B§().GetPosition().y))
               {
                  §34§(param1).updateOutOfCamera();
               }
            }
         }
      }
   }
}
