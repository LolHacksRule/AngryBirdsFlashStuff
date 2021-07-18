package §#![§
{
   import §!X§.§86§;
   import §,h§.§+0§;
   import §,h§.§4!9§;
   import §,h§.§6M§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §]@§.Sprite;
   import §`j§.b2FilterData;
   import §`j§.b2World;
   
   public class §5<§ extends §4!9§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            CHEETOS_EXPLOSION = "CHEETOS_EXPLOSION";
            do
            {
               CHEESE_PARTICLE = "CHEESE_PARTICLE";
            }
            while(_loc1_ && §5<§);
            
         }
      }
      
      public var §%7§:Boolean = true;
      
      public function §5<§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc17_:§+0§ = null;
         if(_loc19_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc18_)
            {
               if(!§§pop())
               {
                  if(!_loc18_)
                  {
                     §§goto(addr36);
                  }
               }
               var _loc2_:Number = §?!7§().GetPosition().x;
               var _loc3_:Number = §?!7§().GetPosition().y;
               var _loc4_:Number = §?!7§().GetLinearVelocity().x;
               var _loc5_:Number = §?!7§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!(_loc18_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc19_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc18_ && param1)
                     {
                     }
                     addr93:
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!_loc18_)
                     {
                        §§push(§§pop() / _loc6_);
                        if(_loc19_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:b2FilterData;
                     (_loc9_ = new b2FilterData()).§^-§ = §=!#§;
                     if(_loc19_ || _loc2_)
                     {
                        §§push(_loc9_);
                        §§push(65535);
                        if(_loc19_ || this)
                        {
                           §§push(~§;?§);
                           if(_loc19_ || param1)
                           {
                              addr151:
                              §§push(§§pop() & §§pop());
                              if(_loc19_ || param1)
                              {
                                 §§push(~§=!#§);
                              }
                              §§pop().§&!8§ = §§pop();
                              var _loc10_:Number = 2;
                              var _loc11_:Number = 75;
                              var _loc12_:Number = 10;
                              var _loc13_:Number = -7;
                              var _loc14_:Number = 3;
                              var _loc15_:Number = -17;
                              var _loc16_:Number = 0;
                              if(_loc19_)
                              {
                                 if(this.§%7§)
                                 {
                                    addr178:
                                    §§push(param1);
                                    §§push("CHEESE_STICKS");
                                    §§push(_loc2_);
                                    if(_loc19_ || this)
                                    {
                                       §§push(_loc8_);
                                       if(_loc19_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             §§push(_loc10_);
                                             if(!_loc18_)
                                             {
                                                addr208:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc3_);
                                                if(_loc19_)
                                                {
                                                   addr211:
                                                   §§push(§§pop() - _loc7_);
                                                }
                                                §§push(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false));
                                                if(_loc19_ || param1)
                                                {
                                                   (_loc17_ = §§pop()).§ !W§ = true;
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(_loc17_);
                                                      §§push(§§findproperty(b2Vec2));
                                                      §§push(_loc12_);
                                                      if(!(_loc18_ && _loc3_))
                                                      {
                                                         §§push(_loc16_);
                                                         if(_loc19_)
                                                         {
                                                            addr276:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(_loc13_);
                                                         }
                                                         §§pop().§`o§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                         loop0:
                                                         while(true)
                                                         {
                                                            addr250:
                                                            while(true)
                                                            {
                                                               _loc17_.§8W§(_loc11_);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                else
                                                {
                                                   addr682:
                                                   (_loc17_ = §§pop()).§ !W§ = false;
                                                   if(!_loc18_)
                                                   {
                                                      _loc17_.§`o§(new b2Vec2(20,20));
                                                      if(_loc19_ || param1)
                                                      {
                                                         addr712:
                                                         _loc17_.§>!!§(_loc9_);
                                                      }
                                                      §§goto(addr715);
                                                   }
                                                   §§goto(addr712);
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push("CHEESE_STICKS");
                                    §§push(_loc2_);
                                    if(!_loc18_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc19_ || _loc3_)
                                       {
                                          addr673:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc3_);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() - _loc7_);
                                          }
                                       }
                                       §§goto(addr682);
                                       §§push(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false));
                                    }
                                    §§goto(addr673);
                                 }
                              }
                              §§goto(addr178);
                           }
                           §§push(§§pop() & §§pop());
                        }
                     }
                     §§goto(addr151);
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr93);
            }
            §§goto(addr36);
         }
         addr36:
         return false;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.isReadyToBeRemoved(param1));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§;J§));
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          addr46:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop2;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       addr45:
                                    }
                                    else if(_loc3_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr46);
                                 }
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              return §§pop();
                              addr41:
                           }
                           §§goto(addr46);
                        }
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                     addr77:
                  }
                  §§goto(addr41);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr45);
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Number = 5;
         var _loc3_:int = §'!+§(false) + 1;
         var _loc4_:Number;
         §§push(_loc4_ = 90);
         if(_loc7_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc7_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               param1.addParticle(§5<§.CHEETOS_EXPLOSION,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1500,"",§7o§.§1!6§,0,0,0,0,2,20,true);
            }
            do
            {
               this.§9V§(param1);
            }
            while(!(_loc7_ || this));
            
            return;
         }
         §§goto(addr40);
      }
      
      private function §9V§(param1:§<2§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = 25;
         var _loc3_:* = 100;
         var _loc4_:* = Number(90);
         if(_loc10_)
         {
            §§push(_loc3_);
            if(!_loc9_)
            {
               §§push(int(§§pop() * 1));
               if(!(_loc9_ && _loc3_))
               {
                  addr46:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!_loc10_)
                     {
                        continue;
                     }
                     if(_loc10_)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc10_)
                           {
                              param1.addParticle(§5<§.CHEESE_PARTICLE,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,400 + 700 * Math.random(),"",§7o§.§3E§(§2!1§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
                              while(!_loc10_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(-§§pop());
                                       if(!_loc9_)
                                       {
                                          if(!(_loc10_ || param1))
                                          {
                                             continue;
                                          }
                                          addr137:
                                          if(_loc10_ || this)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * Math.sin(_loc6_));
                                                if(!(_loc10_ || _loc3_))
                                                {
                                                   continue loop1;
                                                }
                                                addr157:
                                                if(_loc10_)
                                                {
                                                   addr159:
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() * Math.random());
                                                         if(!_loc9_)
                                                         {
                                                            addr178:
                                                            if(_loc9_ && this)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr257:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr192:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc10_ || param1))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(§§pop() * Math.cos(_loc6_));
                                                                           while(_loc10_ || param1)
                                                                           {
                                                                              §§push(§§pop() * Math.random());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 continue loop8;
                                                                                 §§goto(addr157);
                                                                              }
                                                                              §§goto(addr159);
                                                                              §§goto(addr137);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc10_ || _loc2_))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(180 / Math.PI);
                                                                                    addr254:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 addr250:
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr219:
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * (720 / _loc3_));
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr228);
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              _loc5_++;
                              continue loop0;
                              addr105:
                           }
                           §§goto(addr257);
                        }
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr219);
               }
               return;
            }
         }
         §§goto(addr46);
      }
   }
}
