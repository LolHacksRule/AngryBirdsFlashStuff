package §3!3§
{
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.Sprite;
   import §?j§.FacebookUserProgress;
   import §]=§.b2World;
   
   public class FacebookLevelObjectGoldenEgg extends LevelObject
   {
       
      
      public function FacebookLevelObjectGoldenEgg(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aItemName:String, aX:Number, aY:Number, aRotation:Number, scale:Number, aFront:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc12_)
         {
         }
         if(!_loc12_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        continue loop0;
                        addr119:
                        if(!(_loc13_ || aLevelObjects))
                        {
                           continue;
                        }
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(_loc13_)
                           {
                              while(true)
                              {
                                 if(_loc13_ || aLevelObjects)
                                 {
                                    continue loop10;
                                 }
                                 continue loop11;
                              }
                              continue loop2;
                           }
                           addr145:
                           while(true)
                           {
                              addr142:
                              while(true)
                              {
                                 while(true)
                                 {
                                    addr117:
                                    while(!_loc12_)
                                    {
                                       §§goto(addr119);
                                    }
                                    continue loop0;
                                    addr85:
                                    if(_loc13_ || aWorld)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc13_ || this))
                  {
                     continue;
                  }
                  super(aLevelObjects,aSprite,aWorld,aMain,aId,aItemName,aX,aY,aRotation,scale,aFront);
                  for(; _loc13_; if(_loc12_ && this)
                  {
                     continue;
                  },if(_loc13_)
                  {
                     return;
                  },§§goto(addr61))
                  {
                     if(_loc13_)
                     {
                        continue;
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr117);
               }
            }
         }
         while(true)
         {
            §§goto(addr145);
         }
      }
      
      override public function applyDamage(damage:Number, addScore:Boolean = true, damagedByBird:Boolean = false, damagerFullHealth:Boolean = false, damageFromExplosion:Boolean = false, forceDestroy:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || addScore)
         {
         }
         if(_loc8_ || damagedByBird)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr192:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               while(true)
               {
                  if(!(_loc8_ || damage))
                  {
                     continue loop0;
                  }
                  super.applyDamage(damage,addScore,damagedByBird,damagerFullHealth,damageFromExplosion,forceDestroy);
                  §§goto(addr146);
                  §§goto(addr128);
               }
            }
         }
         while(true)
         {
            §§goto(addr172);
         }
      }
   }
}
