package §?w§
{
   import §%!$§.§=m§;
   import §'!"§.§ -§;
   import §9N§.§8'§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §<!+§.§with§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §null§ extends §;c§
   {
       
      
      public function §null§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §`K§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§8'§ = §^c§("BIRD_CHEETOS_BAG",mX,mY);
         if(!_loc3_)
         {
            §&O§(§?!S§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§,!2§(_loc1_);
                  do
                  {
                     §=m§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
                  }
                  while(!_loc4_);
                  
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc2_:§8'§ = §`4§[§'!E§];
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(mX - _loc2_.radius);
                           if(_loc4_)
                           {
                              §§push(§§pop() - 0.2);
                           }
                           §§pop().setPosition(§§pop(),this.mY + 3);
                           addr108:
                           while(true)
                           {
                              _loc2_.§7c§();
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           §§goto(addr70);
                        }
                     }
                     addr70:
                     return;
                  }
                  §§goto(addr108);
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §9!N§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8'§ = null;
         if(!_loc5_)
         {
            if(§`4§.length > 0)
            {
               addr25:
               var _loc3_:* = §`4§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     if(_loc1_.name == "BIRD_CHEETOS_BAG")
                     {
                        if(_loc4_)
                        {
                           this.§,!2§(_loc1_);
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        §#@§(§`4§.indexOf(_loc1_),false);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §,!2§(param1:§8'§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 20;
         var _loc3_:* = 1;
         var _loc4_:* = Number(90);
         if(_loc10_ || _loc2_)
         {
            §§push(_loc3_);
            if(!(_loc9_ && _loc2_))
            {
               §§push(int(§§pop() * 1));
               if(!(_loc9_ && _loc2_))
               {
                  addr56:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!_loc9_)
                     {
                        if(_loc10_ || _loc3_)
                        {
                           if(_loc10_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc10_)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    §§push(-§§pop());
                                    if(_loc10_ || param1)
                                    {
                                       if(_loc10_)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(§§pop() * Math.sin(_loc6_));
                                             if(_loc10_ || param1)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc9_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * Math.random());
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            addr192:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §8@§.particles.addParticle(§ -§.CHEETOS_EXPLOSION,§,v§.§-!;§,§-&§.§ ,§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
                                                                  addr128:
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     addr80:
                                                                     do
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     while(_loc9_ && param1);
                                                                     
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Math.random() * (720 / _loc3_));
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr250:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(180 / Math.PI);
                                                                              }
                                                                              addr244:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr251:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr203:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(_loc6_));
                                                                                 addr207:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * Math.random());
                                                                                    addr210:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr250:
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     addr249:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr250);
                                                                     }
                                                                  }
                                                               }
                                                               addr216:
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr216);
               }
               return;
            }
         }
         §§goto(addr56);
      }
   }
}
