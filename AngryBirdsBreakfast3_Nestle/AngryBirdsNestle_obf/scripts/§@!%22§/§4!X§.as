package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §4!X§ extends §@_§
   {
       
      
      private var §,"0§:int = 0;
      
      public function §4!X§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:String = "", param8:int = 1)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         do
         {
            §@"%§ = param7;
            do
            {
               §8W§ = param8;
            }
            while(!_loc9_);
            
         }
         while(!(_loc9_ || param3));
         
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@5§;
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         if(!(_loc11_ && param1))
         {
            if(!param1)
            {
               if(_loc10_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§&!a§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc11_ && param1))
            {
               if(§§pop() >= _loc3_)
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  if(_loc10_)
                  {
                     if(!(_loc11_ && this))
                     {
                        if(!(_loc11_ && _loc2_))
                        {
                           if(!_loc11_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!(_loc11_ && this))
                              {
                                 §§push(-§=K§.height);
                                 if(!_loc11_)
                                 {
                                    if(!_loc11_)
                                    {
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§#=§.§^!2§);
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             if(!(_loc11_ && param1))
                                             {
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         addr278:
                                                         §§push(§§pop());
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(_loc10_ || param1)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  addr301:
                                                                  §§push(Math.random() * -_loc8_);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr317:
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr321:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop7:
                                                                              while(_loc11_)
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(180 / Math.PI);
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             addr442:
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr443:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr444:
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§=K§.width);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         addr340:
                                                                                                         §§push(§#=§.§^!2§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_ && param1)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc10_ || this))
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr416:
                                                                                                            }
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               _loc7_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Math.random() * -_loc7_);
                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                  }
                                                                                                                  addr387:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr370:
                                                                                                         }
                                                                                                         §§goto(addr373);
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr443);
                                    }
                                    §§goto(addr373);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr444);
                           }
                           _loc8_ = §§pop();
                           loop16:
                           while(true)
                           {
                              if(§@"%§ == "")
                              {
                                 param1.§9!@§(§`""§.§?!q§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`""§.§6!X§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                 while(!_loc10_)
                                 {
                                    continue loop16;
                                 }
                                 addr97:
                                 _loc5_++;
                                 continue loop0;
                                 addr148:
                              }
                           }
                           §§push(param1);
                           §§push(§@"%§ + "_");
                           if(!_loc11_)
                           {
                              §§push(§§pop() + _loc9_);
                           }
                           §§pop().§=9§(§§pop(),§`""§.§?!q§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`""§.§6!X§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                           §§goto(addr97);
                           addr204:
                        }
                        while(true)
                        {
                           §§push(1);
                           if(_loc10_)
                           {
                              addr230:
                              §§push(int(§§pop() + Math.floor(Math.random() * §8W§)));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 §§goto(addr231);
                              }
                              addr230:
                           }
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr148);
               }
               else
               {
                  §§push(_loc4_);
                  if(!(_loc11_ && this))
                  {
                     §§goto(addr416);
                     §§push(Math.random() * (720 / _loc3_));
                  }
               }
               §§goto(addr442);
            }
            §§goto(addr230);
         }
      }
   }
}
