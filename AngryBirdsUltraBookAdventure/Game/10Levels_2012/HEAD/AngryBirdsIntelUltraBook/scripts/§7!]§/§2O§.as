package §7!]§
{
   import §-!>§.§4!T§;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §3Y§.LevelObject;
   import §3Y§.LevelObjectManager;
   import §8!?§.§?!B§;
   import §?!&§.b2Vec2;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import flash.geom.Point;
   
   public class §2O§ extends LevelObject
   {
       
      
      public var §4!`§:Boolean = false;
      
      public var §05§:Boolean = false;
      
      private var §2l§:§&p§;
      
      private var §#=§:Point;
      
      private var §;![§:Number = 0;
      
      public function §2O§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
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
               this.§1s§();
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
      
      private function §1s§() : void
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
            var parachutePivotTexture:§?!B§ = §4!T§.§1t§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  this.§2l§ = new §&p§(parachutePivotTexture.texture,true);
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        this.§#=§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
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
                                    §4!T§.§1t§.objects.§!!<§.addChild(this.§2l§);
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
      
      public function §@'§(deltaTime:Number) : void
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
      
      public function get §>%§() : Boolean
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
            §§push(!§8!N§());
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
