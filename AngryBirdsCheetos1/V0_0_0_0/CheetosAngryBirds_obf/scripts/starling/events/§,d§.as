package starling.events
{
   import §`a§.Stage;
   import flash.geom.Point;
   
   public class §,d§
   {
      
      private static const §'j§:Number = 0.3;
      
      private static const §3!G§:Number = 25;
      
      private static var §#!C§:Vector.<int>;
      
      private static var §6H§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'j§ = 0.3;
            while(true)
            {
               §3!G§ = 25;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §#!C§ = new Vector.<int>(0);
            do
            {
               §6H§ = new Vector.<Object>(0);
            }
            while(_loc1_);
            
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §-?§:Stage;
      
      private var §<y§:Number;
      
      private var §@!0§:Number;
      
      private var §`s§:§5!,§;
      
      private var §[!'§:Vector.<§"!D§>;
      
      private var §`L§:Vector.<Array>;
      
      private var §!w§:Vector.<§"!D§>;
      
      private var §'B§:Boolean = false;
      
      private var §[V§:Boolean = false;
      
      public function §,d§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(!_loc3_)
            {
               this.§-?§ = param1;
               if(_loc4_)
               {
                  this.§<y§ = this.§@!0§ = 0;
                  if(_loc4_)
                  {
                     this.§[!'§ = new Vector.<§"!D§>(0);
                  }
               }
               while(true)
               {
                  this.§`L§ = new Vector.<Array>(0);
                  addr113:
                  loop1:
                  while(true)
                  {
                     this.§!w§ = new Vector.<§"!D§>(0);
                     loop2:
                     while(true)
                     {
                        §§push(this.§-?§);
                        while(true)
                        {
                           §§push(KeyboardEvent.KEY_DOWN);
                           addr79:
                           addr93:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§>-§);
                              addr82:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           §§push(this.§-?§);
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§push(KeyboardEvent.KEY_UP);
                           if(_loc4_)
                           {
                              §§pop().addEventListener(§§pop(),this.§>-§);
                              if(!_loc3_)
                              {
                                 return;
                                 addr73:
                              }
                           }
                           else
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr82);
                        }
                     }
                  }
               }
            }
            §§goto(addr73);
         }
         §§goto(addr113);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§-?§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr97:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§>-§);
                  continue loop0;
               }
            }
            addr95:
         }
         while(true)
         {
            §§push(this.§-?§);
            if(!_loc1_)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§>-§);
                  while(true)
                  {
                     §§push(this.§`s§);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           addr69:
                        }
                        return;
                     }
                     break;
                  }
                  §§pop().dispose();
                  §§goto(addr69);
               }
            }
            else
            {
               §§goto(addr95);
            }
            §§goto(addr97);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§"!D§ = null;
         var _loc5_:§"!D§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc10_)
         {
            §§push(this);
            §§push(this.§<y§);
            if(!(_loc10_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§<y§ = §§pop();
            while(true)
            {
               this.§@!0§ = 0;
            }
            addr127:
         }
         loop1:
         while(this.§!w§.length > 0)
         {
            if(!(_loc10_ && _loc2_))
            {
               if(_loc10_)
               {
                  continue;
               }
               _loc2_ = int(this.§!w§.length - 1);
            }
            if(!_loc10_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc11_ || this)
                     {
                        §§push(0);
                        if(_loc11_ || _loc2_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc10_)
                              {
                                 break loop1;
                              }
                              loop9:
                              while(true)
                              {
                                 addr551:
                                 while(true)
                                 {
                                    if(this.§`L§.length <= 0)
                                    {
                                       addr556:
                                       if(_loc11_ || _loc2_)
                                       {
                                          addr563:
                                          if(!(_loc10_ && this))
                                          {
                                             if(_loc11_ || _loc2_)
                                             {
                                                §§goto(addr577);
                                             }
                                             break loop9;
                                          }
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§@!0§);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + 0.00001);
                                             }
                                             §§pop().§@!0§ = §§pop();
                                             §§goto(addr563);
                                          }
                                          addr591:
                                       }
                                       while(true)
                                       {
                                          if(_loc11_)
                                          {
                                             if(!(_loc11_ || _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc11_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr590:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§goto(addr591);
                                                         }
                                                         else
                                                         {
                                                            if(this.§[!'§[_loc2_].phase == §!q§.§#Z§)
                                                            {
                                                               break loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc11_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     break loop6;
                                                                  }
                                                                  addr652:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr653:
                                                                     while(true)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               break loop6;
                                                            }
                                                            addr609:
                                                         }
                                                      }
                                                   }
                                                   addr589:
                                                }
                                                break;
                                             }
                                             addr616:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr556);
                                       }
                                    }
                                    §#!C§.length = §6H§.length = 0;
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(0);
                                       if(!_loc10_)
                                       {
                                          break loop3;
                                       }
                                       addr424:
                                       var _loc8_:* = §§pop();
                                       if(!(_loc10_ && param1))
                                       {
                                          var _loc9_:* = §6H§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc9_,_loc8_));
                                             if(!_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                   if(_loc6_.touch.target != _loc6_.target)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§4F§,this.§[!'§,this.§'B§,this.§[V§));
                                                      }
                                                   }
                                                   continue;
                                                }
                                                if(!_loc10_)
                                                {
                                                   addr474:
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(0);
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               addr496:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §#!C§;
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc9_,_loc8_));
                                                                        addr539:
                                                                        while(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr541:
                                                                              while(_loc11_ || _loc3_)
                                                                              {
                                                                                 §§push(this.§[!'§.length - 1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr652);
                                                                                 }
                                                                              }
                                                                              break loop9;
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                     }
                                                                     addr538:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push((_loc4_ = this.§9Y§(_loc3_)).target);
                                                                     if(_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr527:
                                                                              _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§4F§,this.§[!'§,this.§'B§,this.§[V§));
                                                                           }
                                                                        }
                                                                        §§goto(addr538);
                                                                     }
                                                                     §§goto(addr527);
                                                                  }
                                                               }
                                                               addr496:
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                         §§goto(addr652);
                                                      }
                                                      §§goto(addr646);
                                                   }
                                                   §§goto(addr541);
                                                }
                                                §§goto(addr540);
                                             }
                                             §§goto(addr539);
                                          }
                                       }
                                       §§goto(addr496);
                                    }
                                    addr254:
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§`L§.length > 0);
                                       if(_loc11_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(§#!C§.indexOf(this.§`L§[this.§`L§.length - 1][0]) == -1);
                                                }
                                                else
                                                {
                                                   §§goto(addr577);
                                                }
                                             }
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       _loc3_ = (_loc7_ = this.§`L§.pop())[0] as int;
                                       §§push(Boolean(_loc4_ = this.§9Y§(_loc3_)));
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(§§pop());
                                          if(_loc11_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§pop();
                                                   if(_loc11_)
                                                   {
                                                      §§push(_loc4_.phase == §!q§.§ !G§);
                                                      if(_loc11_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr362:
                                                            if(§§pop())
                                                            {
                                                               addr364:
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr365:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(_loc4_.target));
                                                                     if(!_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                               }
                                                               addr364:
                                                            }
                                                            while(true)
                                                            {
                                                               addr334:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(!_loc11_)
                                                                     {
                                                                        §§goto(addr365);
                                                                     }
                                                                     §6H§.push({
                                                                        "touch":_loc4_,
                                                                        "target":_loc4_.target
                                                                     });
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr335:
                                                                     addr345:
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     this.§%!F§.apply(this,_loc7_);
                                                                     while(_loc11_)
                                                                     {
                                                                        §#!C§.push(_loc3_);
                                                                        if(_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr345);
                                                }
                                                §§goto(addr334);
                                             }
                                          }
                                          §§goto(addr362);
                                       }
                                       §§goto(addr364);
                                    }
                                    continue loop9;
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          addr646:
                                          while(true)
                                          {
                                             §§goto(addr609);
                                          }
                                          addr646:
                                       }
                                       §§goto(addr653);
                                    }
                                    addr577:
                                    return;
                                 }
                              }
                              while(true)
                              {
                                 this.§[!'§.splice(_loc2_,1);
                                 §§goto(addr634);
                              }
                           }
                           else
                           {
                              §§push(this.§<y§);
                              if(!(_loc10_ && this))
                              {
                                 §§push(§§pop() - this.§!w§[_loc2_].timestamp);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() > §'j§)
                                    {
                                       if(_loc11_)
                                       {
                                          this.§!w§.splice(_loc2_,1);
                                          if(!_loc10_)
                                          {
                                             addr36:
                                             §§push(_loc2_);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc11_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc10_ && param1)
                                                   {
                                                      break loop1;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr616);
                                             }
                                             §§goto(addr589);
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr646);
                                    }
                                    §§goto(addr36);
                                 }
                              }
                           }
                           §§goto(addr651);
                        }
                        §§goto(addr590);
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = §§pop();
                     if(_loc11_)
                     {
                        _loc9_ = this.§[!'§;
                        while(true)
                        {
                           §§push(§§hasnext(_loc9_,_loc8_));
                           if(_loc11_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc11_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc11_ || this)
                                       {
                                          §§goto(addr254);
                                       }
                                       §§goto(addr653);
                                    }
                                    §§goto(addr496);
                                 }
                                 §§goto(addr474);
                              }
                              else
                              {
                                 _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                 §§push(_loc5_.phase);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§!q§.§4c§);
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                §§pop();
                                                if(!_loc10_)
                                                {
                                                   addr225:
                                                   if(_loc5_.phase != §!q§.§%X§)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc5_.§9m§(§!q§.§<N§);
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr225);
                              }
                           }
                           break;
                        }
                        §§goto(addr539);
                     }
                     §§goto(addr496);
                  }
               }
            }
            else
            {
               §§goto(addr127);
            }
         }
         §§goto(addr551);
      }
      
      public function §[!G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§`L§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§[V§);
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
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc6_ || this))
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§`s§.§`-§(param3,param4,this.§'B§);
                                          do
                                          {
                                             this.§`L§.unshift([1,param2,this.§`s§.§3u§,this.§`s§.§]o§]);
                                          }
                                          while(_loc7_ && param2);
                                          
                                          if(_loc7_ && this)
                                          {
                                             continue;
                                          }
                                          if(!_loc6_)
                                          {
                                             addr126:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(param1 == 0);
                                                if(_loc6_ || param2)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr96:
                                                   addr133:
                                                   while(!(_loc7_ && param3))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop0;
                                                   }
                                                }
                                                break;
                                             }
                                             while(_loc6_)
                                             {
                                                continue loop1;
                                                §§goto(addr126);
                                             }
                                             addr126:
                                             continue loop2;
                                             addr116:
                                          }
                                          if(_loc7_ && param3)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr85:
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr116);
                           }
                           continue;
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §%!F§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"!D§;
         if((_loc6_ = this.§9Y§(param1)) == null)
         {
            if(!_loc7_)
            {
               _loc6_ = new §"!D§(param1,param3,param4,param2,null);
               if(!_loc7_)
               {
                  this.§7r§(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_ || param1)
                  {
                     _loc6_.§9m§(param2);
                     loop13:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§<y§);
                        if(_loc8_)
                        {
                           §§push(§§pop() + this.§@!0§);
                        }
                        §§pop().§9]§(§§pop());
                        addr163:
                        while(!(_loc8_ || param3))
                        {
                           continue loop13;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§push(§!q§.§ !G§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          _loc6_.§%!;§(this.§-?§.hitTest(_loc5_,true));
                                          loop12:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(_loc7_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§!q§.§4c§);
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§<!3§(_loc6_);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!(_loc8_ || param3))
                                                               {
                                                                  §§goto(addr163);
                                                               }
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr127:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr151:
                                                      addr151:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                                addr63:
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                continue loop3;
                                                §§goto(addr151);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr63);
                                 }
                              }
                           }
                           §§goto(addr151);
                        }
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr103);
         }
         §§goto(addr47);
      }
      
      private function §>-§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§"!D§ = null;
         var _loc4_:§"!D§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               addr215:
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
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§[V§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr201:
                                       while(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc6_)
                                          {
                                             _loc2_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                this.§[V§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§4m§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(§§pop());
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(this.§`s§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().visible = this.§[V§;
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§`s§);
                                                                                 addr139:
                                                                                 continue loop7;
                                                                                 if(!(_loc6_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§pop().§8y§(this.§-?§.stageWidth / 2,this.§-?§.stageHeight / 2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop12;
                                                                                       addr154:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop18;
                                                                                          §§goto(addr153);
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc3_ = this.§9Y§(0);
                                                                                    _loc4_ = this.§9Y§(1);
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr494:
                                                                                          this.§`s§.§`-§(_loc3_.globalX,_loc3_.globalY);
                                                                                       }
                                                                                       addr488:
                                                                                       §§push(_loc2_ && _loc4_);
                                                                                       §§push(_loc2_ && _loc4_);
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr473:
                                                                                             §§pop();
                                                                                             addr474:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   addr434:
                                                                                                   §§push(_loc4_.phase == §!q§.§#Z§);
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr443:
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr445:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr417:
                                                                                                            §§push(this.§[V§);
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr420:
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr423:
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr426:
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(_loc3_));
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                 {
                                                                                                                                    addr370:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr372:
                                                                                                                                       §§push(_loc3_.phase == §!q§.§4c§);
                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   addr400:
                                                                                                                                                   §§pop();
                                                                                                                                                   addr401:
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr275:
                                                                                                                                                      §§push(_loc3_.phase);
                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§!q§.§%X§);
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr315:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§`L§.unshift([1,§!q§.§4c§,this.§`s§.§3u§,this.§`s§.§]o§]);
                                                                                                                                                                                    addr339:
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr474);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr502:
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr447:
                                                                                                                                                                                       this.§`L§.unshift([1,§!q§.§#Z§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                                                                                                       §§goto(addr502);
                                                                                                                                                                                       addr458:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr372);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr401);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr339);
                                                                                                                                                                           }
                                                                                                                                                                           this.§`L§.unshift([1,§!q§.§ !G§,this.§`s§.§3u§,this.§`s§.§]o§]);
                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr275);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr502);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr494);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr339);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr488);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr372);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr400);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr434);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr372);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr434);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr372);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr426);
                                                                                                                                                }
                                                                                                                                                §§goto(addr315);
                                                                                                                                             }
                                                                                                                                             §§goto(addr420);
                                                                                                                                          }
                                                                                                                                          §§goto(addr443);
                                                                                                                                       }
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                    §§goto(addr502);
                                                                                                                                 }
                                                                                                                                 §§goto(addr473);
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                           §§goto(addr372);
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr434);
                                                                                                         }
                                                                                                         §§goto(addr447);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr488);
                                                                                                   addr483:
                                                                                                }
                                                                                                §§goto(addr494);
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          §§goto(addr445);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.keyCode);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr505:
                                                                              if(§§pop() == 16)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                              }
                                                                              addr219:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr154);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr502);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  continue loop12;
                                                                  addr110:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               addr153:
                                                               §§goto(addr154);
                                                            }
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                   }
                                                   addr165:
                                                }
                                                break;
                                             }
                                             this.§'B§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          }
                                          continue loop2;
                                          addr526:
                                          return;
                                       }
                                       addr218:
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr219);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(param1.keyCode);
                              }
                              §§goto(addr505);
                           }
                           addr196:
                        }
                        §§goto(addr218);
                     }
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      private function §<!3§(param1:§"!D§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§"!D§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§"!D§ = null;
         §§push(§3!G§);
         if(!_loc9_)
         {
            §§push(§§pop() * §3!G§);
            if(_loc8_ || this)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§!w§)
            {
               if(_loc8_ || param1)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!(_loc9_ && _loc2_))
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
            if(!(_loc9_ && this))
            {
               if(_loc2_)
               {
                  if(_loc8_ || this)
                  {
                     param1.§;!M§(_loc2_.§+!%§ + 1);
                  }
                  loop1:
                  while(true)
                  {
                     this.§!w§.splice(this.§!w§.indexOf(_loc2_),1);
                     addr153:
                     loop3:
                     while(true)
                     {
                        addr119:
                        while(true)
                        {
                           this.§!w§.push(param1.clone());
                           if(_loc9_)
                           {
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              addr134:
                           }
                           return;
                        }
                     }
                  }
               }
               else
               {
                  param1.§;!M§(1);
               }
               §§goto(addr134);
            }
            §§goto(addr153);
         }
         §§goto(addr36);
      }
      
      private function §7r§(param1:§"!D§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§[!'§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_ || this)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc3_ && param1)
                     {
                        break;
                     }
                     if(_loc4_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           this.§[!'§.push(param1);
                           break;
                        }
                        addr109:
                        this.§[!'§.splice(_loc2_,1);
                        loop1:
                        while(true)
                        {
                           addr77:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr79:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr80:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr114:
                     }
                     while(_loc3_ && this)
                     {
                        §§goto(addr114);
                     }
                     continue;
                  }
                  if(this.§[!'§[_loc2_].id == param1.id)
                  {
                     §§goto(addr109);
                  }
                  §§goto(addr77);
               }
               §§goto(addr79);
            }
            §§goto(addr80);
         }
      }
      
      private function §9Y§(param1:int) : §"!D§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§"!D§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§[!'§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.id == param1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §4m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`s§ == null);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §4m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§4m§ != param1)
            {
               return;
            }
         }
      }
   }
}
