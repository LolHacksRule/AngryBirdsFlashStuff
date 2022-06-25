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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2!]§ = 0.3;
         }
         while(true)
         {
            §3K§ = 25;
            while(_loc1_)
            {
               §#!G§ = new Vector.<int>(0);
               while(!_loc2_)
               {
                  §use § = new Vector.<Object>(0);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_ || _loc2_)
            {
               this.§;p§ = param1;
               if(_loc4_ || this)
               {
                  this.§5Y§ = this.§>-§ = 0;
                  if(!(_loc3_ && param1))
                  {
                     this.§ !R§ = new Vector.<§`i§>(0);
                     loop6:
                     while(true)
                     {
                        this.§4S§ = new Vector.<Array>(0);
                        addr143:
                        while(true)
                        {
                           this.§7!0§ = new Vector.<§`i§>(0);
                           addr133:
                           loop5:
                           while(true)
                           {
                              §§push(this.§;p§);
                              addr99:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr101:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§0!4§);
                                    addr104:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr111:
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop6;
                        }
                     }
                     addr54:
                  }
                  while(true)
                  {
                     §§push(this.§;p§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(_loc4_)
                        {
                           §§pop().addEventListener(§§pop(),this.§0!4§);
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr99);
                     §§goto(addr111);
                  }
                  return;
                  addr95:
               }
               §§goto(addr133);
            }
            §§goto(addr54);
         }
         §§goto(addr95);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§;p§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr92:
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
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr69:
                     this.§7!q§.dispose();
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               §§goto(addr25);
            }
            §§goto(addr69);
         }
         addr25:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§`i§ = null;
         var _loc5_:§`i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc10_)
         {
            §§push(this);
            §§push(this.§5Y§);
            if(!_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§5Y§ = §§pop();
            loop0:
            while(true)
            {
               this.§>-§ = 0;
               while(this.§7!0§.length > 0)
               {
                  if(!(_loc10_ && param1))
                  {
                     _loc2_ = int(this.§7!0§.length - 1);
                  }
                  if(_loc11_)
                  {
                     continue loop0;
                  }
               }
               §§goto(addr157);
            }
         }
         loop31:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_);
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc11_ || _loc3_)
                        {
                           addr157:
                           while(true)
                           {
                              if(this.§4S§.length <= 0)
                              {
                                 if(!(_loc10_ && param1))
                                 {
                                    break;
                                 }
                                 loop29:
                                 while(true)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          break;
                                       }
                                       addr698:
                                       loop5:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc11_ || param1)
                                             {
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(0);
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         continue loop29;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§>-§);
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(§§pop() + 0.00001);
                                                         }
                                                         §§pop().§>-§ = §§pop();
                                                         continue loop29;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(this.§ !R§[_loc2_].phase == §;@§.§>!q§)
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            this.§ !R§.splice(_loc2_,1);
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            addr650:
                                                            while(_loc10_ && _loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr691:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                             }
                                          }
                                          addr697:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr650);
                                 }
                                 continue;
                              }
                              §#!G§.length = §use §.length = 0;
                              if(!_loc10_)
                              {
                                 §§push(0);
                                 if(_loc11_ || param1)
                                 {
                                    var _loc8_:* = §§pop();
                                    if(!(_loc10_ && param1))
                                    {
                                       var _loc9_:* = this.§ !R§;
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc9_,_loc8_));
                                          if(_loc11_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      addr271:
                                                      if(_loc11_)
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this.§4S§.length > 0);
                                                            if(_loc11_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     addr417:
                                                                     §§pop();
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        addr425:
                                                                        while(true)
                                                                        {
                                                                           §§push(§#!G§.indexOf(this.§4S§[this.§4S§.length - 1][0]) == -1);
                                                                        }
                                                                        addr425:
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        addr441:
                                                                        §§push(0);
                                                                        if(_loc11_ || _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 _loc9_ = §use §;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc9_,_loc8_));
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                          if(_loc6_.touch.target != _loc6_.target)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          addr581:
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                          }
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             §§push(this.§ !R§.length - 1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr697);
                                                                                             }
                                                                                          }
                                                                                          break loop12;
                                                                                          addr581:
                                                                                       }
                                                                                       §§goto(addr581);
                                                                                    }
                                                                                    break loop3;
                                                                                 }
                                                                              }
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       addr523:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc9_ = §#!G§;
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                addr578:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                   break loop3;
                                                                                                }
                                                                                                addr578:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push((_loc4_ = this.§;s§(_loc3_)).target);
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc11_ || param1)
                                                                                                      {
                                                                                                         addr567:
                                                                                                         _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2!6§,this.§ !R§,this.§=!V§,this.§+E§));
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr578);
                                                                                                }
                                                                                                §§goto(addr567);
                                                                                             }
                                                                                             addr543:
                                                                                          }
                                                                                          §§goto(addr581);
                                                                                       }
                                                                                       addr523:
                                                                                    }
                                                                                    §§goto(addr697);
                                                                                 }
                                                                                 addr515:
                                                                              }
                                                                              §§goto(addr657);
                                                                           }
                                                                           addr449:
                                                                        }
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr515);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc3_ = (_loc7_ = this.§4S§.pop())[0] as int;
                                                                     §§push(Boolean(_loc4_ = this.§;s§(_loc3_)));
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push(_loc4_.phase == §;@§.§ ]§);
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       addr402:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr403:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr405:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc4_.target));
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr378:
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
                                                                                                         addr387:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr379:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§`U§.apply(this,_loc7_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr402:
                                                                                    }
                                                                                    §§goto(addr402);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           §§goto(addr402);
                                                                        }
                                                                        §§goto(addr403);
                                                                     }
                                                                     §§goto(addr402);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr417);
                                                         }
                                                         §§goto(addr616);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr581);
                                                }
                                                §§goto(addr580);
                                             }
                                             else
                                             {
                                                _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                §§push(_loc5_.phase);
                                                if(_loc11_)
                                                {
                                                   §§push(§;@§.§`O§);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc11_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               addr234:
                                                               §§push(_loc5_.phase == §;@§.§ 8§);
                                                            }
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            _loc5_.§=I§(§;@§.§]M§);
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                          §§goto(addr543);
                                          §§goto(addr578);
                                       }
                                       §§goto(addr580);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr523);
                              }
                              §§goto(addr441);
                              §§goto(addr616);
                           }
                           return;
                        }
                        §§goto(addr698);
                     }
                     else
                     {
                        §§push(this.§5Y§);
                        if(!_loc10_)
                        {
                           §§push(§§pop() - this.§7!0§[_loc2_].timestamp);
                           if(_loc11_ || _loc3_)
                           {
                              if(§§pop() > §2!]§)
                              {
                                 if(_loc11_ || _loc3_)
                                 {
                                    this.§7!0§.splice(_loc2_,1);
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       addr36:
                                       §§push(_loc2_);
                                       if(_loc11_ || param1)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc11_ || param1)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                if(false)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr638);
                                          }
                                          §§goto(addr697);
                                       }
                                       §§goto(addr449);
                                    }
                                    §§goto(addr691);
                                 }
                                 §§goto(addr425);
                              }
                              §§goto(addr36);
                           }
                        }
                     }
                     §§goto(addr696);
                  }
                  break loop31;
               }
               §§goto(addr697);
            }
         }
         §§goto(addr613);
      }
      
      public function §43§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§4S§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§+E§);
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop11:
                              while(true)
                              {
                                 §§push(this.§7J§);
                                 if(!_loc7_)
                                 {
                                    addr86:
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          addr90:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                while(§§pop())
                                                {
                                                   do
                                                   {
                                                      this.§7!q§.§?>§(param3,param4,this.§=!V§);
                                                      do
                                                      {
                                                         this.§4S§.unshift([1,param2,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                                                      }
                                                      while(_loc7_);
                                                      
                                                   }
                                                   while(!(_loc6_ || param2));
                                                   
                                                   addr73:
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   addr112:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop11;
                                                      §§goto(addr73);
                                                   }
                                                   continue loop11;
                                                }
                                                return;
                                                addr71:
                                             }
                                             while(true)
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop10;
                                                }
                                                §§pop();
                                             }
                                             §§goto(addr86);
                                             §§goto(addr112);
                                          }
                                          continue loop2;
                                       }
                                       addr89:
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr94);
                              }
                           }
                           addr135:
                        }
                        §§goto(addr89);
                     }
                  }
               }
               §§goto(addr135);
            }
         }
         while(true)
         {
            §§push(param1 == 0);
            if(!(_loc7_ && param2))
            {
               if(!_loc7_)
               {
                  §§goto(addr71);
               }
               §§goto(addr90);
            }
            §§goto(addr94);
         }
      }
      
      private function §`U§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§`i§;
         if((_loc6_ = this.§;s§(param1)) == null)
         {
            if(!_loc7_)
            {
               _loc6_ = new §`i§(param1,param3,param4,param2,null);
               if(_loc8_)
               {
                  this.§!<§(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  if(!_loc7_)
                  {
                     _loc6_.§=I§(param2);
                     loop14:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§5Y§);
                        if(_loc8_ || param3)
                        {
                           §§push(§§pop() + this.§>-§);
                        }
                        §§pop().§3!c§(§§pop());
                        loop2:
                        while(true)
                        {
                           §§push(param2);
                           loop3:
                           while(true)
                           {
                              §§push(§;@§.§ ]§);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                _loc6_.§`"§(this.§;p§.hitTest(_loc5_,true));
                                                addr133:
                                                while(true)
                                                {
                                                }
                                                addr86:
                                                if(!(_loc8_ || this))
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   break loop10;
                                                }
                                                while(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop2;
                                                addr152:
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(§;@§.§`O§);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         continue loop14;
                                                      }
                                                   }
                                                   addr98:
                                                }
                                                return;
                                             }
                                             addr117:
                                             while(!_loc7_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop5;
                                                }
                                                addr151:
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                             }
                                             continue loop4;
                                             §§goto(addr152);
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          this.§%`§(_loc6_);
                                          §§goto(addr98);
                                       }
                                       addr95:
                                    }
                                    §§goto(addr151);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr154);
               }
               §§goto(addr47);
            }
            §§goto(addr95);
         }
         §§goto(addr47);
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
            if(_loc6_)
            {
               §§push(17);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(15);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1.keyCode);
                                                break loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§+E§);
                                             }
                                          }
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop5:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                this.§+E§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                loop7:
                                                while(_loc6_)
                                                {
                                                   §§push(this.§7J§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   loop8:
                                                   while(!_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                      loop9:
                                                      for(; !_loc5_; §§push(this.§+E§),if(_loc5_ && _loc2_)
                                                      {
                                                         continue;
                                                      },§§push(§§pop() == §§pop()),if(_loc6_ || this)
                                                      {
                                                      },§§goto(addr97))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop10:
                                                            while(!(_loc5_ && this))
                                                            {
                                                               §§pop();
                                                               while(_loc6_)
                                                               {
                                                                  do
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop10;
                                                                        continue loop10;
                                                                     }
                                                                     addr97:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  while(!_loc5_);
                                                                  
                                                                  continue loop2;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop5;
                                                         }
                                                         loop13:
                                                         while(§§pop())
                                                         {
                                                            while(_loc6_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§7!q§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().visible = this.§+E§;
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr149);
                                                                  }
                                                                  addr494:
                                                                  this.§=!V§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                  §§goto(addr501);
                                                               }
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(false)
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                               else
                                                               {
                                                                  _loc3_ = this.§;s§(0);
                                                                  _loc4_ = this.§;s§(1);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§7!q§.§?>§(_loc3_.globalX,_loc3_.globalY);
                                                                           addr486:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr479:
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr459:
                                                                                       while(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(Boolean(_loc4_));
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr458:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop29:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(_loc6_ || this)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.phase);
                                                                                                   addr416:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§;@§.§>!q§);
                                                                                                      addr418:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         addr419:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop31;
                                                                                                      }
                                                                                                      §§push(_loc3_.phase);
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§;@§.§`O§);
                                                                                                         addr354:
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        while(_loc6_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr404:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc5_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break loop42;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr412);
                                                                                                                              }
                                                                                                                              addr404:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop29;
                                                                                                                        addr401:
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(_loc6_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!(_loc6_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    this.§4S§.unshift([1,§;@§.§`O§,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.§4S§.unshift([1,§;@§.§ ]§,this.§7!q§.§;d§,this.§7!q§.§6!=§]);
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(_loc3_));
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                break loop13;
                                                                                                                                             }
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop22;
                                                                                                                                       addr412:
                                                                                                                                    }
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          break loop13;
                                                                                                                                       }
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr324:
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 break loop41;
                                                                                                                              }
                                                                                                                              addr433:
                                                                                                                              addr433:
                                                                                                                              addr366:
                                                                                                                              while(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                                 §§goto(addr324);
                                                                                                                              }
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                           §§goto(addr459);
                                                                                                                           addr300:
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     §§goto(addr300);
                                                                                                                     §§goto(addr366);
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                                  §§goto(addr404);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         addr422:
                                                                                                         this.§4S§.unshift([1,§;@§.§>!q§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop23;
                                                                                             addr443:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             for(; !§§pop(); if(!(_loc6_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             },if(_loc6_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr398);
                                                                                                }
                                                                                                §§goto(addr404);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr443);
                                                                                             })
                                                                                             {
                                                                                                §§push(this.§+E§);
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr398:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr401);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr458);
                                                                                                }
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr188);
                                             }
                                          }
                                       }
                                    }
                                    addr491:
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr494);
                                       }
                                    }
                                    §§goto(addr501);
                                 }
                                 break;
                              }
                              addr490:
                              §§goto(addr491);
                           }
                        }
                        §§goto(addr186);
                     }
                  }
               }
               §§goto(addr491);
            }
            §§goto(addr490);
         }
         §§goto(addr109);
      }
      
      private function §%`§(param1:§`i§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§`i§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§`i§ = null;
         §§push(§3K§);
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() * §3K§);
            if(!(_loc8_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§7!0§)
         {
            if(_loc9_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc9_ || this)
                  {
                     _loc5_ = §§pop();
                     addr103:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr105:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr103);
            }
            §§goto(addr105);
         }
         if(!(_loc8_ && param1))
         {
            if(!_loc2_)
            {
               param1.§?x§(1);
               loop1:
               while(true)
               {
                  if(_loc8_ && this)
                  {
                     loop2:
                     while(true)
                     {
                        this.§7!0§.splice(this.§7!0§.indexOf(_loc2_),1);
                        while(true)
                        {
                           continue loop1;
                           addr138:
                           if(_loc9_ || param1)
                           {
                              if(_loc9_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     return;
                     addr190:
                  }
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               param1.§?x§(_loc2_.§>+§ + 1);
               §§goto(addr190);
            }
         }
         §§goto(addr171);
      }
      
      private function §!<§(param1:§`i§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§ !R§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     this.§ !R§.push(param1);
                  }
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        addr65:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr70:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr70:
                           }
                           §§goto(addr70);
                        }
                        addr84:
                        while(true)
                        {
                           this.§ !R§.splice(_loc2_,1);
                           continue loop2;
                        }
                     }
                  }
                  while(!_loc4_)
                  {
                     §§goto(addr84);
                  }
                  continue;
               }
               if(this.§ !R§[_loc2_].id == param1.id)
               {
                  §§goto(addr84);
               }
               §§goto(addr65);
            }
            §§goto(addr70);
         }
      }
      
      private function §;s§(param1:int) : §`i§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`i§ = null;
         for each(_loc2_ in this.§ !R§)
         {
            if(_loc6_ || param1)
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §7J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§7!q§ == null);
         if(!(_loc1_ && this))
         {
            return !§§pop();
         }
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§7J§ != param1)
            {
               return;
            }
         }
      }
   }
}
