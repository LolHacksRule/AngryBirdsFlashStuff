package §7H§
{
   import § D§.§]!B§;
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §2!H§.§&!U§;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §]=§.b2World;
   import flash.geom.Point;
   
   public class §%d§ extends LevelObject
   {
       
      
      public var §]!C§:Boolean = false;
      
      public var §'D§:Boolean = false;
      
      private var §]![§:§-m§;
      
      private var §@y§:Point;
      
      private var §5!i§:Number = 0;
      
      public function §%d§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_)
         {
         }
         if(!(_loc10_ && aLevelObjects))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; !_loc10_; if(!_loc10_)
                        {
                           continue loop0;
                        })
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(_loc11_)
                                 {
                                    while(!_loc10_)
                                    {
                                       if(!(_loc10_ && aLevelObjects))
                                       {
                                          if(!_loc10_)
                                          {
                                             while(!_loc10_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop6;
                                             addr59:
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
                  addr108:
                  loop10:
                  while(!(_loc10_ && aLevelObjects))
                  {
                     super(aLevelObjects,aSprite,aWorld,aMain,aId,"POWERUP_BOMB",aX,aY,aRotation,scale);
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           continue loop10;
                        }
                        §§goto(addr96);
                        addr42:
                        if(!(_loc10_ && aSprite))
                        {
                           return;
                        }
                     }
                     §§goto(addr128);
                  }
               }
               if(!(_loc11_ || aWorld))
               {
                  continue;
               }
               this.§+!L§();
               while(_loc11_)
               {
                  if(_loc10_ && this)
                  {
                     continue;
                  }
                  §§goto(addr42);
               }
               §§goto(addr59);
            }
         }
         while(true)
         {
            §§goto(addr108);
         }
      }
      
      private function §+!L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || parachutePivotTexture)
            {
               addr31:
            }
            var parachutePivotTexture:§;K§ = §]!B§.§>F§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  this.§]![§ = new §-m§(parachutePivotTexture.texture,true);
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        this.§@y§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
                        continue loop1;
                        loop6:
                        while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 addr88:
                                 while(_loc3_)
                                 {
                                    §]!B§.§>F§.objects.§5!K§.addChild(this.§]![§);
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr88);
            }
         }
         §§goto(addr31);
      }
      
      public function §5!j§(deltaTime:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
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
                  while(!(_loc6_ && deltaTime))
                  {
                     continue loop0;
                     while(_loc7_ || this)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function get §9,§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(!§9f§());
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               addr61:
               return §§pop();
               addr87:
            }
         }
      }
   }
}
