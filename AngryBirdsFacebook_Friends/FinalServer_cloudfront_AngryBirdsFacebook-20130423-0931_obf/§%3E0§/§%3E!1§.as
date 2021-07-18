package §>0§
{
   import §2"'§.§6!K§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>!1§ extends Sprite
   {
       
      
      private var §[! §:Sprite;
      
      private var §1!&§:Number;
      
      private var §9m§:Number;
      
      private var §4X§:§6!K§;
      
      public function §>!1§(param1:Number, param2:Boolean)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = null;
         if(!(_loc8_ && param2))
         {
            super();
         }
         var _loc3_:* = 7;
         if(!_loc8_)
         {
            if(param2)
            {
               if(!(_loc8_ && _loc3_))
               {
                  addr41:
                  §§push(10);
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     addr45:
                     §§push(int(Math.random() * _loc3_));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc4_);
                  if(_loc7_)
                  {
                     var _loc6_:* = §§pop();
                     if(_loc7_ || this)
                     {
                        §§push(0);
                        if(!_loc8_)
                        {
                           §§push(_loc6_);
                           if(_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(0);
                                    if(_loc7_ || param1)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr401:
                                    §§push(9);
                                    if(!(_loc8_ && this))
                                    {
                                       addr409:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(1);
                                 if(!(_loc8_ && param2))
                                 {
                                    §§push(_loc6_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(1);
                                             if(_loc7_ || this)
                                             {
                                                addr415:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr161:
                                                      _loc5_ = "P_STAR_4";
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr423:
                                                      break;
                                                   case 1:
                                                      addr149:
                                                      §§push("P_STAR_3");
                                                      if(_loc7_ || param2)
                                                      {
                                                         _loc5_ = §§pop();
                                                         break;
                                                         addr157:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                      break;
                                                   case 2:
                                                      addr141:
                                                      _loc5_ = "P_STAR_2";
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      return;
                                                      addr440:
                                                   case 3:
                                                      addr128:
                                                      _loc5_ = "P_STAR_1";
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         addChild(this.§[! §);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            this.mouseEnabled = false;
                                                            loop2:
                                                            while(!_loc8_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§[! §.x = -this.§[! §.width / 2;
                                                                  while(!_loc8_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        this.§[! §.y = -this.§[! §.height / 2;
                                                                        if(_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr440);
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      break;
                                                      addr484:
                                                   case 4:
                                                      addr108:
                                                      §§push("P_SMOKE_3");
                                                      if(_loc7_ || param1)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc7_ || param1)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr423);
                                                   case 5:
                                                      addr98:
                                                      §§push("P_SMOKE_2");
                                                      if(!_loc8_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr101:
                                                         if(!_loc8_)
                                                         {
                                                            addr72:
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr157);
                                                   case 6:
                                                      addr76:
                                                      §§push("P_SMOKE_1");
                                                      if(_loc7_ || param2)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr423);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      break;
                                                   case 7:
                                                   case 8:
                                                   case 9:
                                                      §§push("P_COIN_1");
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr72);
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr141);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr98);
                                                         }
                                                         §§goto(addr72);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr76);
                                                      }
                                                }
                                                this.§[! § = this.§=f§(_loc5_);
                                                addr414:
                                                §§goto(addr128);
                                                addr414:
                                             }
                                             else
                                             {
                                                addr339:
                                                §§goto(addr414);
                                             }
                                             §§goto(addr414);
                                          }
                                          else
                                          {
                                             §§goto(addr401);
                                          }
                                       }
                                       else
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc8_ && param2))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push(2);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§goto(addr414);
                                                      }
                                                      else
                                                      {
                                                         addr320:
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            addr323:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(6);
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     §§goto(addr339);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr399:
                                                                     if(§§pop() === _loc6_)
                                                                     {
                                                                        §§goto(addr401);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr414);
                                                                        §§push(10);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr364:
                                                                  §§push(7);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr414);
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            else
                                                            {
                                                               §§push(7);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  addr348:
                                                                  §§push(_loc6_);
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     addr356:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§goto(addr364);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr401);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(8);
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           addr376:
                                                                           §§push(_loc6_);
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr384:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr387:
                                                                                    §§push(8);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr401);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(9);
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr399);
                                                                                 }
                                                                                 §§goto(addr414);
                                                                              }
                                                                              §§goto(addr414);
                                                                           }
                                                                           §§goto(addr399);
                                                                        }
                                                                        §§goto(addr414);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                            }
                                                            §§goto(addr414);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr282:
                                                      §§push(3);
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr414);
                                                      }
                                                      else
                                                      {
                                                         addr307:
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(5);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr316:
                                                                     §§goto(addr414);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr376);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr364);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(6);
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                      }
                                                      §§goto(addr414);
                                                   }
                                                   §§goto(addr399);
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr282);
                                                            }
                                                            else
                                                            {
                                                               addr300:
                                                               §§push(4);
                                                               if(_loc7_)
                                                               {
                                                                  addr303:
                                                                  §§goto(addr414);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr316);
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         else
                                                         {
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  addr297:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr300);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr401);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr414);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr414);
                                                         }
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr323);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr414);
                                    }
                                    §§goto(addr356);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr297);
                        }
                        §§goto(addr348);
                     }
                     §§goto(addr387);
                  }
                  §§goto(addr415);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr41);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4X§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4X§);
                     addr94:
                     while(true)
                     {
                        §§pop().stop();
                        addr95:
                        while(true)
                        {
                           this.§4X§ = null;
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  removeChild(this.§[! §);
                  while(_loc1_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§[! § = null;
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                        continue;
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr74);
                  §§goto(addr74);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr95);
      }
      
      public function §=f§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §?q§.§ q§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_ || param1)
         {
            _loc2_.x = _loc2_.width / 2;
         }
         do
         {
            _loc2_.y = _loc2_.height / 2;
         }
         while(_loc5_ && param1);
         
         return _loc2_;
      }
      
      public function set §-">§(param1:§6!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4X§ = param1;
         }
      }
      
      public function get §-">§() : §6!K§
      {
         return this.§4X§;
      }
      
      public function get §7j§() : Number
      {
         return this.§1!&§;
      }
      
      public function set §7j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!&§ = param1;
         }
      }
      
      public function get §^!R§() : Number
      {
         return this.§9m§;
      }
      
      public function set §^!R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9m§ = param1;
         }
      }
   }
}
