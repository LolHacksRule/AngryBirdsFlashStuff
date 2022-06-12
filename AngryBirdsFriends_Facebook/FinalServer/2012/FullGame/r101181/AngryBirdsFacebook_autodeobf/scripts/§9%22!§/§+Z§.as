package §9"!§
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §9"%§.§&!r§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §+Z§
   {
      
      private static var §@3§:Texture;
      
      private static var §=!'§:Vector.<§0!N§>;
       
      
      private var §<1§:Number;
      
      private var §%t§:Boolean;
      
      private var §]?§:Vector.<§0!N§>;
      
      public function §+Z§(param1:Number)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]?§ = new Vector.<§0!N§>();
            do
            {
               super();
               do
               {
                  this.§<1§ = param1;
               }
               while(_loc2_ && this);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function §2q§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc5_:Point = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:§&!r§ = null;
         var _loc14_:§0!N§ = null;
         var _loc15_:* = NaN;
         var _loc16_:§0!N§ = null;
         if(_loc18_ || param1)
         {
            if(!§@3§)
            {
               if(!(_loc17_ && param1))
               {
                  §@3§ = §#6§.§6!z§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
               }
            }
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:* = Number(0);
         var _loc8_:int = 0;
         var _loc9_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc9_);
            if(_loc18_ || param2)
            {
               §§push(!§§pop());
               if(_loc18_)
               {
                  if(§§pop())
                  {
                     addr536:
                     if(!_loc18_)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc4_.y += this.§<1§ * §4"F§.§@"<§;
                           loop5:
                           while(true)
                           {
                              §§push(Number(_loc6_.x));
                              loop6:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Number(_loc6_.y));
                                    loop8:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       while(_loc18_ || this)
                                       {
                                          §§push(0);
                                          if(_loc18_ || this)
                                          {
                                             _loc12_ = §§pop();
                                             loop10:
                                             while(!_loc17_)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_);
                                                      if(!(_loc18_ || param2))
                                                      {
                                                         break;
                                                         addr234:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§4"F§.§%!g§);
                                                         if(!_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               addr246:
                                                               §§push(!_loc5_);
                                                               if(_loc18_)
                                                               {
                                                                  addr250:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc18_ || param3)
                                                                     {
                                                                        addr259:
                                                                        §§pop();
                                                                        if(_loc18_ || param1)
                                                                        {
                                                                           addr284:
                                                                           if(_loc5_.subtract(_loc6_).length > §4"F§.§8!p§)
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr297:
                                                                                       (_loc5_ = new Point()).setTo(_loc6_.x,_loc6_.y);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(this.§]?§.length > _loc8_)
                                                                                          {
                                                                                             addr312:
                                                                                             _loc14_ = this.§]?§[_loc8_];
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                addr339:
                                                                                                _loc8_++;
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   _loc14_.x = _loc6_.x / §9"3§.§'"F§;
                                                                                                   _loc14_.y = _loc6_.y / §9"3§.§'"F§;
                                                                                                   addr428:
                                                                                                   addr420:
                                                                                                   §§push(1);
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(§4"F§.§9,§);
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr398:
                                                                                                            §§push(§§pop() * 0.5);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         _loc15_ = §§pop();
                                                                                                         addr404:
                                                                                                         if(_loc18_ || param1)
                                                                                                         {
                                                                                                            addr363:
                                                                                                            _loc14_.scaleX = _loc15_;
                                                                                                            if(!(_loc17_ && param2))
                                                                                                            {
                                                                                                               _loc14_.scaleY = _loc15_;
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  if(_loc18_ || param3)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     addr429:
                                                                                                                     _loc6_.x += _loc4_.x * §4"F§.§@"<§;
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        _loc6_.y += _loc4_.y * §4"F§.§@"<§;
                                                                                                                        if(!(_loc17_ && param3))
                                                                                                                        {
                                                                                                                           addr463:
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!(_loc17_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc4_.length * §4"F§.§@"<§);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       addr489:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          addr492:
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          addr493:
                                                                                                                                          §§push(§4"F§.§9,§);
                                                                                                                                       }
                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                       {
                                                                                                                                          addr557:
                                                                                                                                          if(this.§]?§.length > _loc8_)
                                                                                                                                          {
                                                                                                                                             _loc16_ = this.§]?§.pop();
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §#6§.§6!z§.objects.§9" §.removeChild(_loc16_);
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr554:
                                                                                                                                                   this.§=L§(_loc16_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr557);
                                                                                                                                             }
                                                                                                                                             §§goto(addr554);
                                                                                                                                          }
                                                                                                                                          addr562:
                                                                                                                                          return;
                                                                                                                                          addr503:
                                                                                                                                          addr537:
                                                                                                                                       }
                                                                                                                                       §§goto(addr562);
                                                                                                                                    }
                                                                                                                                    §§goto(addr493);
                                                                                                                                 }
                                                                                                                                 §§goto(addr489);
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           §§goto(addr489);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                                  §§goto(addr404);
                                                                                                               }
                                                                                                               §§goto(addr363);
                                                                                                               addr374:
                                                                                                            }
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                         §§goto(addr420);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr398);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc14_ = this.§^!9§();
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §#6§.§6!z§.objects.§9" §.addChild(_loc14_);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   this.§]?§.push(_loc14_);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr339);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr503);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr463);
                                                                           }
                                                                           §§goto(addr429);
                                                                        }
                                                                        §§goto(addr463);
                                                                     }
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            else
                                                            {
                                                               addr522:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  break loop12;
                                                               }
                                                               addr522:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc4_.x * §4"F§.§@"<§);
                                                               while(true)
                                                               {
                                                                  §§push(§4"F§.§%!g§);
                                                                  addr142:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     addr143:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr144:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                                  addr93:
                                                                  if(!(_loc18_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§4"F§.§%!g§);
                                                                  if(_loc18_)
                                                                  {
                                                                     addr105:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           addr115:
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§goto(addr144);
                                                                           }
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                           if(_loc18_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if((_loc13_ = §#6§.§6!z§.§<f§.§%7§(_loc10_,_loc11_)) != null)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr250);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc12_++;
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr522);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(_loc11_);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc4_.y * §4"F§.§@"<§);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§goto(addr93);
                                                                                 }
                                                                                 §§goto(addr105);
                                                                              }
                                                                              §§goto(addr115);
                                                                           }
                                                                           §§goto(addr537);
                                                                        }
                                                                        continue loop11;
                                                                        addr145:
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr562);
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§4"F§.§9"E§);
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr234);
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr562);
                     }
                     addr536:
                  }
                  §§goto(addr536);
               }
               §§pop();
               if(_loc18_)
               {
                  §§goto(addr522);
               }
               §§goto(addr562);
            }
            §§goto(addr536);
         }
      }
      
      public function hide() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0!N§ = null;
         while(this.§]?§.length > 0)
         {
            _loc1_ = this.§]?§.pop();
            if(_loc2_ || _loc2_)
            {
               §#6§.§6!z§.objects.§9" §.removeChild(_loc1_);
               if(!_loc3_)
               {
                  this.§=L§(_loc1_);
               }
            }
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§%t§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%t§ = param1;
         }
      }
      
      private function §^!9§() : §0!N§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(§=!'§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr70);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§=!'§.length > 0);
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                        addr80:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return new §0!N§(§@3§);
                  addr66:
               }
               §§goto(addr80);
            }
         }
         addr70:
         return §=!'§.pop();
      }
      
      private function §=L§(param1:§0!N§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§=!'§)
            {
               while(true)
               {
                  §=!'§ = new Vector.<§0!N§>();
                  while(true)
                  {
                  }
               }
               addr50:
            }
            do
            {
               §=!'§.push(param1);
               if(_loc2_ && param1)
               {
                  continue;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr50);
      }
   }
}
