package §3!3§
{
   import §"L§.LevelModel;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.Sprite;
   import §7H§.§%d§;
   import §=?§.SoundEngine;
   import §?j§.FacebookUserProgress;
   
   public class FacebookLevelObjectManager extends LevelObjectManager
   {
       
      
      public function FacebookLevelObjectManager(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc5_ && level)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               do
               {
                  while(!_loc5_)
                  {
                     continue loop0;
                     while(_loc4_ || this)
                     {
                        if(_loc4_ || newLevelMain)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(!_loc4_);
               
               return;
            }
         }
      }
      
      override public function addObject(itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, onFrontLayer:Boolean = false) : LevelObject
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc12_ && this)
         {
         }
         var easterEggId:* = null;
         if(!_loc12_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(!_loc12_)
                        {
                           continue loop1;
                           while(!(_loc12_ && y))
                           {
                              while(true)
                              {
                                 addr174:
                                 while(_loc11_)
                                 {
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              addr144:
                              if(_loc12_ && x)
                              {
                                 continue;
                              }
                              §§push("1000-");
                              if(_loc11_ || this)
                              {
                                 if(!_loc12_)
                                 {
                                    addr124:
                                    §§push(§§pop() + itemName.split("_")[3]);
                                 }
                                 §§push(§§pop());
                                 if(!_loc11_)
                                 {
                                    while(§§pop().indexOf("MISC_EASTER_EGG_") == 0)
                                    {
                                       if(_loc11_)
                                       {
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          §§goto(addr174);
                                       }
                                    }
                                    addr32:
                                    return super.addObject(itemName,x,y,rotation,trail,activeObject,tryToScream,scale,onFrontLayer);
                                    addr137:
                                 }
                                 easterEggId = §§pop();
                                 loop12:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc12_)
                                       {
                                          continue loop12;
                                       }
                                       if(!(_loc11_ || this))
                                       {
                                          continue loop3;
                                       }
                                       if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
                                       {
                                          if(_loc11_)
                                          {
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr32);
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr124);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      override protected function createObject(objSprite:Sprite, itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObject
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc10_)
         {
         }
         if(!(_loc11_ && this))
         {
            while(true)
            {
            }
            addr174:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               while(_loc10_)
               {
                  while(!_loc11_)
                  {
                     while(!(_loc11_ && x))
                     {
                        while(true)
                        {
                           continue loop2;
                           addr108:
                           if(_loc10_ || x)
                           {
                              return new FacebookLevelObjectGoldenEgg(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,itemName,x,y,rotation,scale);
                           }
                        }
                     }
                  }
               }
               §§goto(addr174);
            }
         }
      }
      
      public function §`!2§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §%d§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         if(!_loc7_)
         {
            while(true)
            {
               loop1:
               while(!_loc7_)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addr56:
                        while(_loc8_)
                        {
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     addr35:
                     if(!(_loc8_ || rotation))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr44);
                     }
                     var objSprite:Sprite = new Sprite();
                     if(_loc8_ || y)
                     {
                     }
                     var obj:§%d§ = new §%d§(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,x,y,rotation,scale);
                     if(_loc8_ || this)
                     {
                        loop8:
                        while(true)
                        {
                           §8c§[§8c§.length] = obj;
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §!!@§.addChild(objSprite);
                                 while(_loc8_ || this)
                                 {
                                    continue loop9;
                                    if(!(_loc7_ && y))
                                    {
                                       if(_loc8_)
                                       {
                                          return obj;
                                          addr136:
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr136);
                  }
               }
            }
         }
         while(true)
         {
            if(_loc8_ || this)
            {
               if(!_loc7_)
               {
                  §§goto(addr35);
               }
               §§goto(addr56);
            }
            §§goto(addr46);
         }
         §§goto(addr72);
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && type)
         {
         }
         if(_loc4_ || y)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     for(; !(_loc5_ && y); if(_loc4_ || this)
                     {
                        return;
                     })
                     {
                        while(true)
                        {
                           §?h§.push(§!t§.createExplosion(type,x,y));
                           loop5:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 SoundEngine.§9!X§("TntExplosions","ChannelExplosions");
                                 while(_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
   }
}
