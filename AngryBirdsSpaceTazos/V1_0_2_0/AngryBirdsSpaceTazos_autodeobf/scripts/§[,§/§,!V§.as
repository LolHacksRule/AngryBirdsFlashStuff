package §[,§
{
   import §#!X§.b2Fixture;
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §,7§.§&!`§;
   import §,7§.§+!s§;
   import §,7§.§-"@§;
   import §,7§.§0o§;
   import §,7§.§<g§;
   import §,7§.§="&§;
   import §,7§.§>3§;
   import §,7§.§@!c§;
   import §3m§.b2AABB;
   import §8o§.§!">§;
   import §8o§.§]!U§;
   import §;!0§.§!!#§;
   import §;"=§.§+C§;
   import §;"=§.§-'§;
   import §;"=§.§<!8§;
   import §;"=§.§[e§;
   import §;"=§.§]"<§;
   import §;"=§.§return§;
   import §?!<§.§'!1§;
   import §[!v§.§!e§;
   
   public class §,!V§ extends §%Y§
   {
       
      
      public function §,!V§(param1:§'!1§, param2:§!!#§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getCommonTextureName() : String
      {
         return §<!8§.§6!X§;
      }
      
      override protected function createObjectInstance(param1:§!e§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §1d§
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
         var _loc5_:§+C§;
         if(!(_loc5_ = §1!3§.levelItemManager.getItem(param1.type) as §+C§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §<g§.§2_§;
            }
            if(!(_loc5_ = §1!3§.levelItemManager.getItem(_loc8_) as §+C§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
         }
         var _loc6_:String = _loc5_.itemName;
         var _loc7_:§]!U§ = §1!3§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §return§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(_loc5_ is §[e§)
         {
            return this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         if(_loc5_.itemType == §]"<§.§?![§)
         {
            return this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         if(param1.type.indexOf(§9"5§.§2_§) != -1)
         {
            return new §9"5§(param2,_loc7_,§1!3§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(param1.type.indexOf(§<""§.§2_§) != -1)
         {
            return new §<""§(param2,_loc7_,§1!3§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return this.createObjectBlockSpace(param2,_loc7_,§1!3§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number) : §#a§
      {
         return new §#-§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§!e§, param2:Sprite, param3:§]!U§, param4:§]"<§, param5:Number = 1.0) : §<!f§
      {
         if(param3.hasSubAnimation(§-'§.§4M§))
         {
            return new §-^§(param2,param3,§1!3§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
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
            §+!I§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §+!I§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override protected function addParticleSpace(param1:§!e§, param2:Sprite, param3:§]!U§) : §1d§
      {
         var _loc11_:§!">§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §<g§.§2_§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§;!T§;
         var _loc9_:Number = param1.§2^§;
         var _loc10_:§return§;
         if(!(_loc10_ = §1!3§.levelItemManager.getItem(_loc4_) as §return§))
         {
            return null;
         }
         if(_loc4_ == §<g§.§2_§)
         {
            _loc11_ = §1!3§.textureManager.getTexture(param1.type);
            return new §<g§(_loc11_,param2,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §>">§.§+!n§)
         {
            return new §0o§(param2,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("gravityBuff") != -1)
         {
            return new §&!`§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("explosionBuff") != -1)
         {
            return new §="&§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("burningAsteroidFire") != -1)
         {
            return new §="&§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,0,1,3);
         }
         if(_loc4_ == §@!c§.§2_§)
         {
            return new §@!c§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc4_ == §>3§.§2_§)
         {
            return new §>3§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
         }
         if(_loc10_.amount <= 3)
         {
            return new §="&§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §+!s§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount == 1)
         {
            return new §="&§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §&!`§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
      }
      
      private function §-"D§() : void
      {
         var _loc1_:§-"@§ = null;
         for each(_loc1_ in §,S§)
         {
            if(_loc1_ is §0o§)
            {
               (_loc1_ as §0o§).§-!s§();
            }
         }
      }
      
      override protected function addObjectBird(param1:§!e§, param2:Sprite, param3:§]!U§, param4:§]"<§, param5:Number = 1.0, param6:Boolean = true) : §#!v§
      {
         this.§-"D§();
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         var _loc11_:§[e§;
         if(_loc11_ = param4 as §[e§)
         {
            if(_loc7_.indexOf(§ !B§.§2_§) == 0)
            {
               return new § !B§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§%B§.§2_§) == 0)
            {
               return new §%B§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§>">§.§2_§) == 0)
            {
               return new §>">§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§&!l§.§2_§) == 0)
            {
               return new §&!l§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§9"=§.§2_§) == 0)
            {
               return new §9"=§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
            }
            if(_loc7_.indexOf(§^"§.§2_§) == 0)
            {
               return new §^"§(param2,param3,§1!3§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
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
         var _loc4_:§5,§ = null;
         var _loc2_:§1d§ = null;
         var _loc3_:int = §0Y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §0Y§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               §#"<§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §5,§;
               if(§?!l§(_loc2_))
               {
                  §#"<§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  §#"<§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         §>j§(param1);
         §null §();
      }
      
      private function §&<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§5,§>
      {
         var objects:Vector.<§5,§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§5,§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§>9§.Set(x + left,y + down);
         aabb.§2M§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§5,§ = param1.GetBody().GetUserData() as §5,§;
            if(_loc2_ != null)
            {
               objects.push(§5,§(_loc2_));
            }
            return true;
         };
         §1!3§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      override protected function checkCameraBoundaries(param1:§1d§) : void
      {
         if(param1 && param1.levelItem)
         {
            if(param1 is §-^§)
            {
               if(§4!w§(param1.§ <§().GetPosition().x,param1.§ <§().GetPosition().y))
               {
                  §-^§(param1).updateOutOfCamera();
               }
            }
            if(param1 is §@9§)
            {
               if(§4!w§(param1.§ <§().GetPosition().x,param1.§ <§().GetPosition().y))
               {
                  §@9§(param1).updateOutOfCamera();
               }
            }
         }
      }
   }
}
