package §'4§
{
   import §"!&§.§!"7§;
   import §"!&§.§-!M§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §4&§.§ "E§;
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §9!w§.§@""§;
   import §;C§.§%"$§;
   import §;C§.§^<§;
   import §<!o§.§32§;
   import §]">§.§!!r§;
   import §]">§.§#"'§;
   import §]">§.§%!E§;
   import §]">§.§-%§;
   import §]">§.§=!;§;
   import §]">§.§=?§;
   import §]">§.§@!q§;
   import §]">§.§]"-§;
   import §]">§.§`!R§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`!j§.§+!A§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   import flash.display.Stage;
   
   public class §=!R§ extends §^";§
   {
       
      
      protected var §1!A§:§-T§;
      
      public function §=!R§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:§32§ = null;
         §§push(§@!_§.§!z§);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            if(!(param1 is §2!7§))
            {
               return super.initializeLevelObjectManager(param1);
            }
            if(_loc7_ || this)
            {
               §§push("");
               if(!(_loc6_ && this))
               {
                  _loc3_ = §§pop();
                  addr68:
                  if(_loc7_)
                  {
                     addr66:
                     §§push("");
                  }
                  if(_loc5_ = §3"C§ as §32§)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc5_.§?"5§);
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && param1))
                           {
                              _loc3_ = §§pop();
                              §§push(_loc5_.§4L§);
                              if(_loc7_ || _loc3_)
                              {
                                 addr99:
                                 §§push(§§pop());
                              }
                           }
                           _loc4_ = §§pop();
                           return this.§!"9§(param1,_loc2_,_loc3_,_loc4_);
                           addr101:
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr101);
               }
               _loc4_ = §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr66);
      }
      
      override protected function initializeLevelCamera(param1:§#b§) : §9!,§
      {
         return new §@""§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §"!Q§(this,param1,new Sprite());
      }
      
      protected function §!"9§(param1:§#b§, param2:String, param3:String = "", param4:String = "") : §@!q§
      {
         return new §@!q§(this,param1 as §2!7§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : § "E§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§^<§));
         if(_loc2_ || _loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr75);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr74);
               }
               addr62:
               if(!§§pop())
               {
                  addr74:
                  §§pop();
               }
               §§goto(addr75);
            }
            addr75:
            if(!_loc1_)
            {
               §§pop();
               addr54:
               §§push("");
            }
            return new §§pop().§^<§(§§pop(),"",§6u§,§!"7§(§3"4§));
         }
         §§goto(addr54);
      }
      
      override protected function initThemeSoundsManager() : § "E§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : § "E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§^<§));
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr57:
                        §§pop();
                        addr59:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || _loc1_)
                        {
                           return new §§pop().§^<§(§§pop(),§§pop() || "",§6u§,§!"7§(§3"4§));
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr59);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr57);
      }
      
      override protected function initAnimationManager(param1:§,C§) : §'!,§
      {
         return new §%"$§(param1);
      }
      
      override protected function levelInitialized() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4"-§();
         }
      }
      
      override public function getCurrentLevelData() : §#b§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#b§ = new §+!A§();
         if(_loc3_)
         {
            _loc1_.scoreGold = §^`§.scoreGold;
            while(true)
            {
               _loc1_.scoreSilver = §^`§.scoreSilver;
            }
            addr95:
         }
         while(true)
         {
            §+%§.writeCameraInformation(_loc1_);
            loop2:
            for(; _loc3_; if(!(_loc3_ || _loc3_))
            {
               continue;
            },if(_loc3_)
            {
               return _loc1_;
            },§§goto(addr95))
            {
               §9u§.writeObjectInformation(_loc1_);
               while(true)
               {
                  §-!t§.writeSlingshotInformation(_loc1_);
                  while(!_loc2_)
                  {
                     _loc1_.theme = §3"C§.getCurrentThemeName();
                     if(_loc3_)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      protected function §1;§(param1:String) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = param1;
         if(!(_loc5_ && param1))
         {
            §§push(§=?§.§!!p§);
            if(_loc4_ || _loc2_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr230:
                        §§push(5);
                        if(_loc4_)
                        {
                           addr243:
                        }
                     }
                     §§goto(addr248);
                  }
                  else
                  {
                     §§push(§`!R§.§!!p§);
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    §§goto(addr243);
                                 }
                              }
                              else
                              {
                                 addr217:
                                 §§push(4);
                                 if(!(_loc5_ && this))
                                 {
                                    addr225:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§=!;§.§!!p§);
                              if(!(_loc5_ && param1))
                              {
                                 addr153:
                                 §§push(_loc3_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(!_loc4_)
                                          {
                                             addr196:
                                          }
                                          §§goto(addr248);
                                       }
                                       else
                                       {
                                          §§goto(addr217);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§]"-§.§!!p§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr177:
                                          §§push(_loc3_);
                                          if(!(_loc5_ && this))
                                          {
                                             addr185:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(3);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr225);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr248);
                                             }
                                             else
                                             {
                                                §§push(§#"'§.§!!p§);
                                                if(_loc4_ || this)
                                                {
                                                   addr206:
                                                   §§push(_loc3_);
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr214:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr217);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr230);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§!!r§.§!!p§);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   addr229:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                   else
                                                   {
                                                      addr248:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_GREEN").texture;
                                                            break;
                                                         case 1:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_BOMB").texture;
                                                            break;
                                                         case 2:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_BLUE").texture;
                                                            break;
                                                         case 3:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
                                                            break;
                                                         case 4:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_RED").texture;
                                                            break;
                                                         case 5:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
                                                            break;
                                                         default:
                                                            _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
                                                      }
                                                      return _loc2_;
                                                      §§push(6);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr229);
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr248);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr153);
                  }
               }
               §§goto(addr206);
            }
            §§goto(addr153);
         }
         §§goto(addr217);
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§-T§ = null;
         if(_loc5_ || this)
         {
            if(§-!t§)
            {
               if(!(_loc4_ && param2))
               {
                  if(§-!t§.mBirds.length > §-!t§.mNextBirdIndex)
                  {
                     if(_loc5_ || param1)
                     {
                        _loc3_ = §-!t§.mBirds[§-!t§.mNextBirdIndex];
                     }
                     do
                     {
                        this.§9p§();
                     }
                     while(!(_loc5_ || _loc3_));
                     
                     addr94:
                     return super.update(param1,param2);
                     addr140:
                     addr93:
                     addr111:
                  }
                  §§push(Boolean(_loc3_));
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr84:
                           §§pop();
                           if(!(_loc4_ && param2))
                           {
                              §§push(this.§1!A§ == _loc3_);
                              if(!_loc4_)
                              {
                                 addr119:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && param2))
                                    {
                                       addr137:
                                       this.§1!A§ = _loc3_;
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr84);
               }
               §§goto(addr140);
            }
            §§goto(addr94);
         }
         §§goto(addr111);
      }
      
      protected function §9p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = this.§1;§(this.§1!A§.name);
         if(!(_loc3_ && _loc3_))
         {
            if(§]F§)
            {
               while(true)
               {
                  if(§]F§.sprite.parent == objects.overlaySprite)
                  {
                     addr114:
                     while(true)
                     {
                        objects.overlaySprite.removeChild(§]F§.sprite);
                        addr119:
                        while(true)
                        {
                        }
                     }
                     addr114:
                  }
                  while(true)
                  {
                     §]F§.dispose();
                     addr95:
                     while(true)
                     {
                     }
                     §§goto(addr119);
                  }
               }
               addr98:
            }
            loop3:
            while(true)
            {
               §]F§ = new §?D§(new Sprite(),_loc1_,§%!E§.§6&§ / 1000,§%!E§.§0e§);
               while(_loc2_ || _loc1_)
               {
                  objects.overlaySprite.addChild(§]F§.sprite);
                  if(_loc3_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           break loop3;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr119);
               }
               §§goto(addr95);
            }
            return;
         }
         §§goto(addr114);
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            §§push(param1 == 10000);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(param2 == §!!t§.§1!@§);
                        if(_loc7_ && param2)
                        {
                           continue;
                        }
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc8_)
                  {
                     addr87:
                     break;
                  }
                  if(!_loc7_)
                  {
                     return;
                  }
                  §§goto(addr94);
               }
               super.addScore(param1,param2,param3,param4,param5,param6);
               if(!(_loc8_ || param2))
               {
                  §§goto(addr87);
               }
               return;
            }
         }
         §§goto(addr94);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = super.getThemeGraphicsLoadList(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.push("THEME_COMMON");
               }
            }
         }
         return _loc2_;
      }
   }
}
