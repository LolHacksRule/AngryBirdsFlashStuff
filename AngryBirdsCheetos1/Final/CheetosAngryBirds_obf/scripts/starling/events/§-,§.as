package starling.events
{
   import §]@§.Stage;
   import flash.geom.Point;
   
   public class §-,§
   {
      
      private static const §6i§:Number = 0.3;
      
      private static const §4Q§:Number = 25;
      
      private static var §&6§:Vector.<int>;
      
      private static var §[c§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6i§ = 0.3;
            do
            {
               §4Q§ = 25;
               do
               {
                  §&6§ = new Vector.<int>(0);
                  do
                  {
                     §[c§ = new Vector.<Object>(0);
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(!(_loc2_ || §-,§));
               
            }
            while(!_loc2_);
            
         }
      }
      
      private var §6$§:Stage;
      
      private var §-$§:Number;
      
      private var §7!$§:Number;
      
      private var §01§:§5!"§;
      
      private var §[T§:Vector.<§5v§>;
      
      private var §"!W§:Vector.<Array>;
      
      private var §!'§:Vector.<§5v§>;
      
      private var §?R§:Boolean = false;
      
      private var §7W§:Boolean = false;
      
      public function §-,§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super();
            if(!(_loc4_ && _loc2_))
            {
               this.§6$§ = param1;
               if(!(_loc4_ && _loc2_))
               {
                  addr42:
                  this.§-$§ = this.§7!$§ = 0;
                  if(!(_loc4_ && param1))
                  {
                     this.§[T§ = new Vector.<§5v§>(0);
                     while(true)
                     {
                        this.§"!W§ = new Vector.<Array>(0);
                     }
                     addr151:
                  }
                  while(true)
                  {
                     this.§!'§ = new Vector.<§5v§>(0);
                     while(_loc3_)
                     {
                        §§push(this.§6$§);
                        loop3:
                        while(true)
                        {
                           §§push(KeyboardEvent.KEY_DOWN);
                           addr107:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§&!^§);
                              continue loop3;
                           }
                        }
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        return;
                     }
                  }
               }
               §§goto(addr151);
            }
         }
         §§goto(addr42);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6$§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§&!^§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§01§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr53:
                     this.§01§.dispose();
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr94);
               }
               break;
            }
            §§goto(addr53);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§5v§ = null;
         var _loc5_:§5v§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§-$§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§-$§ = §§pop();
            loop0:
            while(true)
            {
               this.§7!$§ = 0;
               loop1:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(this.§!'§.length > 0)
                     {
                        if(_loc10_)
                        {
                           continue;
                        }
                        addr110:
                        loop34:
                        while(true)
                        {
                           loop35:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc10_ || _loc2_)
                              {
                                 loop36:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && this))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          addr610:
                                          if(_loc10_ || _loc3_)
                                          {
                                             break loop1;
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             this.§[T§.splice(_loc2_,1);
                                             addr625:
                                             while(true)
                                             {
                                                addr588:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   loop33:
                                                   while(true)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            addr593:
                                                            loop17:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr594:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              break loop36;
                                                                           }
                                                                           continue loop33;
                                                                           addr632:
                                                                           while(true)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     addr598:
                                                                  }
                                                                  §§goto(addr632);
                                                               }
                                                            }
                                                         }
                                                         addr592:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr610:
                                       }
                                       else
                                       {
                                          §§push(this.§-$§);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(§§pop() - this.§!'§[_loc2_].timestamp);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() > §6i§)
                                                {
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      this.§!'§.splice(_loc2_,1);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         addr35:
                                                         §§push(_loc2_);
                                                         if(_loc11_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() - 1);
                                                         if(!_loc11_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop34;
                                                               }
                                                               continue loop35;
                                                            }
                                                            addr587:
                                                            while(true)
                                                            {
                                                               §§goto(addr540);
                                                            }
                                                            addr587:
                                                         }
                                                         §§goto(addr593);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§7!$§);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + 0.00001);
                                                         }
                                                         §§pop().§7!$§ = §§pop();
                                                         §§goto(addr587);
                                                      }
                                                      addr579:
                                                   }
                                                   §§goto(addr610);
                                                }
                                                §§goto(addr35);
                                             }
                                          }
                                          §§goto(addr630);
                                       }
                                       §§goto(addr631);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§goto(addr579);
                                       }
                                       §§goto(addr587);
                                    }
                                    else if(this.§[T§[_loc2_].phase == §3M§.§"!,§)
                                    {
                                       §§goto(addr610);
                                    }
                                    §§goto(addr588);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(!(_loc11_ && this))
                              {
                                 §§goto(addr485);
                              }
                              §§goto(addr530);
                           }
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               addr540:
               loop2:
               while(true)
               {
                  if(this.§"!W§.length <= 0)
                  {
                     if(!(_loc10_ || _loc3_))
                     {
                        continue loop37;
                     }
                     if(_loc10_ || param1)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        §§goto(addr625);
                     }
                     §§goto(addr594);
                  }
                  else
                  {
                     §&6§.length = §[c§.length = 0;
                     if(_loc10_ || this)
                     {
                        §§push(0);
                        if(!(_loc11_ && this))
                        {
                           _loc8_ = §§pop();
                           if(!_loc11_)
                           {
                              var _loc9_:* = this.§[T§;
                              loop3:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 if(!(_loc11_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(!_loc11_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§"!W§.length > 0);
                                                   if(!_loc11_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            §§pop();
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§&6§.indexOf(this.§"!W§[this.§"!W§.length - 1][0]) == -1);
                                                               }
                                                               addr379:
                                                            }
                                                            §§goto(addr625);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop4;
                                                      }
                                                      _loc3_ = (_loc7_ = this.§"!W§.pop())[0] as int;
                                                      §§push(Boolean(_loc4_ = this.§0G§(_loc3_)));
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc4_.phase == §3M§.§3!$§);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr351:
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr352:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr354:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc4_.target));
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr332:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(_loc11_)
                                                                                       {
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §[c§.push({
                                                                                             "touch":_loc4_,
                                                                                             "target":_loc4_.target
                                                                                          });
                                                                                          addr343:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr333:
                                                                                       addr335:
                                                                                    }
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§,! §.apply(this,_loc7_);
                                                                                       while(!_loc11_)
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             §&6§.push(_loc3_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr351);
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                }
                                                if(!(_loc10_ || _loc2_))
                                                {
                                                   break loop2;
                                                }
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   addr403:
                                                   _loc8_ = §§pop();
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      addr411:
                                                      _loc9_ = §[c§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.touch.target != _loc6_.target)
                                                               {
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§"M§,this.§[T§,this.§?R§,this.§7W§));
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               addr530:
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  addr466:
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue loop37;
                                                                  }
                                                                  §§push(0);
                                                                  if(!_loc11_)
                                                                  {
                                                                     break loop35;
                                                                  }
                                                                  §§goto(addr592);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc11_ && _loc2_))
                                                                  {
                                                                     §§push(this.§[T§.length - 1);
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        addr631:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           §§goto(addr632);
                                                                        }
                                                                     }
                                                                     addr630:
                                                                  }
                                                                  §§goto(addr598);
                                                               }
                                                               addr530:
                                                            }
                                                            §§goto(addr530);
                                                         }
                                                         break loop3;
                                                      }
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr593);
                                             }
                                             §§goto(addr379);
                                          }
                                          §§goto(addr411);
                                       }
                                       §§goto(addr529);
                                    }
                                    else
                                    {
                                       _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                       §§push(_loc5_.phase);
                                       if(_loc10_)
                                       {
                                          §§push(§3M§.§+c§);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc10_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      addr211:
                                                      §§pop();
                                                      if(_loc11_)
                                                      {
                                                         continue;
                                                      }
                                                      addr218:
                                                      §§push(_loc5_.phase == §3M§.§@!,§);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      _loc5_.§^E§(§3M§.§6n§);
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr211);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                                 break;
                              }
                              loop27:
                              for(; §§pop(); while(true)
                              {
                                 continue loop27;
                              })
                              {
                                 _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                 while(true)
                                 {
                                    §§push((_loc4_ = this.§0G§(_loc3_)).target);
                                    if(!_loc11_)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop27;
                                       }
                                       if(!(_loc10_ || _loc2_))
                                       {
                                          continue loop27;
                                       }
                                       §§push(_loc4_.target);
                                    }
                                    §§pop().dispatchEvent(new TouchEvent(TouchEvent.§"M§,this.§[T§,this.§?R§,this.§7W§));
                                    continue loop27;
                                 }
                              }
                              §§goto(addr529);
                           }
                           while(true)
                           {
                              _loc9_ = §&6§;
                              if(!_loc11_)
                              {
                                 §§goto(addr527);
                              }
                              §§goto(addr497);
                           }
                           addr485:
                        }
                        §§goto(addr403);
                     }
                  }
                  §§goto(addr625);
                  continue loop37;
               }
               return;
            }
         }
         _loc2_ = int(this.§!'§.length - 1);
         §§goto(addr110);
      }
      
      public function §,<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            this.§"!W§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§7W§);
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§&?§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr107:
                                    while(!(_loc6_ && param3))
                                    {
                                    }
                                    continue loop4;
                                    addr65:
                                    if(!(_loc6_ && param1))
                                    {
                                       if(!_loc6_)
                                       {
                                          loop11:
                                          while(§§pop())
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                this.§01§.§3k§(param3,param4,this.§?R§);
                                             }
                                             loop12:
                                             while(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   this.§"!W§.unshift([1,param2,this.§01§.§&h§,this.§01§.§@Q§]);
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         break loop11;
                                                      }
                                                      loop10:
                                                      while(_loc7_ || this)
                                                      {
                                                         §§push(param1 == 0);
                                                         if(_loc7_ || this)
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               §§goto(addr65);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr107);
                                                            }
                                                         }
                                                         while(_loc7_)
                                                         {
                                                            §§pop();
                                                            continue loop10;
                                                            §§goto(addr134);
                                                         }
                                                         addr134:
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          return;
                                          addr84:
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_ && param2)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§goto(addr124);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      private function §,! §(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§5v§;
         if((_loc6_ = this.§0G§(param1)) == null)
         {
            if(!(_loc7_ && this))
            {
               _loc6_ = new §5v§(param1,param3,param4,param2,null);
               if(!_loc7_)
               {
                  this.§08§(_loc6_);
                  addr52:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_ || param2)
                  {
                     _loc6_.§^E§(param2);
                     loop9:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§-$§);
                        if(_loc8_ || param2)
                        {
                           §§push(§§pop() + this.§7!$§);
                        }
                        §§pop().§^!3§(§§pop());
                        loop10:
                        while(true)
                        {
                           §§push(param2);
                           loop7:
                           while(true)
                           {
                              §§push(§3M§.§3!$§);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       addr158:
                                       §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop1:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(§3M§.§+c§);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                }
                                                §§goto(addr158);
                                                addr72:
                                                §§push(§3M§.§+c§);
                                                if(_loc8_ || param3)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               this.§2O§(_loc6_);
                                                               addr108:
                                                               if(!(_loc8_ || this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr72);
                                                                        }
                                                                        continue loop8;
                                                                        addr68:
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop10;
                                                                  addr141:
                                                               }
                                                               if(_loc8_ || param2)
                                                               {
                                                                  §§goto(addr64);
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc6_.§&2§(this.§6$§.hitTest(_loc5_,true));
                                                            §§goto(addr141);
                                                         }
                                                         addr134:
                                                      }
                                                      §§goto(addr108);
                                                   }
                                                }
                                                continue;
                                                addr64:
                                                return;
                                             }
                                          }
                                       }
                                       addr159:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr134);
                                       }
                                       §§goto(addr68);
                                    }
                                 }
                                 §§goto(addr158);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr159);
         }
         §§goto(addr52);
      }
      
      private function §&!^§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§5v§ = null;
         var _loc4_:§5v§ = null;
         if(_loc5_)
         {
            §§push(param1.keyCode);
            if(_loc5_)
            {
               §§push(17);
               if(_loc5_ || _loc3_)
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
                           while(true)
                           {
                              §§pop();
                              addr208:
                              addr489:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr490);
                                 }
                                 break;
                              }
                              §§goto(addr490);
                           }
                           addr207:
                        }
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§7W§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             this.§7W§ = param1.type == KeyboardEvent.KEY_DOWN;
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§&?§);
                                                      loop12:
                                                      while(!(_loc6_ && param1))
                                                      {
                                                         continue loop0;
                                                         addr67:
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§7W§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     addr92:
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(!_loc6_)
                                                                           {
                                                                              §§push(this.§01§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().visible = this.§7W§;
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr107:
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr152:
                                                                                 while(_loc5_ || _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr67);
                                                                                          }
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop7;
                                                                                          addr142:
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop12;
                                                                                    §§goto(addr107);
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                  }
                                                                  addr91:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr91);
                                                                     }
                                                                     §§goto(addr142);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               addr133:
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   addr170:
                                                }
                                                break;
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(false)
                                                {
                                                   §§goto(addr56);
                                                }
                                                _loc3_ = this.§0G§(0);
                                                _loc4_ = this.§0G§(1);
                                                if(!_loc6_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr478:
                                                      this.§01§.§3k§(_loc3_.globalX,_loc3_.globalY);
                                                   }
                                                   addr470:
                                                   §§push(Boolean(_loc2_));
                                                   if(Boolean(_loc2_))
                                                   {
                                                      addr472:
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr461:
                                                         §§push(Boolean(_loc4_));
                                                         if(Boolean(_loc4_))
                                                         {
                                                            addr462:
                                                            §§pop();
                                                            addr463:
                                                            if(!_loc6_)
                                                            {
                                                               addr435:
                                                               addr432:
                                                               addr430:
                                                               addr433:
                                                               addr434:
                                                               if(_loc4_.phase != §3M§.§"!,§)
                                                               {
                                                                  addr436:
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     §§goto(addr478);
                                                                  }
                                                                  this.§"!W§.unshift([1,§3M§.§"!,§,_loc4_.globalX,_loc4_.globalY]);
                                                                  addr486:
                                                                  addr490:
                                                                  §§push(15);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr508:
                                                                        this.§?R§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                     }
                                                                  }
                                                                  return;
                                                                  addr454:
                                                               }
                                                               §§push(this.§7W§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr400:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr410:
                                                                              §§push(§§pop());
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr418:
                                                                                    §§pop();
                                                                                    addr419:
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§push(Boolean(_loc3_));
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             addr322:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr328:
                                                                                                   §§push(_loc3_.phase);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr332:
                                                                                                      §§push(§3M§.§+c§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr335:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr355:
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr365:
                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr266:
                                                                                                                                 §§push(_loc3_.phase);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§3M§.§@!,§);
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr290:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   this.§"!W§.unshift([1,§3M§.§+c§,this.§01§.§&h§,this.§01§.§@Q§]);
                                                                                                                                                }
                                                                                                                                                addr307:
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr365);
                                                                                                                                                }
                                                                                                                                                §§goto(addr486);
                                                                                                                                             }
                                                                                                                                             this.§"!W§.unshift([1,§3M§.§3!$§,this.§01§.§&h§,this.§01§.§@Q§]);
                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr266);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr486);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr454);
                                                                                                                                                }
                                                                                                                                                §§goto(addr419);
                                                                                                                                             }
                                                                                                                                             §§goto(addr307);
                                                                                                                                          }
                                                                                                                                          §§goto(addr335);
                                                                                                                                       }
                                                                                                                                       §§goto(addr355);
                                                                                                                                    }
                                                                                                                                    §§goto(addr332);
                                                                                                                                 }
                                                                                                                                 §§goto(addr328);
                                                                                                                              }
                                                                                                                              §§goto(addr463);
                                                                                                                           }
                                                                                                                           §§goto(addr470);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§goto(addr290);
                                                                                                                  }
                                                                                                                  §§goto(addr461);
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   §§goto(addr430);
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             §§goto(addr486);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr436);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        §§goto(addr462);
                                                                     }
                                                                     §§goto(addr461);
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      §§goto(addr478);
                                                   }
                                                   §§goto(addr461);
                                                }
                                                §§goto(addr478);
                                             }
                                             §§goto(addr208);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr489);
                                 §§push(param1.keyCode);
                              }
                              §§goto(addr489);
                           }
                        }
                     }
                  }
               }
               §§goto(addr490);
            }
            §§goto(addr489);
         }
         §§goto(addr170);
      }
      
      private function §2O§(param1:§5v§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§5v§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§5v§ = null;
         §§push(§4Q§);
         if(!(_loc8_ && _loc2_))
         {
            §§push(§§pop() * §4Q§);
            if(!_loc8_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§!'§)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param1))
                     {
                        _loc5_ = §§pop();
                        addr98:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr100:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
               §§goto(addr100);
            }
            if(_loc9_ || param1)
            {
               if(!_loc2_)
               {
                  param1.§ N§(1);
                  do
                  {
                     if(!_loc8_)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           continue;
                        }
                        addr174:
                        while(true)
                        {
                           param1.§ N§(_loc2_.§!!8§ + 1);
                           addr180:
                           while(true)
                           {
                              this.§!'§.splice(this.§!'§.indexOf(_loc2_),1);
                           }
                        }
                     }
                     while(_loc8_ && _loc2_)
                     {
                        §§goto(addr180);
                     }
                  }
                  while(this.§!'§.push(param1.clone()), !_loc9_);
                  
                  return;
               }
               §§goto(addr174);
            }
            §§goto(addr180);
         }
         §§goto(addr37);
      }
      
      private function §08§(param1:§5v§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§[T§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§[T§.push(param1);
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr81:
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        addr109:
                        while(true)
                        {
                           this.§[T§.splice(_loc2_,1);
                           §§goto(addr81);
                        }
                     }
                     while(true)
                     {
                        addr63:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || this)
                           {
                              addr73:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop3;
                              }
                              addr73:
                           }
                           §§goto(addr73);
                        }
                     }
                  }
                  continue;
               }
               if(this.§[T§[_loc2_].id == param1.id)
               {
                  §§goto(addr109);
               }
               §§goto(addr63);
            }
            §§goto(addr73);
         }
      }
      
      private function §0G§(param1:int) : §5v§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5v§ = null;
         for each(_loc2_ in this.§[T§)
         {
            if(!_loc5_)
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §&?§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§01§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §&?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§&?§ != param1)
            {
               return;
            }
         }
      }
   }
}
