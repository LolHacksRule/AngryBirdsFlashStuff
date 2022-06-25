package §-^§
{
   import §#!X§.LevelModel;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §3Y§.LevelObject;
   import §3Y§.LevelObjectManager;
   import §7!]§.§2O§;
   import §8T§.FacebookUserProgress;
   import §?A§.LevelMain;
   
   public class FacebookLevelObjectManager extends LevelObjectManager
   {
       
      
      public function FacebookLevelObjectManager(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc4_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  while(!_loc5_)
                  {
                     super(newLevelMain,level,sprite);
                     while(_loc4_)
                     {
                        continue loop1;
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
            if(!(_loc4_ || level))
            {
               continue;
            }
            §§goto(addr74);
         }
      }
      
      override public function addObject(itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, onFrontLayer:Boolean = false) : LevelObject
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc12_)
         {
         }
         var easterEggId:* = null;
         if(_loc12_ || y)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc11_)
                  {
                     continue loop0;
                     loop9:
                     while(_loc12_ || this)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(itemName);
                           while(true)
                           {
                              if(§§pop().indexOf("MISC_EASTER_EGG_") != 0)
                              {
                                 return super.addObject(itemName,x,y,rotation,trail,activeObject,tryToScream,scale,onFrontLayer);
                              }
                              addr33:
                              §§push("1000-");
                              addr147:
                              continue loop10;
                              if(!_loc11_)
                              {
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() + itemName.split("_")[3]);
                                 }
                              }
                              §§push(§§pop());
                              if(_loc12_)
                              {
                                 easterEggId = §§pop();
                                 while(true)
                                 {
                                    if(!_loc12_)
                                    {
                                       addr140:
                                       while(_loc12_ || x)
                                       {
                                          §§goto(addr147);
                                       }
                                       while(!_loc11_)
                                       {
                                          continue loop9;
                                          §§goto(addr140);
                                       }
                                       addr140:
                                       while(!(_loc11_ && itemName))
                                       {
                                          while(true)
                                          {
                                             addr168:
                                             while(_loc12_)
                                             {
                                                §§goto(addr163);
                                             }
                                          }
                                       }
                                       addr163:
                                       continue loop0;
                                       addr186:
                                    }
                                    if(_loc11_ && x)
                                    {
                                       continue loop10;
                                    }
                                    if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
                                    {
                                       continue;
                                    }
                                    §§goto(addr33);
                                 }
                                 return null;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr140);
         }
      }
      
      override protected function createObject(objSprite:Sprite, itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObject
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || itemName)
         {
         }
         if(!(_loc10_ && itemName))
         {
            while(true)
            {
               addr131:
               if(!(_loc10_ && itemName))
               {
                  if(itemName.indexOf("MISC_EASTER_EGG_") == 0)
                  {
                     addr100:
                     if(!(_loc10_ && objSprite))
                     {
                        addr108:
                        if(!_loc10_)
                        {
                           addr110:
                           if(_loc11_)
                           {
                              addr112:
                              if(!(_loc11_ || this))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          addr154:
                                          while(true)
                                          {
                                             addr151:
                                             while(true)
                                             {
                                                continue loop6;
                                                §§goto(addr108);
                                             }
                                             §§goto(addr110);
                                          }
                                          continue loop5;
                                       }
                                    }
                                    addr170:
                                    while(true)
                                    {
                                       §§goto(addr167);
                                    }
                                 }
                                 while(!(_loc10_ && itemName))
                                 {
                                    §§goto(addr170);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr173);
                                 }
                                 addr173:
                                 addr183:
                              }
                              return new FacebookLevelObjectGoldenEgg(this,objSprite,§6f§.mLevelEngine.mWorld,§6f§,§#!+§,itemName,x,y,rotation,scale);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr122);
                  }
                  return super.createObject(objSprite,itemName,x,y,rotation,trail,activeObject,tryToScream,scale);
               }
            }
         }
         §§goto(addr183);
      }
      
      public function §11§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §2O§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && this)
         {
         }
         if(_loc8_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc8_)
                  {
                     while(!_loc7_)
                     {
                        loop4:
                        while(true)
                        {
                           addr42:
                           while(true)
                           {
                              addr44:
                              while(_loc8_)
                              {
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr42);
                        }
                        else
                        {
                           addr82:
                           var objSprite:Sprite = new Sprite();
                           if(!_loc8_)
                           {
                           }
                           var obj:§2O§ = new §2O§(this,objSprite,§6f§.mLevelEngine.mWorld,§6f§,§#!+§,x,y,rotation,scale);
                           if(_loc7_)
                           {
                           }
                           loop8:
                           while(true)
                           {
                              §!2§[§!2§.length] = obj;
                              loop9:
                              do
                              {
                                 while(true)
                                 {
                                    §?U§.addChild(objSprite);
                                    while(!(_loc7_ && this))
                                    {
                                       continue loop8;
                                       if(!_loc7_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              while(!(_loc8_ || x));
                              
                              return obj;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc8_)
            {
               §§goto(addr33);
            }
            §§goto(addr44);
         }
         §§goto(addr82);
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc4_ && this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               continue loop0;
               addr98:
               if(!(_loc4_ && x))
               {
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc5_ || y)
                        {
                           §§goto(addr98);
                        }
                        else
                        {
                           while(true)
                           {
                              §+!+§.push(§?p§.createExplosion(type,x,y));
                              continue loop4;
                           }
                           addr108:
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
