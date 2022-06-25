package starling.events
{
   import §'!9§.Stage;
   import flash.geom.Point;
   
   public class §&!h§
   {
      
      private static const §2!]§:Number = 0.3;
      
      private static const §3K§:Number = 25;
      
      private static var §#!G§:Vector.<int>;
      
      private static var §use §:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §&!h§))
         {
            §2!]§ = 0.3;
            while(true)
            {
               §3K§ = 25;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §#!G§ = new Vector.<int>(0);
                     do
                     {
                        §use § = new Vector.<Object>(0);
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr89);
      }
      
      private var §;p§:Stage;
      
      private var §5Y§:Number;
      
      private var §>-§:Number;
      
      private var §7!q§:§#a§;
      
      private var § !R§:Vector.<§`i§>;
      
      private var §4S§:Vector.<Array>;
      
      private var §7!0§:Vector.<§`i§>;
      
      private var §=!V§:Boolean = false;
      
      private var §+E§:Boolean = false;
      
      public function §&!h§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               this.§;p§ = param1;
               if(!(_loc4_ && this))
               {
                  this.§5Y§ = this.§>-§ = 0;
                  if(_loc3_)
                  {
                     this.§ !R§ = new Vector.<§`i§>(0);
                  }
                  while(true)
                  {
                     this.§4S§ = new Vector.<Array>(0);
                     loop1:
                     for(; !(_loc4_ && param1); while(!(_loc3_ || _loc3_))
                     {
                        continue loop1;
                     },while(true)
                     {
                        §§push(this.§;p§);
                        if(_loc3_ || this)
                        {
                           §§push(KeyboardEvent.KEY_UP);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(§§pop(),this.§0!4§);
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr103);
                     },addr108:,return)
                     {
                        while(true)
                        {
                           this.§7!0§ = new Vector.<§`i§>(0);
                           addr135:
                           while(true)
                           {
                              §§push(this.§;p§);
                              addr103:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr105:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§0!4§);
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr115);
         }
         §§goto(addr152);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§;p§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr101:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§0!4§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§7!q§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  break;
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§push(this.§7!q§);
            }
            §§pop().dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§`i§ = null;
         var _loc5_:§`i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc10_)
         {
            §§push(this);
            §§push(this.§5Y§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§5Y§ = §§pop();
            while(true)
            {
               this.§>-§ = 0;
               addr115:
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc11_ && param1))
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc11_)
                              {
                                 addr151:
                                 loop24:
                                 while(true)
                                 {
                                    if(this.§4S§.length <= 0)
                                    {
                                       if(_loc10_)
                                       {
                                          if(!(_loc11_ && param1))
                                          {
                                             §§goto(addr599);
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc10_ || _loc2_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr614:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(this.§ !R§[_loc2_].phase == §;@§.§>!q§)
                                                               {
                                                                  §§goto(addr680);
                                                               }
                                                               break loop16;
                                                            }
                                                            if(_loc10_ || this)
                                                            {
                                                               if(_loc11_ && _loc2_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§>-§);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        §§push(§§pop() + 0.00001);
                                                                     }
                                                                     §§pop().§>-§ = §§pop();
                                                                     addr644:
                                                                     addr260:
                                                                     while(!(_loc11_ && param1))
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     if(_loc11_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§4S§.length > 0);
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    §§pop();
                                                                                    addr514:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr432:
                                                                                       if(§#!G§.indexOf(this.§4S§[this.§4S§.length - 1][0]) != -1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc3_ = (_loc7_ = this.§4S§.pop())[0] as int;
                                                                                       §§push(Boolean(_loc4_ = this.§;s§(_loc3_)));
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc4_.phase == §;@§.§ ]§);
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr392:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr393:
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr394:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(_loc4_.target));
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr393:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §use §.push({
                                                                                                                              "touch":_loc4_,
                                                                                                                              "target":_loc4_.target
                                                                                                                           });
                                                                                                                           addr381:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr330:
                                                                                                                           if(!(_loc11_ && this))
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§`U§.apply(this,_loc7_);
                                                                                                                                    while(!(_loc11_ && param1))
                                                                                                                                    {
                                                                                                                                       §#!G§.push(_loc3_);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!(_loc11_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr330);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr381);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr394);
                                                                                                                                 }
                                                                                                                                 addr349:
                                                                                                                              }
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr349);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr391:
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       break loop15;
                                                                                    }
                                                                                    addr514:
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr432);
                                                                        }
                                                                        if(_loc11_ && _loc2_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr448:
                                                                              var _loc8_:* = §§pop();
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    var _loc9_:* = §use §;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc9_,_loc8_));
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                             if(_loc6_.touch.target != _loc6_.target)
                                                                                             {
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr580:
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                addr511:
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr680:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§ !R§.splice(_loc2_,1);
                                                                                                      addr685:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                   }
                                                                                                   addr680:
                                                                                                }
                                                                                             }
                                                                                             while(_loc10_)
                                                                                             {
                                                                                                §§push(this.§ !R§.length - 1);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   break loop15;
                                                                                                }
                                                                                             }
                                                                                             addr599:
                                                                                             return;
                                                                                             addr580:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr580);
                                                                                          }
                                                                                          addr579:
                                                                                       }
                                                                                       addr578:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          §§goto(addr579);
                                                                                       }
                                                                                       addr547:
                                                                                       _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push((_loc4_ = this.§;s§(_loc3_)).target);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   addr566:
                                                                                                   _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr578);
                                                                                             }
                                                                                             addr577:
                                                                                          }
                                                                                          §§goto(addr566);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr456:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §#!G§;
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr577);
                                                                                 }
                                                                                 §§goto(addr547);
                                                                                 §§goto(addr448);
                                                                              }
                                                                              addr530:
                                                                           }
                                                                           addr666:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              addr667:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr680);
                                                               }
                                                               §§goto(addr685);
                                                            }
                                                            §§goto(addr644);
                                                            §§goto(addr680);
                                                         }
                                                         addr164:
                                                         §§push(0);
                                                         if(_loc11_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            _loc9_ = this.§ !R§;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           §§goto(addr260);
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr579);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                     §§push(_loc5_.phase);
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        §§push(§;@§.§`O§);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr223:
                                                                                    §§push(_loc5_.phase == §;@§.§ 8§);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 _loc5_.§=I§(§;@§.§]M§);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr578);
                                                         }
                                                         §§goto(addr456);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break loop15;
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                }
                                                §§goto(addr667);
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop14;
                                             }
                                          }
                                       }
                                       §§goto(addr644);
                                    }
                                    else
                                    {
                                       §#!G§.length = §use §.length = 0;
                                       if(_loc10_)
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr440);
                                    }
                                 }
                              }
                              §§goto(addr268);
                           }
                           else
                           {
                              §§push(this.§5Y§);
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§push(§§pop() - this.§7!0§[_loc2_].timestamp);
                                 if(_loc10_)
                                 {
                                    addr84:
                                    if(§§pop() > §2!]§)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          this.§7!0§.splice(_loc2_,1);
                                          if(!_loc11_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             §§goto(addr667);
                                             addr35:
                                          }
                                          break;
                                       }
                                       §§goto(addr668);
                                    }
                                    §§goto(addr35);
                                 }
                                 §§goto(addr690);
                              }
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr614);
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc11_ && _loc2_))
                     {
                        §§goto(addr530);
                     }
                     §§goto(addr580);
                     §§goto(addr514);
                  }
               }
            }
         }
         for(; this.§7!0§.length > 0; if(!(_loc10_ || _loc2_))
         {
            continue;
         },_loc2_ = int(this.§7!0§.length - 1),§§goto(addr115))
         {
            if(!_loc11_)
            {
               continue;
            }
            §§goto(addr115);
         }
         §§goto(addr151);
      }
      
      public function §43§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§4S§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§+E§);
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
                              if(_loc7_ && param1)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1 == 0);
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop8;
                                                }
                                                if(_loc6_ || param3)
                                                {
                                                   while(true)
                                                   {
                                                      this.§7!q§.§?>§(param3,param4,this.§=!V§);
                                                   }
                                                   addr97:
                                                }
                                                do
                                                {
                                                   this.§4S§.unshift([1,param2,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                                                }
                                                while(!(_loc6_ || param2));
                                                
                                                if(_loc7_ && param2)
                                                {
                                                   continue loop8;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                addr161:
                                                while(true)
                                                {
                                                   §§push(this.§7J§);
                                                }
                                             }
                                             addr88:
                                          }
                                          while(!_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc7_ && param1)
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc7_ && param2))
                                             {
                                                continue loop1;
                                             }
                                             addr160:
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr161);
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    addr24:
                                    return;
                                 }
                              }
                              §§goto(addr88);
                           }
                           continue;
                           addr142:
                        }
                        §§goto(addr160);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private function §`U§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§`i§;
         if((_loc6_ = this.§;s§(param1)) == null)
         {
            if(_loc7_ || param1)
            {
               _loc6_ = new §`i§(param1,param3,param4,param2,null);
               if(_loc7_ || param3)
               {
                  this.§!<§(_loc6_);
                  addr56:
                  _loc6_.setPosition(param3,param4);
                  if(!(_loc8_ && this))
                  {
                     _loc6_.§=I§(param2);
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§5Y§);
                        if(!(_loc8_ && param3))
                        {
                           §§push(§§pop() + this.§>-§);
                        }
                        §§pop().§3!c§(§§pop());
                        loop1:
                        while(!(_loc8_ && this))
                        {
                           §§push(param2);
                           loop2:
                           while(true)
                           {
                              §§push(§;@§.§ ]§);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          addr159:
                                          while(_loc7_)
                                          {
                                             §§push(param2);
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§;@§.§`O§);
                                                while(true)
                                                {
                                                   if(_loc8_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                             continue loop10;
                                          }
                                          continue loop1;
                                       }
                                       addr148:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                _loc6_.§`"§(this.§;p§.hitTest(_loc5_,true));
                                             }
                                             addr119:
                                          }
                                          loop5:
                                          while(_loc7_ || param3)
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc7_)
                                                {
                                                   §§push(§;@§.§`O§);
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            this.§%`§(_loc6_);
                                                         }
                                                         addr98:
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr105);
                                                }
                                                break;
                                             }
                                             §§goto(addr101);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr72);
                                    }
                                 }
                                 §§goto(addr148);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr56);
            }
            §§goto(addr98);
         }
         §§goto(addr56);
      }
      
      private function §0!4§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§`i§ = null;
         var _loc4_:§`i§ = null;
         if(_loc6_ || this)
         {
            §§push(param1.keyCode);
            if(_loc6_ || _loc2_)
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
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(param1.keyCode);
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§+E§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc6_)
                                          {
                                             this.§+E§ = param1.type == KeyboardEvent.KEY_DOWN;
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§7J§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop11:
                                                   while(!_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§pop();
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     addr77:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(this.§+E§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              addr100:
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!(_loc6_ || _loc3_))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(!(_loc6_ || _loc3_))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 §§push(this.§7!q§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().visible = this.§+E§;
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    §§push(this.§7!q§);
                                                                                    addr144:
                                                                                    break;
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       §§pop().§'e§(this.§;p§.stageWidth / 2,this.§;p§.stageHeight / 2);
                                                                                       if(_loc5_ && _loc3_)
                                                                                       {
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       addr501:
                                                                                       addr501:
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr494);
                                                                              }
                                                                              while(!_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 §§goto(addr144);
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        §§goto(addr100);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop13;
                                                                  }
                                                                  addr223:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.keyCode);
                                                               if(_loc5_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               §§push(15);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr491:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr494);
                                                                  }
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            addr224:
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr494:
                                          this.§=!V§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          addr501:
                                          return;
                                       }
                                    }
                                 }
                              }
                              addr490:
                              §§goto(addr491);
                           }
                           addr201:
                        }
                        §§goto(addr223);
                     }
                  }
               }
            }
            §§goto(addr490);
         }
         §§goto(addr224);
      }
      
      private function §%`§(param1:§`i§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§`i§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§`i§ = null;
         §§push(§3K§);
         if(_loc8_)
         {
            §§push(§§pop() * §3K§);
            if(!_loc9_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§7!0§)
            {
               if(_loc8_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr82:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr84:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
               §§goto(addr84);
            }
            if(_loc8_ || _loc2_)
            {
               if(_loc2_)
               {
                  if(!(_loc9_ && param1))
                  {
                     param1.§?x§(_loc2_.§>+§ + 1);
                  }
                  loop1:
                  do
                  {
                     this.§7!0§.splice(this.§7!0§.indexOf(_loc2_),1);
                     addr148:
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           this.§7!0§.push(param1.clone());
                           if(_loc8_)
                           {
                              break;
                           }
                           continue loop2;
                           addr138:
                        }
                        continue loop1;
                     }
                  }
                  while(!_loc8_);
                  
                  return;
                  addr114:
               }
               else
               {
                  param1.§?x§(1);
               }
               while(true)
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§goto(addr138);
                  }
                  §§goto(addr148);
               }
            }
            §§goto(addr114);
         }
         §§goto(addr31);
      }
      
      private function §!<§(param1:§`i§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§ !R§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(!(_loc4_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§ !R§.push(param1);
                           addr63:
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr83:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr84:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                           addr108:
                        }
                        loop2:
                        while(_loc4_ && _loc3_)
                        {
                           while(true)
                           {
                              this.§ !R§.splice(_loc2_,1);
                              §§goto(addr108);
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     §§goto(addr63);
                  }
                  else if(this.§ !R§[_loc2_].id == param1.id)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr81);
               }
               §§goto(addr83);
            }
            §§goto(addr84);
         }
      }
      
      private function §;s§(param1:int) : §`i§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`i§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§ !R§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §7J§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7!q§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§7J§ != param1)
            {
               return;
            }
         }
      }
   }
}
