package starling.events
{
   import §^a§.Stage;
   import flash.geom.Point;
   
   public class §1a§
   {
      
      private static const §?!%§:Number = 0.3;
      
      private static const §@X§:Number = 25;
      
      private static var §&P§:Vector.<int>;
      
      private static var §%A§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §?!%§ = 0.3;
            do
            {
               §@X§ = 25;
               do
               {
                  §&P§ = new Vector.<int>(0);
                  do
                  {
                     §%A§ = new Vector.<Object>(0);
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && §1a§);
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §!H§:Stage;
      
      private var §=M§:Number;
      
      private var §;W§:Number;
      
      private var §0!1§:§"!1§;
      
      private var §&!K§:Vector.<§#v§>;
      
      private var §3r§:Vector.<Array>;
      
      private var §5!,§:Vector.<§#v§>;
      
      private var §#s§:Boolean = false;
      
      private var §,@§:Boolean = false;
      
      public function §1a§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            if(!_loc3_)
            {
               this.§!H§ = param1;
               if(!(_loc3_ && _loc2_))
               {
                  addr38:
                  this.§=M§ = this.§;W§ = 0;
                  if(!(_loc3_ && param1))
                  {
                     this.§&!K§ = new Vector.<§#v§>(0);
                     addr54:
                  }
                  while(true)
                  {
                     this.§3r§ = new Vector.<Array>(0);
                     addr128:
                     while(true)
                     {
                        this.§5!,§ = new Vector.<§#v§>(0);
                     }
                  }
                  addr147:
               }
               loop0:
               while(true)
               {
                  §§push(this.§!H§);
                  loop1:
                  while(true)
                  {
                     §§push(KeyboardEvent.KEY_DOWN);
                     addr96:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.§'t§);
                        addr99:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(_loc4_ || this)
                           {
                              continue loop1;
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr128);
                     }
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr38);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!H§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr92:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§'t§);
                  continue loop0;
               }
            }
         }
         §§goto(addr25);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§#v§ = null;
         var _loc5_:§#v§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§=M§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=M§ = §§pop();
            while(true)
            {
               this.§;W§ = 0;
               addr115:
               if(!(_loc10_ || _loc2_))
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc10_ || _loc2_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc10_ || param1)
                              {
                                 addr161:
                                 loop32:
                                 while(true)
                                 {
                                    if(this.§3r§.length <= 0)
                                    {
                                       if(!(_loc11_ && param1))
                                       {
                                          if(!_loc11_)
                                          {
                                             if(_loc10_)
                                             {
                                                if(!(_loc10_ || param1))
                                                {
                                                   addr635:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      this.§&!K§.splice(_loc2_,1);
                                                      addr650:
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr619:
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     addr586:
                                                                     addr596:
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        §§push(0);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(this.§&!K§[_loc2_].phase == §?!E§.§'s§)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 break loop22;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§;W§);
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push(§§pop() + 0.00001);
                                                                        }
                                                                        §§pop().§;W§ = §§pop();
                                                                        addr609:
                                                                        addr616:
                                                                        while(!(_loc10_ || this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr586);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop32;
                                                                           §§goto(addr609);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   addr635:
                                                }
                                                return;
                                             }
                                             §§goto(addr650);
                                          }
                                          §§goto(addr594);
                                       }
                                       §§goto(addr609);
                                    }
                                    else
                                    {
                                       §&P§.length = §%A§.length = 0;
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(!_loc11_)
                                          {
                                             var _loc8_:* = §§pop();
                                             if(!_loc11_)
                                             {
                                                var _loc9_:* = this.§&!K§;
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(_loc10_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§3r§.length > 0);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr391:
                                                                              §§pop();
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 addr412:
                                                                                 if(§&P§.indexOf(this.§3r§[this.§3r§.length - 1][0]) != -1)
                                                                                 {
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §%A§;
                                                                                                   addr467:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                      if(!(_loc11_ && _loc3_))
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      addr548:
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push((_loc4_ = this.§&c§(_loc3_)).target);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr536:
                                                                                                                        _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5a§,this.§&!K§,this.§#s§,this.§,@§));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  addr549:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§&!K§.length - 1);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           break loop3;
                                                                                                                        }
                                                                                                                        addr655:
                                                                                                                     }
                                                                                                                     §§goto(addr635);
                                                                                                                  }
                                                                                                                  addr550:
                                                                                                                  addr547:
                                                                                                               }
                                                                                                               §§goto(addr536);
                                                                                                            }
                                                                                                            addr522:
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr431:
                                                                                             }
                                                                                             §§goto(addr550);
                                                                                          }
                                                                                          addr428:
                                                                                       }
                                                                                       addr502:
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          addr510:
                                                                                          _loc9_ = §&P§;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                          §§goto(addr522);
                                                                                       }
                                                                                       §§goto(addr549);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc3_ = (_loc7_ = this.§3r§.pop())[0] as int;
                                                                                 §§push(Boolean(_loc4_ = this.§&c§(_loc3_)));
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc4_.phase == §?!E§.§4R§);
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   addr367:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      addr376:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr378:
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr379:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(_loc4_.target));
                                                                                                               if(!(_loc11_ && this))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                         addr378:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §%A§.push({
                                                                                                                        "touch":_loc4_,
                                                                                                                        "target":_loc4_.target
                                                                                                                     });
                                                                                                                     addr354:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  addr346:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr379);
                                                                                                               }
                                                                                                            }
                                                                                                            addr339:
                                                                                                         }
                                                                                                         loop9:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§#A§.apply(this,_loc7_);
                                                                                                            while(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               §&P§.push(_loc3_);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     break loop9;
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§goto(addr339);
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr376);
                                                                                 }
                                                                                 §§goto(addr367);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  §§goto(addr650);
                                                               }
                                                               §§goto(addr635);
                                                            }
                                                            addr486:
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§goto(addr502);
                                                               }
                                                               break loop3;
                                                            }
                                                            §§goto(addr623);
                                                         }
                                                         §§goto(addr549);
                                                      }
                                                      else
                                                      {
                                                         _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                         §§push(_loc5_.phase);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§?!E§.§^2§);
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr224:
                                                                           if(_loc5_.phase != §?!E§.§-!"§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc11_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc5_.§"4§(§?!E§.§^%§);
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                      if(_loc6_.touch.target != _loc6_.target)
                                                      {
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5a§,this.§&!K§,this.§#s§,this.§,@§));
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc11_ && this))
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr510);
                                                   }
                                                   §§goto(addr549);
                                                }
                                                §§goto(addr548);
                                             }
                                             §§goto(addr431);
                                          }
                                          §§goto(addr619);
                                       }
                                    }
                                    §§goto(addr596);
                                 }
                              }
                              §§goto(addr657);
                           }
                           else
                           {
                              §§push(this.§=M§);
                              if(!(_loc11_ && param1))
                              {
                                 §§push(§§pop() - this.§5!,§[_loc2_].timestamp);
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    addr77:
                                    if(§§pop() > §?!%§)
                                    {
                                       if(!(_loc11_ && param1))
                                       {
                                          this.§5!,§.splice(_loc2_,1);
                                          if(_loc10_)
                                          {
                                             addr35:
                                             §§push(_loc2_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() - 1);
                                                if(!_loc11_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc10_ || this)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr616);
                                                }
                                                §§goto(addr428);
                                             }
                                             §§goto(addr619);
                                          }
                                          §§goto(addr650);
                                       }
                                       §§goto(addr635);
                                    }
                                    §§goto(addr35);
                                 }
                                 §§goto(addr655);
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr593);
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr657);
                  }
               }
            }
         }
         while(this.§5!,§.length > 0)
         {
            if(!_loc11_)
            {
               _loc2_ = int(this.§5!,§.length - 1);
            }
            if(!(_loc10_ || _loc3_))
            {
               continue;
            }
            §§goto(addr115);
         }
         §§goto(addr161);
      }
      
      public function §4!I§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§3r§.unshift(arguments);
         }
         loop0:
         while(true)
         {
            §§push(this.§,@§);
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
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc7_ || param2)
                                    {
                                       this.§0!1§.§^!5§(param3,param4,this.§#s§);
                                       do
                                       {
                                          this.§3r§.unshift([1,param2,this.§0!1§.§+=§,this.§0!1§.§4!J§]);
                                       }
                                       while(_loc6_);
                                       
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr25);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§^F§);
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc6_ && param2)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc6_ && param2))
                                             {
                                                continue loop1;
                                             }
                                             addr126:
                                             while(true)
                                             {
                                                §§pop();
                                                §§push(param1 == 0);
                                                addr134:
                                                continue loop0;
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop5;
                                             }
                                             addr151:
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr25:
                                 return;
                              }
                           }
                           §§goto(addr126);
                        }
                        continue;
                        addr121:
                     }
                     §§goto(addr151);
                  }
               }
            }
         }
      }
      
      private function §#A§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§#v§;
         if((_loc6_ = this.§&c§(param1)) == null)
         {
            if(_loc8_ || this)
            {
               _loc6_ = new §#v§(param1,param3,param4,param2,null);
               if(_loc8_ || param1)
               {
                  this.§9k§(_loc6_);
                  addr57:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_ || param2)
                  {
                     _loc6_.§"4§(param2);
                     loop11:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§=M§);
                        if(_loc8_)
                        {
                           §§push(§§pop() + this.§;W§);
                        }
                        §§pop().§?!7§(§§pop());
                        addr185:
                        loop0:
                        while(true)
                        {
                           §§push(param2);
                           loop1:
                           while(true)
                           {
                              §§push(§?!E§.§4R§);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                _loc6_.§4!E§(this.§!H§.hitTest(_loc5_,true));
                                             }
                                             while(!(_loc7_ && param1))
                                             {
                                                while(true)
                                                {
                                                }
                                                if(_loc7_ && this)
                                                {
                                                   continue;
                                                }
                                                if(_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   this.§^I§(_loc6_);
                                                   addr69:
                                                   return;
                                                   addr120:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop1;
                                                   }
                                                   addr164:
                                                }
                                             }
                                             continue loop0;
                                          }
                                          addr73:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc7_ && param3)
                                             {
                                                break;
                                             }
                                             addr82:
                                             §§push(§?!E§.§^2§);
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr163:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   §§goto(addr82);
                                                }
                                                continue loop3;
                                                addr132:
                                             }
                                             if(_loc7_ && param1)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr69);
                                             §§goto(addr164);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr57);
            }
            §§goto(addr185);
         }
         §§goto(addr57);
      }
      
      private function §'t§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§#v§ = null;
         var _loc4_:§#v§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1.keyCode);
            if(_loc6_)
            {
               §§push(17);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(param1.keyCode);
                                 break;
                              }
                              if(_loc6_ || this)
                              {
                                 §§push(this.§,@§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          this.§,@§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§^F§);
                                             loop9:
                                             while(!(_loc5_ && param1))
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr132:
                                                            addr204:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(this.§,@§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr203:
                                                                                    while(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop13;
                                                                                    }
                                                                                    addr203:
                                                                                    addr174:
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        addr491:
                                                                        return;
                                                                        addr60:
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.keyCode);
                                                               if(_loc5_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§push(15);
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr471:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr484:
                                                                     this.§#s§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                  }
                                                               }
                                                               §§goto(addr491);
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(this.§0!1§);
                                                               while(true)
                                                               {
                                                                  §§pop().visible = this.§,@§;
                                                                  if(_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr426);
                                                      }
                                                      §§goto(addr484);
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr491);
                           }
                           addr470:
                           §§goto(addr471);
                           §§push(16);
                        }
                        §§goto(addr203);
                     }
                  }
               }
            }
            §§goto(addr470);
         }
         §§goto(addr204);
      }
      
      private function §^I§(param1:§#v§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§#v§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§#v§ = null;
         §§push(§@X§);
         if(_loc9_)
         {
            §§push(§§pop() * §@X§);
            if(!_loc8_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§5!,§)
            {
               if(_loc9_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc9_ || param1)
                     {
                        _loc5_ = §§pop();
                        addr93:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr95:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            if(!_loc8_)
            {
               if(!_loc2_)
               {
                  param1.§5!1§(1);
                  loop1:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc9_ || this)
                           {
                              continue loop1;
                           }
                           addr170:
                           while(true)
                           {
                              this.§5!,§.splice(this.§5!,§.indexOf(_loc2_),1);
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  param1.§5!1§(_loc2_.§=!i§ + 1);
                  §§goto(addr170);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr32);
      }
      
      private function §9k§(param1:§#v§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§&!K§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        this.§&!K§.push(param1);
                        addr56:
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc3_ || param1)
                              {
                                 addr69:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr69:
                              }
                              §§goto(addr69);
                           }
                        }
                        addr103:
                     }
                     loop2:
                     while(!(_loc3_ || _loc3_))
                     {
                        while(true)
                        {
                           this.§&!K§.splice(_loc2_,1);
                           §§goto(addr103);
                           continue loop2;
                        }
                     }
                     continue;
                  }
                  §§goto(addr56);
               }
               else if(this.§&!K§[_loc2_].id == param1.id)
               {
                  §§goto(addr98);
               }
               §§goto(addr59);
            }
            §§goto(addr69);
         }
      }
      
      private function §&c§(param1:int) : §#v§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#v§ = null;
         for each(_loc2_ in this.§&!K§)
         {
            if(!_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §^F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§0!1§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §^F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§^F§ != param1)
            {
               return;
            }
         }
      }
   }
}
