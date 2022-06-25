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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               do
               {
                  loop2:
                  do
                  {
                     while(!_loc4_)
                     {
                        super(newLevelMain,level,sprite);
                        while(_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
                  while(!(_loc5_ || level));
                  
               }
               while(!_loc5_);
               
            }
         }
      }
      
      override public function addObject(itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, onFrontLayer:Boolean = false) : LevelObject
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc11_ && x)
         {
         }
         var easterEggId:* = null;
         if(!_loc11_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr169:
                     loop8:
                     for(; _loc12_ || this; while(_loc12_ || y)
                     {
                        §§goto(addr166);
                     })
                     {
                        loop9:
                        for(§§push(itemName); §§pop().indexOf("MISC_EASTER_EGG_") == 0; )
                        {
                           §§push("1000-");
                           continue loop8;
                           if(!_loc11_)
                           {
                              if(_loc12_ || y)
                              {
                                 §§push(§§pop() + itemName.split("_")[3]);
                              }
                           }
                           §§push(§§pop());
                           if(_loc12_ || y)
                           {
                              easterEggId = §§pop();
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       addr116:
                                       if(_loc12_ || x)
                                       {
                                          if(!(AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
                                          {
                                             break loop9;
                                          }
                                          if(_loc11_)
                                          {
                                             continue;
                                          }
                                          addr82:
                                          if(!(_loc11_ && itemName))
                                          {
                                             if(!_loc11_)
                                             {
                                                addr91:
                                                if(_loc12_ || this)
                                                {
                                                   break loop11;
                                                }
                                                addr210:
                                                while(true)
                                                {
                                                   §§goto(addr91);
                                                }
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr82);
                                          }
                                       }
                                       while(!_loc11_)
                                       {
                                          continue loop1;
                                          §§goto(addr116);
                                       }
                                       continue loop0;
                                    }
                                    continue loop11;
                                 }
                                 continue loop8;
                              }
                              return null;
                              addr151:
                           }
                        }
                        return super.addObject(itemName,x,y,rotation,trail,activeObject,tryToScream,scale,onFrontLayer);
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      override protected function createObject(objSprite:Sprite, itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObject
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc11_ && this)
         {
         }
         if(_loc10_)
         {
            while(true)
            {
               while(!(_loc11_ && itemName))
               {
                  for(; !(_loc11_ && x); if(_loc11_ && itemName)
                  {
                     continue;
                  },if(!_loc11_)
                  {
                     §§goto(addr124);
                  },§§goto(addr134))
                  {
                     while(true)
                     {
                        §§goto(addr137);
                     }
                  }
               }
            }
         }
         addr137:
         do
         {
            while(true)
            {
               if(itemName.indexOf("MISC_EASTER_EGG_") != 0)
               {
                  return super.createObject(objSprite,itemName,x,y,rotation,trail,activeObject,tryToScream,scale);
               }
               if(!_loc10_)
               {
                  break;
               }
               continue loop2;
            }
            continue loop3;
         }
         while(_loc11_ && itemName);
         
         return new FacebookLevelObjectGoldenEgg(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,itemName,x,y,rotation,scale);
      }
      
      public function §`!2§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §%d§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         if(!_loc7_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  while(!(_loc8_ && this))
                  {
                     if(!_loc8_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     addr34:
                     if(!(_loc7_ || rotation))
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           while(_loc8_ && y)
                           {
                           }
                           if(!_loc8_)
                           {
                              §§goto(addr34);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop5;
                              }
                              addr48:
                           }
                        }
                        continue;
                     }
                     var objSprite:Sprite = new Sprite();
                     if(!_loc7_)
                     {
                     }
                     var obj:§%d§ = new §%d§(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,x,y,rotation,scale);
                     if(_loc7_ || y)
                     {
                        §8c§[§8c§.length] = obj;
                        addr162:
                        addr180:
                        if(_loc7_ || y)
                        {
                           §!!@§.addChild(objSprite);
                           addr152:
                           if(_loc7_ || y)
                           {
                              if(!(_loc8_ && rotation))
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr162);
                                 }
                                 return obj;
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr180);
                           addr169:
                        }
                        addr178:
                        §§goto(addr178);
                     }
                     §§goto(addr169);
                  }
               }
            }
         }
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(!(_loc5_ && this))
         {
            while(true)
            {
               addr65:
               if(!(_loc5_ && type))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §?h§.push(§!t§.createExplosion(type,x,y));
                  while(!_loc5_)
                  {
                     continue loop3;
                     while(!(_loc5_ && x))
                     {
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        if(!(_loc4_ || type))
                        {
                           continue loop3;
                        }
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                        §§goto(addr65);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
   }
}
