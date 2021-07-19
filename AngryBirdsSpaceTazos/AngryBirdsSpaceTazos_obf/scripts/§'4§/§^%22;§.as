package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§-!M§;
   import §"!&§.§8"F§;
   import §"!&§.§="D§;
   import §+!a§.§6p§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §,Z§.b2CircleShape;
   import §0N§.§2!@§;
   import §4&§.§ "E§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §4&§.§^7§;
   import §5Q§.§^!e§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §<!o§.§3!$§;
   import §<!o§.§32§;
   import §@!'§.b2Settings;
   import §]">§.§%!E§;
   import §]">§.§-%§;
   import §]">§.§0!D§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   import §`X§.b2Joint;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §^";§ extends §^g§
   {
       
      
      protected var §]F§:§?D§;
      
      protected var §`4§:BitmapData;
      
      protected var §>A§:Texture;
      
      public function §^";§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get §0o§() : §8"F§
      {
         return §3"4§ as §8"F§;
      }
      
      override protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §;!g§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : § "E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§^7§));
         if(_loc1_ || _loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr79);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr78);
               }
               addr66:
               if(!§§pop())
               {
                  addr78:
                  §§pop();
               }
               §§goto(addr79);
            }
            addr79:
            if(_loc1_)
            {
               §§pop();
               addr53:
               §§push("");
            }
            return new §§pop().§^7§(§§pop(),"",§6u§,§8"F§(§3"4§));
         }
         §§goto(addr53);
      }
      
      override protected function initThemeSoundsManager() : § "E§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§^7§));
         if(_loc2_ || this)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr80);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        addr79:
                        §§pop();
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr79);
            }
            addr80:
            if(!(_loc1_ && _loc2_))
            {
               §§pop();
               addr59:
               §§push("");
            }
            return new §§pop().§^7§(§§pop(),"",§6u§,§8"F§(§3"4§),false);
         }
         §§goto(addr59);
      }
      
      override protected function initCutSceneManager() : § "E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§^7§));
         if(!(_loc2_ && _loc2_))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr79);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc1_)
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr78);
               }
               addr66:
               if(!§§pop())
               {
                  addr78:
                  §§pop();
               }
               §§goto(addr79);
            }
            addr79:
            if(_loc1_ || _loc1_)
            {
               §§pop();
               addr58:
               §§push("");
            }
            return new §§pop().§^7§(§§pop(),"",§6u§,§8"F§(§3"4§));
         }
         §§goto(addr58);
      }
      
      override protected function initLevelEngine(param1:§#b§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.worldGravity);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            mLevelEngine = new §4q§(this,_loc2_);
         }
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§,C§, param4:Number) : §3!$§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§6p§ = null;
         var _loc5_:§@!_§;
         if((_loc5_ = §+Q§.getBackground(param1)) == null)
         {
            if(!(_loc9_ && param1))
            {
               §2!@§.log("UNKNOWN LEVEL THEME! " + param1);
               if(!_loc9_)
               {
                  §§push(§#b§.§`!0§);
                  if(!(_loc9_ && param2))
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
               }
            }
            _loc5_ = §+Q§.getBackground(param1);
         }
         var _loc6_:§="D§ = null;
         if(!_loc9_)
         {
            §§push(this.§0o§);
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && this))
                  {
                     addr91:
                     _loc6_ = this.§0o§.soundManager;
                     addr94:
                     if(_loc5_ is §6p§)
                     {
                        addr98:
                        _loc7_ = _loc5_ as §6p§;
                        if(!(_loc9_ && this))
                        {
                           §§push(§§findproperty(§32§));
                           §§push(_loc7_);
                           §§push(param2);
                           §§push(param3);
                           §§push(_loc6_);
                           §§push(param4);
                           §§push(§^!e§.§use§);
                           if(_loc8_ || param2)
                           {
                              §§push(!§§pop());
                           }
                           return new §§pop().§32§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                        }
                     }
                     return super.initializeLevelBackground(param1,param2,param3,param4);
                     addr89:
                  }
                  §§goto(addr98);
               }
               §§goto(addr94);
            }
            §§goto(addr91);
         }
         §§goto(addr89);
      }
      
      override protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§32§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         §§push(§@!_§.§!z§);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            if(param1 is §2!7§)
            {
               §§goto(addr42);
            }
            §§goto(addr139);
         }
         addr42:
         _loc3_ = §3"C§ as §32§;
         if(!_loc7_)
         {
            if(!_loc3_)
            {
               return new §0!D§(this,param1 as §2!7§,new Sprite(),_loc2_);
            }
            §§push(_loc3_.§?"5§);
            if(_loc6_ || this)
            {
               §§push(§§pop());
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§push(_loc3_.§4L§);
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(!_loc7_)
               {
                  §§push(§§pop());
                  break;
               }
            }
            _loc5_ = §§pop();
         }
         else if(true)
         {
            addr139:
            return super.initializeLevelObjectManager(param1);
         }
         return new §0!D§(this,param1 as §2!7§,new Sprite(),_loc4_,_loc5_);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6p§ = null;
         var _loc2_:§@!_§ = §+Q§.getBackground(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ is §6p§)
            {
               _loc3_ = _loc2_ as §6p§;
               addr45:
               if(_loc4_)
               {
                  return _loc3_.§6!Q§;
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      override protected function initializePhysicsConstants(param1:§#b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1.hasGround)
            {
               b2Settings.b2_linearSleepTolerance = b2Settings.§'!t§;
               if(_loc3_ && _loc2_)
               {
                  addr76:
               }
               return;
            }
            if(_loc2_ || this)
            {
               addr73:
               super.initializePhysicsConstants(param1);
            }
            §§goto(addr76);
         }
         §§goto(addr73);
      }
      
      override protected function levelInitialized() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`4§ = new BitmapData(16,16,true,2298413056);
            loop0:
            while(true)
            {
               this.§>A§ = textureManager.getTextureFromBitmapData(this.§`4§);
               loop1:
               while(true)
               {
                  this.§]F§ = new §?D§(new Sprite(),this.§>A§,§%!E§.§6&§ / 1000,§%!E§.§0e§);
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        slingshot.aimingLineSprite.addChild(this.§]F§.sprite);
                        do
                        {
                           this.§4"-§();
                        }
                        while(!(_loc1_ || this));
                        
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr73);
      }
      
      protected function §4"-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+"#§(10);
         }
      }
      
      protected function §+"#§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Vec2 = new b2Vec2();
         if(!_loc9_)
         {
            _loc2_.SetV(mLevelEngine.mWorld.GetGravity());
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
                  continue loop0;
               }
            }
            addr47:
         }
         while(true)
         {
            §9u§.setCollisionsEnabled(false);
            if(_loc9_)
            {
               continue;
            }
            if(!_loc9_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr47);
            }
            §§goto(addr33);
         }
         var _loc3_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc4_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc3_)
         {
            if(_loc3_.IsMotorEnabled())
            {
               if(!_loc9_)
               {
                  _loc4_.push(_loc3_);
                  if(!_loc8_)
                  {
                  }
                  break;
               }
               _loc3_.EnableMotor(false);
               if(_loc9_ && param1)
               {
                  break;
               }
            }
            _loc3_ = _loc3_.§`!y§();
         }
         var _loc5_:int = 0;
         if(!(_loc9_ && param1))
         {
            loop4:
            while(true)
            {
               §§push(_loc5_);
               if(_loc8_ || this)
               {
                  if(§§pop() >= param1)
                  {
                     if(!(_loc9_ && this))
                     {
                        addr160:
                        break;
                     }
                     loop7:
                     while(true)
                     {
                        §9u§.setCollisionsEnabled(false);
                        if(!_loc8_)
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           break;
                        }
                        addr229:
                        while(true)
                        {
                           mLevelEngine.mWorld.SetWarmStarting(true);
                           continue loop7;
                        }
                     }
                     return;
                     addr208:
                     addr224:
                  }
                  else
                  {
                     mLevelEngine.mWorld.Step(1000 / 30,10,10);
                     if(_loc8_ || _loc2_)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              mLevelEngine.mWorld.ClearForces();
                              if(_loc9_ && _loc2_)
                              {
                                 break;
                              }
                              _loc5_++;
                              if(!_loc9_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr208);
                           }
                           addr195:
                           mLevelEngine.mWorld.SetGravity(_loc2_);
                           §§goto(addr229);
                        }
                        addr142:
                     }
                  }
                  §§goto(addr160);
               }
               break;
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || param1)
            {
               for each(_loc3_ in _loc4_)
               {
                  if(_loc8_)
                  {
                     _loc3_.EnableMotor(true);
                  }
               }
            }
            if(_loc8_ || param1)
            {
               §§goto(addr195);
            }
            §§goto(addr224);
         }
         §§goto(addr142);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§>A§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§>A§);
                  while(true)
                  {
                     this.§>A§ = null;
                     addr94:
                     while(_loc2_)
                     {
                        this.§`4§ = null;
                        while(true)
                        {
                        }
                     }
                  }
                  addr41:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
            loop4:
            while(true)
            {
               §§push(this.§]F§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§push(this.§]F§);
                        addr83:
                        while(true)
                        {
                           §§pop().dispose();
                           loop8:
                           while(true)
                           {
                              this.§]F§ = null;
                              addr63:
                              while(!(_loc2_ || _loc1_))
                              {
                                 continue loop8;
                              }
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              if(_loc2_)
                              {
                                 addr74:
                                 while(true)
                                 {
                                    super.clearLevel();
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr41);
                                    }
                                    else
                                    {
                                       §§goto(addr63);
                                    }
                                 }
                                 continue loop4;
                                 addr24:
                              }
                              §§goto(addr94);
                           }
                        }
                     }
                     addr81:
                  }
                  §§goto(addr24);
               }
               §§goto(addr83);
            }
            §§goto(addr58);
         }
         §§goto(addr81);
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Point = null;
         var _loc6_:§+W§ = null;
         var _loc7_:String = null;
         var _loc8_:§'!"§ = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         §§push(super.update(param1,param2));
         if(!(_loc13_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc13_)
         {
            §§push(Boolean(this.§]F§));
            if(!(_loc13_ && this))
            {
               if(§§pop())
               {
                  if(_loc12_ || this)
                  {
                     §§pop();
                     if(_loc12_ || param2)
                     {
                        addr81:
                        if(slingshot)
                        {
                           if(_loc12_ || _loc3_)
                           {
                              addr89:
                              §§push(slingshot.getCurrentBirdType());
                              if(_loc12_ || this)
                              {
                                 §§push(_loc4_ = §§pop());
                              }
                              if(§§pop())
                              {
                                 addr102:
                                 if(_loc6_ = §3"4§.getItem(_loc4_) as §+W§)
                                 {
                                    if(!_loc13_)
                                    {
                                       _loc7_ = _loc6_.§0%§("aimingAidSprite");
                                    }
                                    if(_loc8_ = §7!T§.getTexture(_loc7_))
                                    {
                                       if(_loc12_)
                                       {
                                          §§push(this.§]F§);
                                          if(!_loc13_)
                                          {
                                             §§pop().§`!v§(_loc8_.texture);
                                             if(_loc12_)
                                             {
                                                addr136:
                                                if(_loc6_.shape is b2CircleShape)
                                                {
                                                   if(_loc12_ || this)
                                                   {
                                                   }
                                                   addr183:
                                                   _loc5_ = slingshot.getPosition();
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(this.§]F§);
                                                      if(_loc12_)
                                                      {
                                                         §§push(Boolean(slingshot.mDragging));
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  §§pop();
                                                                  addr364:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(slingshot.canShootTheBird));
                                                                  }
                                                                  addr364:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().enabled = §§pop();
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(this.§]F§);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().enabled);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_ == null);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    addr308:
                                                                                    while(_loc12_ || param1)
                                                                                    {
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr281:
                                                                                    if(!(_loc12_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-Math.cos(slingshot.shootingAngle / (180 / Math.PI)));
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr230:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(Math.sin(slingshot.shootingAngle / (180 / Math.PI))));
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc12_ || param1))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc12_ || this)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                               addr246:
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr290:
                                                                                       }
                                                                                       addr369:
                                                                                       return _loc3_;
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop10:
                                                                              while(_loc12_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(slingshot.mDragging));
                                                                                    if(_loc13_ && this)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§push(b2CircleShape(_loc6_.shape).§<!$§());
                                             if(_loc12_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(_loc12_ || param2)
                                             {
                                                §§push(this.§]F§);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§pop().§2C§(_loc9_);
                                          §§goto(addr183);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr369);
                     }
                     §§goto(addr89);
                  }
               }
            }
         }
         §§goto(addr81);
      }
   }
}
