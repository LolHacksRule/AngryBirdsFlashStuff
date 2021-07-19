package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §!"+§.§'!L§;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §-!_§.§,#Q§;
   import §1!2§.b2JointEdge;
   import §2"Y§.§"#`§;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2"q§;
   import §2"Y§.§8!D§;
   import §2"Y§.§=+§;
   import §2"Y§.§["$§;
   import §3"5§.b2AABB;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §8[§.b2Contact;
   import §<"B§.§-!5§;
   import §<"B§.§94§;
   import §<"B§.§]§;
   import §?m§.§=!z§;
   import §[""§.§##W§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §`!r§.§#!j§;
   import §`!r§.§&#I§;
   import §`!r§.§7!w§;
   import §`!r§.§7O§;
   import §`!r§.§^"g§;
   import flash.geom.Point;
   
   public class §^!K§ extends §," § implements § [§
   {
       
      
      protected var §2!W§:Vector.<§+c§>;
      
      protected var §<0§:Vector.<§9c§>;
      
      public function §^!K§(param1:§#_§, param2:§=!z§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§2!W§ = new Vector.<§+c§>();
         }
         while(true)
         {
            this.§<0§ = new Vector.<§9c§>();
            while(!(_loc7_ && param2))
            {
               super(param1,param2,param3,param4,param5,param6);
               if(_loc8_ || param3)
               {
                  return;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9c§ = null;
         if(!(_loc3_ && _loc2_))
         {
            super.dispose();
            if(!_loc3_)
            {
               §§goto(addr30);
            }
            §§goto(addr57);
         }
         addr30:
         if(this.§<0§)
         {
            if(!_loc3_)
            {
               if(this.§<0§.length > 0)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr57:
                     _loc1_ = this.§<0§.pop();
                     if(!_loc3_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  §§goto(addr81);
               }
               this.§<0§ = null;
               if(!_loc2_)
               {
               }
               §§goto(addr81);
            }
         }
         addr81:
         this.§2!W§ = null;
      }
      
      override protected function getCommonTextureName() : String
      {
         return §"#`§.§[c§;
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:* = null;
         var _loc9_:* = 0;
         var _loc10_:§]#3§ = null;
         var _loc11_:§8!D§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc5_:§["$§;
         if(!(_loc5_ = §2#G§.levelItemManager.getItem(param1.type) as §["$§))
         {
            if(!_loc15_)
            {
               §§push(param1.type);
               if(!(_loc15_ && param1))
               {
                  §§push(§§pop());
                  if(!_loc15_)
                  {
                     addr62:
                     §§push(_loc8_ = §§pop());
                     if(!(_loc15_ && param3))
                     {
                        if(§§pop().indexOf("SCORE") != -1)
                        {
                           if(!(_loc15_ && this))
                           {
                              §§push(§&#I§.§+"§);
                              if(!(_loc15_ && this))
                              {
                                 §§push(§§pop());
                                 if(!_loc15_)
                                 {
                                    §§goto(addr94);
                                 }
                                 _loc6_ = §§pop();
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr102);
                     }
                  }
                  addr94:
                  _loc8_ = §§pop();
                  if(!(_loc15_ && param1))
                  {
                     addr102:
                     if(!(_loc5_ = §2#G§.levelItemManager.getItem(_loc8_) as §["$§))
                     {
                        if(!_loc15_)
                        {
                           throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
                        }
                     }
                     _loc6_ = _loc5_.itemName;
                     _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
                     if(_loc14_ || param3)
                     {
                        return this.addParticleSpace(param1,param2,_loc7_);
                     }
                     addr153:
                     §§push(_loc5_.itemName);
                  }
                  _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
                  if(!(_loc15_ && param3))
                  {
                     if(!(_loc5_ is §=+§))
                     {
                        loop0:
                        while(true)
                        {
                           if(_loc5_.itemType != §"t§.§5s§)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1.type);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§@!W§.§+"§);
                                    while(true)
                                    {
                                       if(§§pop().indexOf(§§pop()) != -1)
                                       {
                                          if(!(_loc15_ && param3))
                                          {
                                             if(_loc15_ && param2)
                                             {
                                                addr289:
                                                §§push(this.§5"W§(this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)));
                                                if(_loc14_)
                                                {
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      return §§pop();
                                                   }
                                                   break loop1;
                                                }
                                                §§goto(addr495);
                                             }
                                             if(_loc15_ && this)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc15_)
                                             {
                                                addr313:
                                                §§push(this.§5"W§(this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3)));
                                                break loop1;
                                             }
                                             if(_loc5_)
                                             {
                                                §§goto(addr205);
                                             }
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                          }
                                          if(_loc14_)
                                          {
                                             throw new Error("Can\'t find light saber definition for \'" + param1.type + "\'");
                                          }
                                          continue loop1;
                                       }
                                       §§push(param1.type);
                                       if(_loc14_ || param2)
                                       {
                                          if(_loc15_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§1#U§.§+"§);
                                          if(!(_loc15_ && param1))
                                          {
                                             if(_loc15_)
                                             {
                                                continue;
                                             }
                                             if(§§pop().indexOf(§§pop()) != -1)
                                             {
                                                if(!_loc15_)
                                                {
                                                   _loc9_ = 1;
                                                   if(_loc14_)
                                                   {
                                                      if(true)
                                                      {
                                                         if(_loc10_ = param1 as §]#3§)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc10_.shotPattern);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               _loc9_ = §§pop();
                                                               if(_loc14_ || param2)
                                                               {
                                                                  §§goto(addr352);
                                                               }
                                                               addr379:
                                                               if(param1.type == §7#"§.§+"§)
                                                               {
                                                                  break;
                                                               }
                                                               addr495:
                                                               return §§pop();
                                                               §§push(this.§5"W§(super.createObjectInstance(param1,param2,param3,param4)));
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         addr352:
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               addr356:
                                                               throw new Error("Can\'t find laser gun definition for \'" + param1.type + "\'");
                                                            }
                                                         }
                                                         return new §1#U§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc9_);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       §§goto(addr379);
                                       §§goto(addr495);
                                    }
                                    _loc11_ = §2#G§.levelItemManager.getItem(param1.type) as §8!D§;
                                    if(!(_loc15_ && this))
                                    {
                                       if(_loc5_)
                                       {
                                          addr466:
                                          _loc12_ = §2#G§.slingshot.x;
                                          addr467:
                                          if(_loc14_)
                                          {
                                             §§push(Number(§2#G§.slingshot.y));
                                             if(_loc14_ || param3)
                                             {
                                                _loc13_ = §§pop();
                                                §2#G§.camera.setAction(§,#Q§.§[#H§);
                                                if(_loc15_)
                                                {
                                                   §§goto(addr467);
                                                }
                                                return new §7#"§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc11_,param1,_loc12_,_loc13_,param4);
                                                addr446:
                                             }
                                             §§goto(addr466);
                                          }
                                       }
                                       throw new Error("Can\'t find MF definition");
                                    }
                                    §§goto(addr446);
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr289);
                        }
                     }
                     §§goto(addr313);
                  }
                  addr205:
                  return new §@!W§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1);
               }
               §§goto(addr62);
            }
            §§goto(addr102);
         }
         §§goto(addr153);
      }
      
      protected function §5"W§(param1:§7B§) : §7B§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§&#=§ = null;
         if(!_loc4_)
         {
            if(param1 is §&#=§)
            {
               addr26:
               _loc2_ = §&#=§(param1);
               var _loc3_:* = _loc2_.§=G§;
               if(_loc5_ || this)
               {
                  §§push(GravityFilterCategory.FORCE_OBJECT);
                  if(_loc5_)
                  {
                     if(§§pop() === _loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr100:
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(GravityFilterCategory.YODA_FORCE_OBJECT);
                        if(_loc5_ || _loc2_)
                        {
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr100);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                  }
                  switch(§§pop())
                  {
                     case 0:
                        this.§ a§(_loc2_,"RED",-1);
                        if(_loc5_)
                        {
                           break;
                        }
                        addr64:
                        break;
                     case 1:
                        this.§ a§(_loc2_,"GREEN",-1);
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr64);
                        }
                  }
                  §§goto(addr120);
               }
               §§goto(addr100);
            }
            addr120:
            return param1;
         }
         §§goto(addr26);
      }
      
      override protected function addObjectBird(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0, param6:Boolean = true) : §?"N§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(param1.type);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         var _loc8_:§=+§ = param4 as §=+§;
         if(!(_loc10_ && param1))
         {
            §§push(_loc7_);
            loop0:
            while(true)
            {
               §§push(§-!F§.§+"§);
               loop1:
               while(§§pop().indexOf(§§pop()) != 0)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop3:
                     while(true)
                     {
                        §§push(§@!8§.§+"§);
                        loop4:
                        while(!_loc10_)
                        {
                           if(§§pop().indexOf(§§pop()) != 0)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 loop6:
                                 while(!_loc10_)
                                 {
                                    §§push(§]!-§.§+"§);
                                    loop7:
                                    while(_loc9_)
                                    {
                                       if(§§pop().indexOf(§§pop()) != 0)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§-E§.§+"§);
                                                loop10:
                                                while(_loc9_)
                                                {
                                                   if(§§pop().indexOf(§§pop()) != 0)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_ || param3)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§9"J§.§+"§);
                                                                     loop13:
                                                                     while(§§pop().indexOf(§§pop()) != 0)
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           loop15:
                                                                           while(_loc9_ || param2)
                                                                           {
                                                                              §§push(§8!?§.§+"§);
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(§§pop().indexOf(§§pop()) != 0)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                §§push(§=1§.§+"§);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop().indexOf(§§pop()) != 0)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ && param3)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         break loop14;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   if(!(_loc10_ && param3))
                                                                                                   {
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr269);
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          return super.addObjectBird(param1,param2,param3,param4,param5,param6);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop11;
                                                                              }
                                                                              if(_loc9_ || param3)
                                                                              {
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           if(!(_loc9_ || param3))
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 return new §-E§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                                                                              }
                                                                              addr247:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr207:
                                                                           }
                                                                           if(_loc9_ || param3)
                                                                           {
                                                                              return new §=1§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                                                                           }
                                                                           continue loop2;
                                                                           return new §]!-§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                                                                        }
                                                                        break;
                                                                     }
                                                                     return new §9"J§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         return new §8!?§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                                                      }
                                                      break loop1;
                                                   }
                                                   §§goto(addr207);
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                           addr269:
                           return new §@!8§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         return new §-!F§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
      }
      
      override protected function addParticleSpace(param1:§94§, param2:Sprite, param3:§>"G§) : §7B§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§8!W§ = null;
         §§push(param1.type);
         if(!(_loc12_ && param2))
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc13_)
         {
            if(§§pop().indexOf("SCORE") != -1)
            {
               if(_loc13_)
               {
                  §§push(§&#I§.§+"§);
                  if(_loc13_)
                  {
                     addr44:
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
            }
            §§push(param1.x);
            if(!(_loc12_ && param3))
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param1.y);
            if(_loc13_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.angle);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param1.§2"5§);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param1.§`#Y§);
            if(_loc13_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc9_:* = §§pop();
            var _loc10_:§2"q§;
            if(!(_loc10_ = §2#G§.levelItemManager.getItem(_loc4_) as §2"q§))
            {
               if(_loc13_)
               {
                  return null;
               }
               addr153:
               _loc11_ = §2#G§.textureManager.getTexture(param1.type);
               if(_loc13_)
               {
                  return new §&#I§(_loc11_,param2,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
               }
               addr173:
               §§push(_loc4_);
            }
            else
            {
               if(_loc10_.§<#B§)
               {
                  if(_loc13_)
                  {
                     return new §#!j§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
                  }
               }
               else
               {
                  §§push(_loc4_);
                  if(!_loc12_)
                  {
                     if(§§pop() == §&#I§.§+"§)
                     {
                        if(!(_loc12_ && param2))
                        {
                           §§goto(addr153);
                        }
                        return new §7!w§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                        addr231:
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr174);
               }
               §§goto(addr231);
            }
            addr174:
            if(§§pop().indexOf("Trail") != -1)
            {
               if(!(_loc12_ && param1))
               {
                  return new §^"g§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
               }
            }
            else
            {
               if(_loc10_.amount <= 3)
               {
                  if(_loc12_ && param1)
                  {
                     §§goto(addr231);
                  }
               }
               §§goto(addr231);
            }
            return new §7O§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         §§goto(addr44);
      }
      
      override protected function addObjectPig(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§<!2§ = null;
         if(_loc8_)
         {
            if(param3.hasSubAnimation(§%#@§.§2#'§))
            {
               _loc6_ = new §%3§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,param5);
               addr27:
               if(!_loc7_)
               {
                  §§goto(addr61);
               }
               §§goto(addr77);
            }
            else
            {
               _loc6_ = super.addObjectPig(param1,param2,param3,param4,param5);
            }
            addr61:
            if(param1.type == "PIG_KING")
            {
               if(_loc8_)
               {
                  addr77:
                  this.§>q§(_loc6_,1.5,"FORCE_GLOW_RED_CIRCLE_L",-1);
               }
            }
            return _loc6_;
         }
         §§goto(addr27);
      }
      
      public function §4#>§(param1:§+c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!W§.push(param1);
         }
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.updateObjects(param1);
            do
            {
               this.§]!C§();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§9c§ = null;
         if(!(_loc7_ && this))
         {
            super.renderObjects(param1,param2,param3);
         }
         var _loc4_:* = int(this.§<0§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(_loc5_ = this.§<0§[_loc4_]);
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop() / §2#G§.timeSpeedMultiplier);
            }
            if(!§§pop().update(§§pop()))
            {
               if(!(_loc7_ && param3))
               {
                  _loc5_.dispose();
                  if(!_loc6_)
                  {
                     continue;
                  }
                  this.§<0§.splice(_loc4_,1);
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc4_);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() - 1);
            }
            _loc4_ = §§pop();
         }
      }
      
      public function §`2§(param1:Number, param2:b2Body) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§-!5§ = null;
         var _loc4_:b2JointEdge = null;
         for each(_loc3_ in §6!Z§)
         {
            if(!_loc7_)
            {
               §§push(Boolean(_loc3_.isBreakable));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           addr68:
                           if(param1 < _loc3_.minBreakForce)
                           {
                              continue;
                           }
                        }
                        §§push((_loc4_ = param2.GetJointList()) == null);
                        if(_loc8_ || this)
                        {
                           §§push(!§§pop());
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ && param2)
                                 {
                                 }
                                 addr103:
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       §`"S§(_loc3_);
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr103);
                           }
                           §§pop();
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§push(_loc4_.joint == _loc3_.§##>§);
                        }
                        §§goto(addr103);
                     }
                  }
               }
            }
            §§goto(addr68);
         }
      }
      
      private function §`#S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:§+c§) : §!!"§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§3!2§ = null;
         §§push((_loc7_ = §##W§.§`!5§(param1,param2,param3,param4,param5,param6.x,param6.y)).distance);
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:Point = new Point(0,0);
         if(!(_loc16_ && param2))
         {
            §§push(_loc8_);
            if(!_loc16_)
            {
               if(§§pop() != 0)
               {
                  _loc9_.x = _loc7_.§>"6§.x - param6.x;
                  loop0:
                  while(true)
                  {
                     if(!_loc16_)
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        addr98:
                     }
                  }
                  §§goto(addr108);
                  addr107:
               }
               _loc9_.y = -1;
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         §§goto(addr98);
      }
      
      private function §]!C§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+c§ = null;
         while(this.§2!W§.length > 0)
         {
            _loc1_ = this.§2!W§.pop();
            if(_loc3_)
            {
               this.§-@§(_loc1_);
               if(!_loc3_)
               {
                  continue;
               }
            }
            this.§6A§(_loc1_);
         }
      }
      
      private function §6A§(param1:§+c§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§'!L§ = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§!!"§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < §'J§.laserCount)
         {
            _loc3_ = §'J§.getLaser(_loc2_);
            if(!_loc10_)
            {
               §§push(Number(_loc3_.width));
               while(true)
               {
                  _loc4_ = §§pop();
               }
               addr119:
            }
            loop2:
            while(true)
            {
               §§push(Number(_loc3_.height));
               while(true)
               {
                  _loc5_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(Number(_loc3_.x));
                     loop5:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr102:
                        while(!(_loc10_ && _loc3_))
                        {
                           while(true)
                           {
                              §§push(Number(_loc3_.y));
                              continue loop5;
                              addr58:
                              if(!(_loc11_ || _loc2_))
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              _loc9_ = this.§`#S§(_loc6_,_loc7_,_loc4_,_loc5_,_loc8_,param1);
                              if(_loc11_)
                              {
                                 this.§-"v§(param1,_loc9_,_loc3_);
                                 if(!(_loc11_ || param1))
                                 {
                                    continue loop0;
                                 }
                              }
                              _loc2_++;
                              continue loop0;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §-"v§(param1:§+c§, param2:§!!"§, param3:§'!L§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!(_loc6_ && this))
         {
            §§push(param2.distance);
            loop0:
            while(true)
            {
               §§push(§§pop() < param1.explosionRadius);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr115:
                        while(true)
                        {
                           §§push(param2.§2+§);
                           if(_loc5_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc5_ || this))
                           {
                              break;
                           }
                           if(_loc6_ && param2)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(Number(Math.atan2(param3.y - param1.y,param3.x - param1.x)));
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        _loc4_ = §§pop();
                     }
                     loop5:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           param3.reflectToAngle(_loc4_,param3.speed);
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                           continue loop5;
                        }
                     }
                     §§goto(addr115);
                  }
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §-@§(param1:§+c§) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:Vector.<§&#=§> = null;
         var _loc5_:§&#=§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:§!!"§ = null;
         var _loc12_:* = NaN;
         var _loc3_:Number = Math.max(param1.explosionRadius,param1.explosionDamageRadius,param1.smallExplosionRadius);
         §§push(this);
         §§push(param1.x);
         §§push(param1.y);
         §§push(_loc3_);
         if(!(_loc13_ && _loc2_))
         {
            §§push(-§§pop());
         }
         §§push(_loc3_);
         §§push(_loc3_);
         if(_loc14_)
         {
            §§push(-§§pop());
         }
         _loc2_ = §§pop().§-!f§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),_loc3_);
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc2_.length)
         {
            §§push((_loc5_ = _loc2_[_loc4_]) is §1#E§);
            if(!_loc13_)
            {
               §§push(§§pop());
               if(_loc14_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc13_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc13_)
                        {
                           addr216:
                           §§push(_loc5_ is §?"N§);
                           loop13:
                           while(true)
                           {
                              §§push(§§pop());
                              addr217:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       addr219:
                                       while(true)
                                       {
                                          §§push(Boolean(_loc5_.levelItem.isMaterialStatic));
                                          if(!_loc13_)
                                          {
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop13;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    addr218:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ || param1))
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(Number(_loc5_.levelItem.shape.getHeight()));
                                             loop4:
                                             while(true)
                                             {
                                                if(!_loc13_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc13_ && _loc3_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(Number(_loc5_.§3!t§().GetPosition().x));
                                                   loop6:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            while(true)
                                                            {
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(Number(_loc5_.§3!t§().GetPosition().y));
                                                                  while(true)
                                                                  {
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           if(!_loc14_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(Number(_loc5_.§3!t§().GetAngle()));
                                                                              if(_loc14_ || _loc3_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(!(_loc14_ || _loc3_))
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 if(true)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               _loc11_ = this.§`#S§(_loc8_,_loc9_,_loc6_,_loc7_,_loc10_,param1);
                                                               if(_loc14_)
                                                               {
                                                                  addr305:
                                                                  §§push(_loc5_ is §1!K§);
                                                                  if(_loc5_ is §1!K§)
                                                                  {
                                                                     addr317:
                                                                     §§pop();
                                                                     §§push(_loc11_.§2+§);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     addr318:
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr295:
                                                                           if(§§pop())
                                                                           {
                                                                              addr297:
                                                                              (_loc5_ as §1!K§).§0!v§();
                                                                           }
                                                                           addr255:
                                                                           §§push(this.§=c§(param1,_loc11_,_loc5_));
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc12_ = §§pop();
                                                                           if(_loc14_ || _loc2_)
                                                                           {
                                                                              if(_loc14_ || param1)
                                                                              {
                                                                                 this.§`2§(_loc12_,_loc5_.§3!t§());
                                                                                 if(!(_loc13_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       addr319:
                                                                                       _loc4_++;
                                                                                       break loop4;
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr297);
                                                               continue loop7;
                                                            }
                                                            addr162:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr219);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop11;
                                                   }
                                                   addr211:
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                    else
                                    {
                                       §§push(Number(_loc5_.levelItem.shape.getWidth()));
                                    }
                                    §§goto(addr211);
                                 }
                              }
                           }
                           addr216:
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr216);
               }
               §§goto(addr217);
            }
            §§goto(addr216);
         }
      }
      
      private function §=c§(param1:§+c§, param2:§!!"§, param3:§&#=§) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            §§push(param2.distance);
            loop0:
            while(true)
            {
               §§push(param1.smallExplosionRadius);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(1);
                        loop3:
                        while(true)
                        {
                           §§push(param2.distance);
                           if(_loc6_ || param3)
                           {
                              §§push(param1.smallExplosionRadius);
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                              }
                              addr370:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.smallExplosionMinForce);
                                       if(_loc6_ || param3)
                                       {
                                          §§push(param1.smallExplosionForce);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1.smallExplosionMinForce);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(_loc5_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr328:
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc6_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr337:
                                                                     while(true)
                                                                     {
                                                                        §§push(§#_§.§8]§);
                                                                     }
                                                                  }
                                                                  addr336:
                                                               }
                                                               addr339:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            addr328:
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  this.§]#L§(param3,param2.§>!j§,_loc4_,param2.§>"6§);
                                                                  while(!(_loc7_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param2.distance);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.explosionRadius);
                                                                           continue loop9;
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || param3)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       loop26:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          §§push(param2.§2+§);
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                addr198:
                                                                                                if(_loc6_ || param3)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         addr274:
                                                                                                      }
                                                                                                      §§goto(addr198);
                                                                                                   }
                                                                                                   addr272:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr207:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc7_ && param2)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         §§push(1);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§push(param2.distance);
                                                                                                         if(_loc6_ || param3)
                                                                                                         {
                                                                                                            §§push(param1.explosionRadius);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr370);
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc6_ || param2))
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§goto(addr240);
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               if(_loc6_ || param3)
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr165);
                                                                                                            }
                                                                                                         }
                                                                                                         addr23:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(param1.explosionMinForce);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(param1.explosionForce);
                                                                                       if(!(_loc7_ && param3))
                                                                                       {
                                                                                          §§push(param1.explosionMinForce);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          addr98:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc6_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr127:
                                                                                                         if(_loc7_ && param2)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc7_ && param3)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr148:
                                                                                                               §§push(§#_§.§8]§);
                                                                                                               if(_loc6_ || param2)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr160:
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     addr165:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(_loc6_)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        while(_loc6_)
                                                                                                                        {
                                                                                                                           this.§]#L§(param3,param2.§>!j§,_loc4_,param2.§>"6§);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                     addr165:
                                                                                                                  }
                                                                                                                  §§goto(addr165);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                         §§goto(addr165);
                                                                                                      }
                                                                                                      §§goto(addr148);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      addr240:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr160);
                                                                                             }
                                                                                             §§goto(addr165);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    §§goto(addr165);
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr336);
                                             }
                                          }
                                       }
                                       §§goto(addr328);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr259);
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §]#L§(param1:§&#=§, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:b2Vec2 = new b2Vec2(param2.x * param3,param2.y * param3);
         var _loc6_:b2Vec2 = new b2Vec2(param4.x,param4.y);
         if(_loc7_ || param3)
         {
            param1.§3!t§().ApplyImpulse(_loc5_,_loc6_);
            loop0:
            while(true)
            {
               §§push(param1.§=G§ == GravityFilterCategory.FORCE_OBJECT);
               if(!_loc8_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc7_ || this)
                        {
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           this.§ a§(param1);
                        }
                        if(_loc7_)
                        {
                           addr97:
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(param1.§=G§ == GravityFilterCategory.YODA_FORCE_OBJECT);
                           if(_loc8_)
                           {
                              continue loop1;
                           }
                           addr66:
                           if(!(_loc8_ && param1))
                           {
                              §§push(!§§pop());
                              continue loop1;
                           }
                           addr119:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                              §§goto(addr66);
                           }
                        }
                        continue loop1;
                     }
                     return;
                     addr81:
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §-!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§&#=§>
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[7] = null;
            addr282:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public function § a§(param1:§&#=§, param2:String = "BLUE", param3:Number = 1500) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§["$§;
         if(_loc4_ = param1.levelItem as §["$§)
         {
            if(_loc5_)
            {
               §§push(this);
               §§push(param1);
               if(_loc5_)
               {
                  §§push(_loc4_.getNumberProperty("glowScale"));
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc6_)
                     {
                        §§goto(addr48);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr48);
               }
               §§goto(addr62);
            }
         }
         addr48:
         if(!§§pop())
         {
            if(!_loc6_)
            {
               addr62:
               §§pop();
               §§push(Number(1));
            }
         }
         §§pop().§>q§(§§pop(),§§pop(),_loc4_.§@"y§(param2),param3);
      }
      
      protected function §>q§(param1:§&#=§, param2:Number, param3:String, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§8!W§ = null;
         if(_loc8_)
         {
            this.§5"[§(param1);
         }
         var _loc5_:§#"t§ = null;
         var _loc6_:§["$§;
         if(_loc6_ = param1.levelItem as §["$§)
         {
            if(!(_loc9_ && this))
            {
               if(_loc7_ = §2#G§.textureManager.getTexture(param3))
               {
                  (_loc5_ = new §#"t§(_loc7_.texture)).pivotX = -_loc7_.pivotX;
                  if(_loc8_)
                  {
                     _loc5_.pivotY = -_loc7_.pivotY;
                     loop0:
                     while(true)
                     {
                        _loc5_.scaleX = param2;
                        loop1:
                        while(true)
                        {
                           addr107:
                           while(true)
                           {
                              _loc5_.scaleY = param2;
                              addr111:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr132);
            }
            §§goto(addr151);
         }
         §§goto(addr132);
      }
      
      protected function §5"[§(param1:§&#=§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§9c§ = null;
         if(!_loc5_)
         {
            if(param1)
            {
               if(_loc4_)
               {
                  _loc2_ = int(this.§<0§.length - 1);
                  addr33:
                  while(_loc2_ >= 0)
                  {
                     _loc3_ = this.§<0§[_loc2_];
                     if(_loc4_ || this)
                     {
                        if(_loc3_.§[!@§ == param1)
                        {
                           if(_loc4_)
                           {
                              _loc3_.dispose();
                              addr101:
                              loop4:
                              while(true)
                              {
                                 addr69:
                                 while(true)
                                 {
                                    this.§<0§.splice(_loc2_,1);
                                    addr75:
                                    addr82:
                                    while(_loc5_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr101:
                           }
                           §§goto(addr101);
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr75);
                           §§goto(addr82);
                        }
                        continue;
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr33);
            }
            return;
         }
         §§goto(addr33);
      }
      
      override protected function performTriggerActionOnObject(param1:§&#=§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§9c§ = null;
         if(!_loc7_)
         {
            if(param2 == "removeGravityFilterCategory")
            {
               addr25:
               for each(_loc4_ in this.§<0§)
               {
                  if(_loc4_.§[!@§ == param1)
                  {
                     if(!(_loc7_ && this))
                     {
                        _loc4_.§1#T§(300);
                     }
                     break;
                  }
               }
            }
            super.performTriggerActionOnObject(param1,param2,param3);
            return;
         }
         §§goto(addr25);
      }
      
      override public function removeObject(param1:§7B§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§5"[§(param1 as §&#=§);
         }
         do
         {
            super.removeObject(param1,param2);
         }
         while(!_loc3_);
         
      }
      
      override protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || this)
         {
            §§push(param1);
            loop0:
            while(§§pop() > 50)
            {
               while(true)
               {
                  §§push(Number(Math.max(param2,param3)));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(Number(Math.min(param1,_loc4_)));
                        loop4:
                        while(_loc7_)
                        {
                           param1 = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(Number(3000000));
                              while(_loc7_)
                              {
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    continue loop5;
                                 }
                                 §§push(Number(Math.min(param1 * param1 * param1,_loc5_)));
                                 continue loop2;
                                 if(!_loc6_)
                                 {
                                    param1 = §§pop();
                                    do
                                    {
                                       if(!(_loc7_ || param2))
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§findproperty(§&!G§));
                                       §§push(true);
                                       §§push(0.2);
                                       §§push(5 * param1);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_ || param2)
                                          {
                                             addr56:
                                             §§push(§§pop() / §§pop());
                                             §§push(param1);
                                             if(!_loc6_)
                                             {
                                                addr59:
                                                §§push(§§pop() / _loc5_);
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§push(§§pop() * 500);
                                             continue;
                                          }
                                          §§goto(addr59);
                                       }
                                       §§goto(addr56);
                                    }
                                    while(§§pop().§&!G§(§§pop(),§§pop(),§§pop(),§§pop()), _loc6_);
                                    
                                    break loop0;
                                    addr92:
                                 }
                              }
                              continue loop4;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr134);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = 900;
         if(_loc4_)
         {
            §§push(§§findproperty(§&!G§));
            §§push(true);
            §§push(0.2);
            §§push(param1);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc4_)
                  {
                     addr49:
                     §§push(§§pop() * 4);
                  }
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / _loc2_);
                     if(_loc4_ || _loc3_)
                     {
                     }
                     §§goto(addr80);
                  }
                  §§push(§§pop() * 400);
               }
               §§goto(addr80);
            }
            §§goto(addr49);
         }
         addr80:
         §§pop().§&!G§(§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      override public function objectCollision(param1:§7B§, param2:§7B§, param3:b2Contact) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1 is §]!-§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param2 is §]!-§);
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1 is §&#=§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(§§pop())
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§="R§(param1 as §&#=§,param2 as §&#=§,param3));
                                                      while(_loc4_)
                                                      {
                                                         while(_loc5_ || param1)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                      if(_loc5_ || param2)
                                                      {
                                                         break loop7;
                                                      }
                                                      continue loop7;
                                                      addr55:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2 is §&#=§);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                   continue;
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr100);
                                       }
                                       return §§pop();
                                    }
                                 }
                                 return super.objectCollision(param1,param2,param3);
                              }
                              addr86:
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §="R§(param1:§&#=§, param2:§&#=§, param3:b2Contact) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.health);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.health);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Boolean = super.objectCollision(param1,param2,param3);
         if(!(_loc8_ && param3))
         {
            §§push(param1.health);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr209:
                              while(true)
                              {
                                 §§push(param2.health);
                                 addr151:
                                 while(!_loc8_)
                                 {
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       while(!(_loc8_ && param2))
                                       {
                                       }
                                       continue loop2;
                                       addr157:
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           addr208:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param2.health);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          while(true)
                                          {
                                             §§push(param2.healthMax);
                                             addr109:
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(param1.healthMax);
                                             if(_loc7_ || this)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(3);
                                                   if(_loc7_)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr59);
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                     addr43:
                                                                  }
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                     param3.reset();
                                                                     addr59:
                                                                     §§push(true);
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ && param2)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        addr66:
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           addr186:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr66);
                                                                        }
                                                                     }
                                                                     addr59:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(param1.health);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§goto(addr131);
                                                                     }
                                                                     §§goto(addr109);
                                                                  }
                                                                  §§goto(addr151);
                                                                  §§goto(addr59);
                                                               }
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      addr185:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr185);
                                                   }
                                                   addr184:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr184);
                                                }
                                                addr183:
                                             }
                                             §§goto(addr131);
                                          }
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr201);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      override protected function updateObject(param1:§7B§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.updateObject(param1,param2);
         }
      }
   }
}
