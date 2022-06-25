package §=C§
{
   import § 3§.FacebookUserProgress;
   import §#!,§.Sprite;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class FacebookLevelObjectGoldenEgg extends LevelObject
   {
       
      
      public function FacebookLevelObjectGoldenEgg(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aItemName:String, aX:Number, aY:Number, aRotation:Number, scale:Number, aFront:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc12_)
         {
         }
         if(_loc13_ || aWorld)
         {
            while(true)
            {
               addr150:
               if(!(_loc13_ || this))
               {
                  continue;
               }
               loop7:
               while(true)
               {
                  if(!(_loc12_ && aWorld))
                  {
                     addr128:
                     if(!(_loc12_ && this))
                     {
                        loop8:
                        for(; !(_loc12_ && aWorld); while(_loc13_ || aSprite)
                        {
                           continue loop7;
                           §§goto(addr59);
                        })
                        {
                           while(!_loc12_)
                           {
                              continue loop8;
                              addr66:
                              if(!(_loc12_ && aWorld))
                              {
                                 addr83:
                                 if(!(_loc12_ && aSprite))
                                 {
                                    return;
                                    addr57:
                                 }
                                 while(true)
                                 {
                                    if(_loc12_)
                                    {
                                       continue loop7;
                                    }
                                    if(!(_loc13_ || aWorld))
                                    {
                                       continue loop8;
                                    }
                                    §§goto(addr66);
                                    §§goto(addr83);
                                 }
                              }
                           }
                           while(!(_loc12_ && this))
                           {
                              while(!_loc12_)
                              {
                                 §§goto(addr150);
                                 continue loop7;
                              }
                              while(true)
                              {
                                 break loop7;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr160);
                           }
                           addr160:
                        }
                        while(true)
                        {
                           §§goto(addr170);
                           §§goto(addr111);
                        }
                        addr111:
                        addr173:
                     }
                     break;
                  }
                  §§goto(addr148);
               }
               while(true)
               {
                  §§goto(addr173);
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr179);
      }
      
      override public function applyDamage(damage:Number, addScore:Boolean = true, damagedByBird:Boolean = false, damagerFullHealth:Boolean = false, damageFromExplosion:Boolean = false, forceDestroy:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc8_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              while(!_loc8_)
                              {
                                 super.applyDamage(damage,addScore,damagedByBird,damagerFullHealth,damageFromExplosion,forceDestroy);
                                 loop7:
                                 while(_loc7_ || damagedByBird)
                                 {
                                    loop8:
                                    while(§3W§ <= 0)
                                    {
                                       if(!_loc7_)
                                       {
                                       }
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                continue loop3;
                                             }
                                             continue loop7;
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                    return §3W§;
                                 }
                              }
                              continue loop4;
                              addr38:
                              if(_loc7_ || damagedByBird)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr23);
      }
   }
}
