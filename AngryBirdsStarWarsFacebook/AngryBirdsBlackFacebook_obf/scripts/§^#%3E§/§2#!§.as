package §^#>§
{
   import §!!U§.Sprite;
   import §2"Y§.§"t§;
   import §2"Y§.§8!D§;
   import §2"Y§.§=+§;
   import §7P§.§;=§;
   import §?m§.§8!B§;
   
   public class §2#!§ extends §;x§
   {
       
      
      public function §2#!§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(param1);
            §§push(param2);
            §§push(param3);
            if(_loc5_)
            {
               if(param2.hasGround)
               {
                  addr38:
                  §§push(Number(1));
                  if(_loc4_ && this)
                  {
                     addr61:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(0.5);
                  if(_loc5_)
                  {
                     §§goto(addr61);
                  }
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),param2.hasGround,param2.worldGravity > 0);
               §§goto(addr69);
            }
            §§goto(addr38);
         }
         addr69:
      }
      
      override protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(param1 is §=+§)
            {
               if(_loc7_ || param3)
               {
                  §§goto(addr39);
               }
            }
            return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
         }
         addr39:
         return new §-y§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§`"]§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = true;
         var _loc4_:§8!D§;
         §§push(Boolean(_loc4_ = param1.levelItem as §8!D§));
         if(_loc5_ || _loc3_)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  §§pop();
                  if(!(_loc6_ && param2))
                  {
                     §§push(Boolean(_loc4_.spriteScore));
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §2#G§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§;=§.§""3§,false,false,false,3,true);
                              addr129:
                              addr94:
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr95:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr100:
                        }
                        while(true)
                        {
                           §2#G§.addScore(param2,§&'§.§1!W§,_loc3_,param1.x,param1.y - 3);
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc5_ || param1)
                                 {
                                    break;
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr129);
                           }
                        }
                        return;
                     }
                     addr99:
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr94);
      }
      
      override protected function showDestructionParticles(param1:§`"]§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:§8!D§ = param1.levelItem as §8!D§;
         if(!_loc5_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_.§-Q§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() > 0);
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 loop3:
                                 while(§§pop())
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       _loc3_ = 0;
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ >= _loc2_.§-Q§)
                                       {
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                addr83:
                                                while(true)
                                                {
                                                   §2#G§.objects.addObject(_loc4_,param1.x,param1.y,0,§;=§.§""3§,false,true,false,1,true);
                                                }
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                          continue;
                                          addr44:
                                       }
                                       else
                                       {
                                          §§push(_loc2_.§="§(_loc3_));
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                §§push(_loc4_ = §§pop());
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr83);
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc3_++;
                                          §§goto(addr44);
                                       }
                                    }
                                 }
                                 return;
                                 addr121:
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr148);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr121);
            }
         }
         §§goto(addr148);
      }
   }
}
