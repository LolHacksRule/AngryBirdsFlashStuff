package starling.events
{
   import §3!J§.Stage;
   import flash.geom.Point;
   
   public class §"!7§
   {
      
      private static const §%!Z§:Number = 0.3;
      
      private static const §7E§:Number = 25;
      
      private static var §^!@§:Vector.<int>;
      
      private static var §-O§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Z§ = 0.3;
         }
         loop0:
         while(true)
         {
            §7E§ = 25;
            while(true)
            {
               §^!@§ = new Vector.<int>(0);
               while(!_loc2_)
               {
                  continue loop0;
                  §-O§ = new Vector.<Object>(0);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §<!s§:Stage;
      
      private var §&!5§:Number;
      
      private var §-!_§:Number;
      
      private var §&Z§:§>q§;
      
      private var §&e§:Vector.<§4&§>;
      
      private var §3!m§:Vector.<Array>;
      
      private var §9O§:Vector.<§4&§>;
      
      private var §+l§:Boolean = false;
      
      private var §7+§:Boolean = false;
      
      public function §"!7§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(!_loc4_)
            {
               addr22:
               this.§<!s§ = param1;
               if(!_loc4_)
               {
                  this.§&!5§ = this.§-!_§ = 0;
                  if(_loc3_)
                  {
                     this.§&e§ = new Vector.<§4&§>(0);
                     loop6:
                     while(true)
                     {
                        this.§3!m§ = new Vector.<Array>(0);
                        addr117:
                        while(true)
                        {
                           this.§9O§ = new Vector.<§4&§>(0);
                           while(_loc3_ || _loc2_)
                           {
                              loop4:
                              while(!(_loc4_ && param1))
                              {
                                 addr90:
                                 §§push(this.§<!s§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(KeyboardEvent.KEY_UP);
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§%!c§);
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             return;
                                          }
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(KeyboardEvent.KEY_DOWN);
                                       §§goto(addr90);
                                    }
                                    addr78:
                                 }
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§%!c§);
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     addr136:
                  }
                  while(true)
                  {
                     §§goto(addr78);
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr117);
         }
         §§goto(addr22);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§<!s§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr92:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§%!c§);
                  continue loop0;
               }
            }
            addr90:
         }
         loop2:
         while(true)
         {
            §§push(this.§<!s§);
            if(_loc2_ || _loc2_)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§%!c§);
                  do
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.§&Z§);
                        if(!(_loc1_ && this))
                        {
                           if(!§§pop())
                           {
                              §§goto(addr20);
                           }
                           if(_loc1_)
                           {
                              continue;
                           }
                           §§push(this.§&Z§);
                        }
                        §§pop().dispose();
                        continue;
                     }
                     continue loop2;
                  }
                  while(_loc1_);
                  
                  addr20:
                  return;
               }
            }
            else
            {
               §§goto(addr90);
            }
            §§goto(addr92);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§4&§ = null;
         var _loc5_:§4&§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_ || this)
         {
            §§push(this);
            §§push(this.§&!5§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&!5§ = §§pop();
            loop0:
            while(true)
            {
               this.§-!_§ = 0;
               loop1:
               while(this.§9O§.length > 0)
               {
                  if(_loc11_ || _loc3_)
                  {
                     while(true)
                     {
                        _loc2_ = int(this.§9O§.length - 1);
                     }
                     addr98:
                  }
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
               addr147:
               addr569:
               loop34:
               while(true)
               {
                  if(this.§3!m§.length <= 0)
                  {
                     addr556:
                     if(!(_loc10_ && param1))
                     {
                        if(!_loc10_)
                        {
                           if(_loc11_)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              addr658:
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§-!_§);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(§§pop() + 0.00001);
                                                }
                                                §§pop().§-!_§ = §§pop();
                                                addr596:
                                                while(!(_loc10_ && _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      continue loop34;
                                                   }
                                                   §§goto(addr556);
                                                }
                                                continue loop10;
                                             }
                                             addr583:
                                          }
                                          else
                                          {
                                             if(this.§&e§[_loc2_].phase == §,g§.§&!]§)
                                             {
                                                if(!_loc10_)
                                                {
                                                   this.§&e§.splice(_loc2_,1);
                                                   addr651:
                                                   while(true)
                                                   {
                                                   }
                                                   addr651:
                                                }
                                                §§goto(addr651);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                             }
                                          }
                                       }
                                       addr582:
                                    }
                                    while(true)
                                    {
                                       if(_loc10_ && _loc2_)
                                       {
                                          break loop10;
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop10;
                                       }
                                    }
                                 }
                                 addr657:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop9;
                                 }
                              }
                              addr658:
                           }
                           §§goto(addr651);
                        }
                        §§goto(addr583);
                     }
                     §§goto(addr596);
                  }
                  else
                  {
                     §^!@§.length = §-O§.length = 0;
                     if(_loc11_ || _loc2_)
                     {
                        §§push(0);
                        if(!_loc10_)
                        {
                           addr168:
                           var _loc8_:* = §§pop();
                           if(!(_loc10_ && _loc3_))
                           {
                              var _loc9_:* = this.§&e§;
                              loop13:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                addr249:
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(this.§3!m§.length > 0);
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc10_ && this))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§^!@§.indexOf(this.§3!m§[this.§3!m§.length - 1][0]) == -1);
                                                                  addr413:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     _loc3_ = (_loc7_ = this.§3!m§.pop())[0] as int;
                                                                     §§push(Boolean(_loc4_ = this.§9!^§(_loc3_)));
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc4_.phase == §,g§.HOVER);
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          addr377:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr380:
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc4_.target));
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop17:
                                                                                                         for(; _loc11_ || _loc2_; if(_loc10_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(true)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         })
                                                                                                         {
                                                                                                            §-O§.push({
                                                                                                               "touch":_loc4_,
                                                                                                               "target":_loc4_.target
                                                                                                            });
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr315:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§;e§.apply(this,_loc7_);
                                                                                                                  do
                                                                                                                  {
                                                                                                                     §^!@§.push(_loc3_);
                                                                                                                  }
                                                                                                                  while(_loc10_ && param1);
                                                                                                                  
                                                                                                                  if(_loc11_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr379:
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                               }
                                                               addr400:
                                                            }
                                                            loop32:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr424:
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §-O§;
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc9_,_loc8_));
                                                                              if(_loc10_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc9_ = §^!@§;
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr543:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                            break loop6;
                                                                                                         }
                                                                                                         addr543:
                                                                                                      }
                                                                                                      addr513:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push((_loc4_ = this.§9!^§(_loc3_)).target);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  addr532:
                                                                                                                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§>P§,this.§&e§,this.§+l§,this.§7+§));
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr543);
                                                                                                         }
                                                                                                         §§goto(addr532);
                                                                                                      }
                                                                                                   }
                                                                                                   addr501:
                                                                                                }
                                                                                                addr546:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(this.§&e§.length - 1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr657);
                                                                                                      }
                                                                                                      addr656:
                                                                                                   }
                                                                                                   §§goto(addr658);
                                                                                                }
                                                                                             }
                                                                                             addr493:
                                                                                          }
                                                                                          §§goto(addr657);
                                                                                       }
                                                                                       §§goto(addr622);
                                                                                    }
                                                                                    §§goto(addr546);
                                                                                 }
                                                                                 break loop13;
                                                                              }
                                                                              _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                              if(_loc6_.touch.target != _loc6_.target)
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§>P§,this.§&e§,this.§+l§,this.§7+§));
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr544:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                              §§goto(addr513);
                                                                              §§goto(addr543);
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        addr432:
                                                                     }
                                                                     §§goto(addr501);
                                                                     continue loop32;
                                                                  }
                                                                  addr424:
                                                               }
                                                               §§goto(addr621);
                                                            }
                                                            addr416:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr413);
                                                }
                                                if(_loc11_)
                                                {
                                                   §§goto(addr416);
                                                }
                                             }
                                             §§goto(addr622);
                                          }
                                          §§goto(addr546);
                                       }
                                       break;
                                    }
                                    _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                    §§push(_loc5_.phase);
                                    if(_loc11_ || this)
                                    {
                                       §§push(§,g§.§,!4§);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc11_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr212:
                                                   §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      continue;
                                                   }
                                                   addr219:
                                                   §§push(_loc5_.phase == §,g§.§"=§);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   _loc5_.§-1§(§,g§.§0W§);
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr544);
                              }
                              while(true)
                              {
                                 §§goto(addr546);
                              }
                           }
                           §§goto(addr432);
                        }
                        §§goto(addr493);
                     }
                     §§goto(addr249);
                  }
               }
               return;
            }
         }
         §§goto(addr98);
      }
      
      public function §"!+§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§3!m§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§7+§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr131:
                              while(true)
                              {
                                 §§push(this.§><§);
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 loop8:
                                 while(§§pop())
                                 {
                                    do
                                    {
                                       this.§&Z§.§]!3§(param3,param4,this.§+l§);
                                       do
                                       {
                                          this.§3!m§.unshift([1,param2,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
                                       }
                                       while(_loc7_ && param3);
                                       
                                    }
                                    while(_loc7_ && param3);
                                    
                                    addr80:
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§push(param1 == 0);
                                          if(!(_loc6_ || this))
                                          {
                                             break;
                                          }
                                          continue loop8;
                                          §§goto(addr80);
                                       }
                                       continue loop1;
                                       addr113:
                                    }
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr131);
                                 }
                              }
                              continue loop1;
                              return;
                           }
                           break;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      private function §;e§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4&§;
         if((_loc6_ = this.§9!^§(param1)) == null)
         {
            if(_loc7_)
            {
               _loc6_ = new §4&§(param1,param3,param4,param2,null);
               if(_loc7_ || param1)
               {
                  this.§?T§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(!_loc8_)
                  {
                     _loc6_.§-1§(param2);
                     loop13:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§&!5§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + this.§-!_§);
                        }
                        §§pop().§]y§(§§pop());
                        addr177:
                        while(_loc8_)
                        {
                           continue loop13;
                        }
                        §§push(param2);
                        loop12:
                        while(true)
                        {
                           §§push(§,g§.HOVER);
                           loop11:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       addr154:
                                       addr156:
                                       while(!_loc7_)
                                       {
                                          §§goto(addr177);
                                          continue loop10;
                                       }
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr103:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop12;
                                             }
                                             §§push(§,g§.§,!4§);
                                             while(true)
                                             {
                                                if(!(_loc7_ || param3))
                                                {
                                                   continue loop11;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc7_ || param1))
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc7_ || param3))
                                                {
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(!(_loc8_ && param3))
                                       {
                                          _loc6_.§>"-§(this.§<!s§.hitTest(_loc5_,true));
                                          while(true)
                                          {
                                             §§goto(addr62);
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    addr62:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc7_)
                                       {
                                          §§push(§,g§.§,!4§);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                break;
                                             }
                                             if(_loc7_ || this)
                                             {
                                                continue loop5;
                                             }
                                             addr98:
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr103);
                                       continue loop5;
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr51);
            }
            §§goto(addr156);
         }
         §§goto(addr51);
      }
      
      private function §%!c§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§4&§ = null;
         var _loc4_:§4&§ = null;
         if(!_loc6_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               addr229:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§7+§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             this.§7+§ = param1.type == KeyboardEvent.KEY_DOWN;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§><§);
                                                   loop13:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(_loc5_)
                                                      {
                                                         if(_loc6_ && this)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr167:
                                                                  while(true)
                                                                  {
                                                                     addr64:
                                                                     do
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr104:
                                                                     }
                                                                     while(!_loc6_);
                                                                     
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               addr166:
                                                            }
                                                            loop19:
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               loop21:
                                                               while(!(_loc6_ && _loc2_))
                                                               {
                                                                  addr148:
                                                                  §§push(this.§&Z§);
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().visible = this.§7+§;
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop21;
                                                                        §§goto(addr148);
                                                                     }
                                                                     addr540:
                                                                     return;
                                                                     addr131:
                                                                  }
                                                                  §§pop().§=]§(this.§<!s§.stageWidth / 2,this.§<!s§.stageHeight / 2);
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        _loc3_ = this.§9!^§(0);
                                                                        _loc4_ = this.§9!^§(1);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr503:
                                                                              this.§&Z§.§]!3§(_loc3_.globalX,_loc3_.globalY);
                                                                           }
                                                                           addr495:
                                                                           §§push(_loc2_ && _loc4_);
                                                                           if(_loc2_ && _loc4_)
                                                                           {
                                                                              addr491:
                                                                              §§pop();
                                                                              addr492:
                                                                              §§push(_loc4_.phase == §,g§.§&!]§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr467:
                                                                                    addr466:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr468:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          addr472:
                                                                                          this.§3!m§.unshift([1,§,g§.§&!]§,_loc4_.globalX,_loc4_.globalY]);
                                                                                          break loop19;
                                                                                          addr483:
                                                                                       }
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                    §§push(this.§7+§);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       addr438:
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr453:
                                                                                                §§pop();
                                                                                                addr454:
                                                                                                §§push(Boolean(_loc3_));
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr367:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr369:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               addr382:
                                                                                                               §§push(_loc3_.phase);
                                                                                                               §§push(§,g§.§,!4§);
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr401:
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr416:
                                                                                                                                 §§push(_loc3_.phase);
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§,g§.§"=§);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr326:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr328:
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  this.§3!m§.unshift([1,§,g§.§,!4§,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
                                                                                                                                                                  addr352:
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr500);
                                                                                                                                                                  }
                                                                                                                                                                  break loop19;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr454);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr369);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr416);
                                                                                                                                                      }
                                                                                                                                                      this.§3!m§.unshift([1,§,g§.HOVER,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr416);
                                                                                                                                                               }
                                                                                                                                                               break loop19;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr468);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr328);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr352);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr499);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr453);
                                                                                                                                          }
                                                                                                                                          §§goto(addr401);
                                                                                                                                       }
                                                                                                                                       §§goto(addr382);
                                                                                                                                    }
                                                                                                                                    §§goto(addr492);
                                                                                                                                 }
                                                                                                                                 §§goto(addr382);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr495);
                                                                                                                        }
                                                                                                                        §§goto(addr326);
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr401);
                                                                                                               }
                                                                                                               §§goto(addr492);
                                                                                                            }
                                                                                                            §§goto(addr503);
                                                                                                         }
                                                                                                         §§goto(addr483);
                                                                                                      }
                                                                                                      break loop19;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr467);
                                                                                             }
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr495);
                                                                                    }
                                                                                    §§goto(addr491);
                                                                                 }
                                                                                 §§goto(addr495);
                                                                              }
                                                                              §§goto(addr467);
                                                                           }
                                                                           §§goto(addr466);
                                                                        }
                                                                        §§goto(addr472);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr167);
                                                                  }
                                                                  §§goto(addr64);
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr540);
                                                         }
                                                      }
                                                      while(_loc5_ || _loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr233:
                                                         addr514:
                                                         while(true)
                                                         {
                                                            §§push(param1.keyCode);
                                                            if(!(_loc5_ || this))
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(§§pop() == 16)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               break loop11;
                                                            }
                                                         }
                                                         §§goto(addr540);
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                addr183:
                                             }
                                             break;
                                          }
                                          this.§+l§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          §§goto(addr540);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(param1.keyCode);
                              }
                              §§goto(addr514);
                           }
                        }
                        §§goto(addr232);
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      private function §&!H§(param1:§4&§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§4&§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§4&§ = null;
         §§push(§7E§);
         if(!_loc9_)
         {
            §§push(§§pop() * §7E§);
            if(!(_loc9_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§9O§)
         {
            if(!(_loc9_ && _loc2_))
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && this))
                  {
                     _loc5_ = §§pop();
                     addr97:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr99:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr99);
         }
         if(_loc8_ || param1)
         {
            if(_loc2_)
            {
               if(!_loc9_)
               {
                  param1.§"!Q§(_loc2_.§ >§ + 1);
                  addr174:
                  while(true)
                  {
                     this.§9O§.splice(this.§9O§.indexOf(_loc2_),1);
                     addr153:
                     loop3:
                     while(true)
                     {
                        addr119:
                        while(true)
                        {
                           this.§9O§.push(param1.clone());
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(!(_loc9_ && this))
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr174:
               }
               §§goto(addr174);
            }
            else
            {
               param1.§"!Q§(1);
            }
            while(true)
            {
               if(!_loc9_)
               {
                  §§goto(addr119);
               }
               else
               {
                  §§goto(addr174);
               }
            }
         }
         §§goto(addr174);
      }
      
      private function §?T§(param1:§4&§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§&e§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        this.§&e§.push(param1);
                     }
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        addr103:
                        this.§&e§.splice(_loc2_,1);
                        loop1:
                        while(true)
                        {
                           addr71:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr73:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr74:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr108:
                     }
                     while(_loc4_ && param1)
                     {
                        §§goto(addr108);
                     }
                     continue;
                  }
                  if(this.§&e§[_loc2_].id == param1.id)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr71);
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
      }
      
      private function §9!^§(param1:int) : §4&§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4&§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&e§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §><§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&Z§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §><§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§><§ != param1)
            {
               return;
            }
         }
      }
   }
}
