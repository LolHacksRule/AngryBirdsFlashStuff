package starling.events
{
   import §'!6§.Stage;
   import flash.geom.Point;
   
   public class §#%§
   {
      
      private static const §7"§:Number = 0.3;
      
      private static const §<v§:Number = 25;
      
      private static var §-O§:Vector.<int>;
      
      private static var §7!v§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §#%§))
         {
            §7"§ = 0.3;
            while(true)
            {
               §<v§ = 25;
               while(!_loc2_)
               {
                  §-O§ = new Vector.<int>(0);
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        §7!v§ = new Vector.<Object>(0);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private var §,">§:Stage;
      
      private var §[-§:Number;
      
      private var §;7§:Number;
      
      private var §-u§:§5w§;
      
      private var §3t§:Vector.<§;!G§>;
      
      private var §^!I§:Vector.<Array>;
      
      private var §&"4§:Vector.<§;!G§>;
      
      private var §,!=§:Boolean = false;
      
      private var §4>§:Boolean = false;
      
      public function §#%§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super();
            if(!_loc4_)
            {
               this.§,">§ = param1;
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr37);
               }
               §§goto(addr53);
            }
            §§goto(addr151);
         }
         addr37:
         this.§[-§ = this.§;7§ = 0;
         if(!(_loc4_ && _loc3_))
         {
            this.§3t§ = new Vector.<§;!G§>(0);
            while(true)
            {
               this.§^!I§ = new Vector.<Array>(0);
               loop1:
               while(true)
               {
                  this.§&"4§ = new Vector.<§;!G§>(0);
                  loop2:
                  while(true)
                  {
                     §§push(this.§,">§);
                     while(true)
                     {
                        §§push(KeyboardEvent.KEY_DOWN);
                        addr107:
                        addr122:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§ !y§);
                           continue loop2;
                        }
                        §§push(this.§,">§);
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(KeyboardEvent.KEY_UP);
                        if(_loc3_)
                        {
                           §§pop().addEventListener(§§pop(),this.§ !y§);
                           if(!(_loc4_ && param1))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        §§goto(addr107);
                     }
                  }
               }
            }
            addr53:
            addr151:
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§,">§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr106:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§ !y§);
                  continue loop0;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§;!G§ = null;
         var _loc5_:§;!G§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc10_ && param1))
         {
            §§push(this);
            §§push(this.§[-§);
            if(!(_loc10_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[-§ = §§pop();
            while(true)
            {
               this.§;7§ = 0;
            }
            addr127:
         }
         loop1:
         for(; this.§&"4§.length > 0; if(!(_loc11_ || param1))
         {
            continue;
         },loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(_loc2_);
               if(_loc11_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     if(§§pop() < §§pop())
                     {
                        addr554:
                        if(!(_loc10_ && param1))
                        {
                           break loop1;
                        }
                        while(true)
                        {
                           §§push(this.§3t§.length - 1);
                           addr641:
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        addr554:
                     }
                     else
                     {
                        §§push(this.§[-§);
                        if(_loc11_)
                        {
                           §§push(§§pop() - this.§&"4§[_loc2_].timestamp);
                           if(!_loc10_)
                           {
                              addr68:
                              if(§§pop() > §7"§)
                              {
                                 addr416:
                                 if(_loc11_)
                                 {
                                    this.§&"4§.splice(_loc2_,1);
                                    if(_loc11_)
                                    {
                                       addr41:
                                       §§push(_loc2_);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc11_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                if(false)
                                                {
                                                   continue loop2;
                                                }
                                                continue;
                                             }
                                             §§goto(addr554);
                                          }
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr643:
                                          loop24:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc10_)
                                                {
                                                   continue loop8;
                                                }
                                                addr616:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop9;
                                                }
                                             }
                                             addr600:
                                             loop39:
                                             while(true)
                                             {
                                                addr556:
                                                while(true)
                                                {
                                                   if(this.§^!I§.length <= 0)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         continue loop39;
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop24;
                                                      }
                                                      addr636:
                                                      while(true)
                                                      {
                                                         addr601:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc11_)
                                                            {
                                                               addr615:
                                                               while(true)
                                                               {
                                                               }
                                                               addr615:
                                                            }
                                                            §§goto(addr616);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §-O§.length = §7!v§.length = 0;
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(0);
                                                         if(_loc11_)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§goto(addr615);
                                                      }
                                                   }
                                                   §§goto(addr617);
                                                   continue loop39;
                                                }
                                                §§goto(addr567);
                                             }
                                          }
                                       }
                                       addr642:
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc11_ || _loc3_)
                                       {
                                          var _loc8_:* = §§pop();
                                          if(!(_loc10_ && this))
                                          {
                                             addr496:
                                             while(true)
                                             {
                                                var _loc9_:* = §-O§;
                                                if(!(_loc10_ && param1))
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      addr544:
                                                      while(§§pop())
                                                      {
                                                         _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                         continue loop10;
                                                      }
                                                      addr546:
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§goto(addr554);
                                                         }
                                                         §§goto(addr567);
                                                      }
                                                   }
                                                   addr543:
                                                }
                                                while(true)
                                                {
                                                   §§push((_loc4_ = this.§`"=§(_loc3_)).target);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            addr532:
                                                            _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!M§,this.§3t§,this.§,!=§,this.§4>§));
                                                         }
                                                      }
                                                      §§goto(addr543);
                                                   }
                                                   §§goto(addr532);
                                                }
                                             }
                                             addr496:
                                          }
                                          §§goto(addr546);
                                       }
                                       §§goto(addr642);
                                    }
                                    addr480:
                                 }
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!(_loc10_ && this))
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc11_ || this)
                                       {
                                          while(true)
                                          {
                                             _loc9_ = §7!v§;
                                             loop6:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                if(!_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                         if(_loc6_.touch.target != _loc6_.target)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!M§,this.§3t§,this.§,!=§,this.§4>§));
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         addr469:
                                                         if(!(_loc10_ && this))
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr600);
                                                         }
                                                         §§goto(addr496);
                                                      }
                                                      §§goto(addr546);
                                                   }
                                                   addr466:
                                                }
                                                break;
                                             }
                                             §§goto(addr544);
                                          }
                                          addr432:
                                       }
                                       §§goto(addr496);
                                    }
                                    §§goto(addr615);
                                 }
                                 addr416:
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr641);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr582);
               }
               break;
            }
            while(true)
            {
               _loc8_ = §§pop();
               if(!(_loc10_ && _loc2_))
               {
                  _loc9_ = this.§3t§;
                  while(true)
                  {
                     §§push(§§hasnext(_loc9_,_loc8_));
                     if(!(_loc10_ && _loc2_))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§goto(addr246);
                              }
                              §§goto(addr432);
                           }
                           §§goto(addr469);
                        }
                        else
                        {
                           _loc5_ = §§nextvalue(_loc8_,_loc9_);
                           §§push(_loc5_.phase);
                           if(_loc11_)
                           {
                              §§push(§'! §.§?""§);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          §§pop();
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr215:
                                             if(_loc5_.phase != §'! §.§8!Y§)
                                             {
                                                continue;
                                             }
                                             if(!_loc11_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc5_.§`!K§(§'! §.§#!i§);
                                          continue;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr215);
                        }
                     }
                     break;
                  }
                  §§goto(addr466);
               }
               addr246:
               if(!_loc10_)
               {
                  loop13:
                  while(true)
                  {
                     §§push(this.§^!I§.length > 0);
                     if(_loc11_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc10_ && _loc2_))
                           {
                              §§pop();
                              if(!(_loc10_ && param1))
                              {
                                 addr413:
                                 if(§-O§.indexOf(this.§^!I§[this.§^!I§.length - 1][0]) != -1)
                                 {
                                    break;
                                 }
                                 _loc3_ = (_loc7_ = this.§^!I§.pop())[0] as int;
                                 §§push(Boolean(_loc4_ = this.§`"=§(_loc3_)));
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc11_)
                                          {
                                             §§pop();
                                             if(_loc11_ || _loc2_)
                                             {
                                                §§push(_loc4_.phase == §'! §.§5"G§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr372:
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr373:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §7!v§.push({
                                                                        "touch":_loc4_,
                                                                        "target":_loc4_.target
                                                                     });
                                                                     addr364:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr364:
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               while(true)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     this.§5!p§.apply(this,_loc7_);
                                                                     while(_loc11_ || _loc2_)
                                                                     {
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           §-O§.push(_loc3_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc4_.target));
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           addr374:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            addr352:
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr374);
                                       }
                                       §§goto(addr372);
                                    }
                                    §§goto(addr373);
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr416);
                           }
                        }
                     }
                     §§goto(addr413);
                  }
                  if(!_loc10_)
                  {
                     §§goto(addr416);
                  }
                  §§goto(addr643);
               }
               addr567:
               return;
            }
         })
         {
            if(_loc10_ && this)
            {
               continue;
            }
            if(_loc11_)
            {
               _loc2_ = int(this.§&"4§.length - 1);
               continue;
            }
            §§goto(addr127);
         }
         §§goto(addr556);
      }
      
      public function §0"%§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§^!I§.unshift(arguments);
         }
         loop0:
         while(true)
         {
            §§push(this.§4>§);
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(this.§`!m§);
                              if(_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!(_loc7_ && param3))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(!_loc7_)
                                             {
                                                §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(param1 == 0);
                                                   if(_loc7_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop7;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         this.§-u§.§+v§(param3,param4,this.§,!=§);
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         this.§^!I§.unshift([1,param2,this.§-u§.§+9§,this.§-u§.§<!Q§]);
                                                         if(_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                return;
                                             }
                                             continue loop4;
                                             addr120:
                                          }
                                          §§goto(addr52);
                                       }
                                       continue loop3;
                                       addr110:
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr120);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr110);
                  }
               }
            }
         }
      }
      
      private function §5!p§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;!G§;
         if((_loc6_ = this.§`"=§(param1)) == null)
         {
            if(!(_loc8_ && param2))
            {
               _loc6_ = new §;!G§(param1,param3,param4,param2,null);
               if(!_loc8_)
               {
                  this.§@"O§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(_loc7_)
                  {
                     _loc6_.§`!K§(param2);
                     loop11:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§[-§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + this.§;7§);
                        }
                        §§pop().§ !#§(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              §§push(§'! §.§5"G§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          addr178:
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr108:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§'! §.§?""§);
                                                while(true)
                                                {
                                                   if(_loc8_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                       addr177:
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc7_ || this)
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr178);
                                          }
                                          else
                                          {
                                             addr167:
                                             while(true)
                                             {
                                                break loop6;
                                             }
                                             addr167:
                                          }
                                       }
                                       break;
                                       §§goto(addr119);
                                    }
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!_loc8_)
                                       {
                                          §§push(§'! §.§?""§);
                                          if(!(_loc8_ && param1))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   this.§-!V§(_loc6_);
                                                }
                                                if(_loc7_ || this)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr105:
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr167);
                                             }
                                             break;
                                          }
                                          §§goto(addr112);
                                          §§goto(addr167);
                                       }
                                       §§goto(addr108);
                                    }
                                    return;
                                 }
                                 §§goto(addr177);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr51);
            }
            §§goto(addr150);
         }
         §§goto(addr51);
      }
      
      private function § !y§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§;!G§ = null;
         var _loc4_:§;!G§ = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(15);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param1.keyCode);
                                                   break loop4;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§4>§);
                                                }
                                             }
                                             addr182:
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop6:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr188:
                                                while(true)
                                                {
                                                   this.§4>§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(this.§`!m§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
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
                                                               while(!_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(this.§4>§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              addr81:
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc5_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(this.§-u§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().visible = this.§4>§;
                                                                                       if(_loc6_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr184);
                                                                                    }
                                                                                    §§goto(addr500);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr486);
                                                                           }
                                                                           this.§,!=§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                           §§goto(addr500);
                                                                        }
                                                                        §§goto(addr81);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr84);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr493);
                                                }
                                             }
                                          }
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr493);
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr500:
                                    return;
                                 }
                                 break;
                              }
                              §§goto(addr490);
                           }
                        }
                        §§goto(addr182);
                     }
                  }
               }
               §§goto(addr490);
            }
         }
         §§goto(addr188);
      }
      
      private function §-!V§(param1:§;!G§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§;!G§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§;!G§ = null;
         §§push(§<v§);
         if(!_loc9_)
         {
            §§push(§§pop() * §<v§);
            if(_loc8_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§&"4§)
            {
               if(!(_loc9_ && this))
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_ || this)
                     {
                        _loc5_ = §§pop();
                        addr92:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr94:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr92);
               }
               §§goto(addr94);
            }
            if(_loc8_ || this)
            {
               if(_loc2_)
               {
                  if(_loc8_)
                  {
                     param1.§8"Y§(_loc2_.§]!<§ + 1);
                  }
                  do
                  {
                     this.§&"4§.splice(this.§&"4§.indexOf(_loc2_),1);
                     do
                     {
                        loop3:
                        while(true)
                        {
                           this.§&"4§.push(param1.clone());
                           if(_loc8_ || _loc2_)
                           {
                              break;
                           }
                           addr153:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     while(_loc9_ && _loc3_);
                     
                  }
                  while(!_loc8_);
                  
                  return;
               }
               param1.§8"Y§(1);
            }
            §§goto(addr153);
         }
         §§goto(addr31);
      }
      
      private function §@"O§(param1:§;!G§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§3t§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§3t§.push(param1);
                        addr61:
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.§3t§.splice(_loc2_,1);
                           }
                        }
                        continue;
                        addr90:
                     }
                     while(true)
                     {
                        addr79:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || param1)
                           {
                              addr89:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr90);
                              }
                              addr89:
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr61);
               }
               else if(this.§3t§[_loc2_].id == param1.id)
               {
                  §§goto(addr103);
               }
               §§goto(addr79);
            }
            §§goto(addr89);
         }
      }
      
      private function §`"=§(param1:int) : §;!G§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;!G§ = null;
         for each(_loc2_ in this.§3t§)
         {
            if(_loc5_)
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
      
      public function get §`!m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-u§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §`!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§`!m§ != param1)
            {
               return;
            }
         }
      }
   }
}
