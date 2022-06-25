package §=C§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!_§.LevelModel;
   import §[!h§.§<v§;
   import §]!@§.LevelMain;
   
   public class FacebookLevelObjectManager extends LevelObjectManager
   {
       
      
      public function FacebookLevelObjectManager(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || sprite)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_ || level)
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        return;
                        addr53:
                        addr97:
                     }
                     break;
                     addr36:
                     if(!(_loc4_ || level))
                     {
                        continue;
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      override public function addObject(itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, onFrontLayer:Boolean = false) : LevelObject
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc11_)
         {
         }
         var easterEggId:* = null;
         if(!_loc11_)
         {
            while(true)
            {
               loop3:
               while(_loc12_ || this)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        continue loop4;
                        addr132:
                        if(!(_loc12_ || x))
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!(AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
                           {
                              return super.addObject(itemName,x,y,rotation,trail,activeObject,tryToScream,scale,onFrontLayer);
                           }
                           addr28:
                           if(!_loc12_)
                           {
                              break;
                           }
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                        addr73:
                        if(_loc12_ || this)
                        {
                           addr80:
                           if(!(_loc12_ || y))
                           {
                              loop9:
                              while(_loc12_ || itemName)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc11_ && this)
                                    {
                                       while(!(_loc11_ && itemName))
                                       {
                                          §§push(itemName);
                                          break loop10;
                                       }
                                       continue loop4;
                                       addr189:
                                    }
                                    if(_loc12_)
                                    {
                                       §§push("1000-");
                                       if(_loc12_ || y)
                                       {
                                          addr121:
                                          if(_loc12_)
                                          {
                                             addr115:
                                             §§push(§§pop() + itemName.split("_")[3]);
                                          }
                                          §§push(§§pop());
                                          if(!(_loc12_ || x))
                                          {
                                             break;
                                          }
                                          easterEggId = §§pop();
                                          while(true)
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr132);
                                             §§goto(addr73);
                                          }
                                          §§goto(addr80);
                                       }
                                       §§goto(addr115);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                       addr218:
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop().indexOf("MISC_EASTER_EGG_") == 0)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr28);
                                    §§goto(addr121);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr218);
                                 §§goto(addr146);
                              }
                              addr146:
                              addr221:
                           }
                           if(!_loc11_)
                           {
                              return null;
                           }
                           continue loop3;
                        }
                        §§goto(addr130);
                     }
                  }
               }
            }
         }
         §§goto(addr221);
      }
      
      override protected function createObject(objSprite:Sprite, itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObject
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc11_)
         {
         }
         if(!_loc10_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc11_)
                  {
                     while(true)
                     {
                        addr150:
                        while(!(_loc10_ && objSprite))
                        {
                           continue loop1;
                        }
                     }
                     addr107:
                     if(!(_loc11_ || this))
                     {
                        continue;
                     }
                     if(itemName.indexOf("MISC_EASTER_EGG_") == 0)
                     {
                        addr94:
                        if(_loc11_ || itemName)
                        {
                           return new FacebookLevelObjectGoldenEgg(this,objSprite,§`s§.mLevelEngine.mWorld,§`s§,§8!,§,itemName,x,y,rotation,scale);
                           addr125:
                        }
                        while(!_loc10_)
                        {
                           loop7:
                           while(!_loc10_)
                           {
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr107);
                              }
                              return super.createObject(objSprite,itemName,x,y,rotation,trail,activeObject,tryToScream,scale);
                           }
                           §§goto(addr150);
                           §§goto(addr94);
                        }
                        continue loop1;
                     }
                     §§goto(addr25);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §+!X§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §<v§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && rotation)
         {
         }
         if(_loc8_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; _loc8_; while(_loc8_ || y)
                  {
                     §§goto(addr44);
                  })
                  {
                     while(true)
                     {
                        continue loop2;
                        addr51:
                        if(!(_loc7_ && y))
                        {
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           addr44:
                           addr44:
                           while(_loc8_ || this)
                           {
                              §§goto(addr51);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr42);
         }
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && x)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr38:
                     if(!(_loc5_ && this))
                     {
                        return;
                        addr45:
                     }
                  }
                  addr97:
                  if(!(_loc4_ || type))
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     SoundEngine.§-!h§("TntExplosions","ChannelExplosions");
                     addr63:
                     addr95:
                     loop6:
                     while(!(_loc5_ && type))
                     {
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop6;
                           }
                           if(!_loc4_)
                           {
                              continue loop5;
                           }
                           §§goto(addr38);
                        }
                        §§goto(addr45);
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr97);
                        §§goto(addr63);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
