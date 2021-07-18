package starling.events
{
   import §2Y§.Stage;
   import flash.geom.Point;
   
   public class §8U§
   {
      
      private static const §9!R§:Number = 0.3;
      
      private static const §+p§:Number = 25;
      
      private static var §4[§:Vector.<int>;
      
      private static var §2b§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!R§ = 0.3;
            while(true)
            {
               §+p§ = 25;
               addr50:
               if(!(_loc2_ || §8U§))
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            §4[§ = new Vector.<int>(0);
            while(!(_loc1_ && _loc2_))
            {
               §2b§ = new Vector.<Object>(0);
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr57);
      }
      
      private var §18§:Stage;
      
      private var §=u§:Number;
      
      private var § !!§:Number;
      
      private var § `§:§?!R§;
      
      private var §;H§:Vector.<§?X§>;
      
      private var §3D§:Vector.<Array>;
      
      private var §#!<§:Vector.<§?X§>;
      
      private var §9!V§:Boolean = false;
      
      private var §@D§:Boolean = false;
      
      public function §8U§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            if(!(_loc4_ && this))
            {
               this.§18§ = param1;
               if(!_loc4_)
               {
                  this.§=u§ = this.§ !!§ = 0;
                  if(_loc3_ || param1)
                  {
                     this.§;H§ = new Vector.<§?X§>(0);
                     while(true)
                     {
                        this.§3D§ = new Vector.<Array>(0);
                     }
                     addr151:
                  }
               }
            }
            loop0:
            while(true)
            {
               this.§#!<§ = new Vector.<§?X§>(0);
               while(true)
               {
                  §§push(this.§18§);
                  loop2:
                  while(true)
                  {
                     §§push(KeyboardEvent.KEY_DOWN);
                     addr95:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.§'!7§);
                        addr98:
                        while(_loc3_ || _loc2_)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§18§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr92:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§'!7§);
                  continue loop0;
               }
            }
         }
         §§goto(addr37);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§?X§ = null;
         var _loc5_:§?X§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc11_ && this))
         {
            §§push(this);
            §§push(this.§=u§);
            if(!_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=u§ = §§pop();
            loop0:
            while(true)
            {
               this.§ !!§ = 0;
               for(; this.§#!<§.length > 0; if(!(_loc10_ || _loc2_))
               {
                  continue;
               })
               {
                  if(!(_loc11_ && this))
                  {
                     if(!_loc11_)
                     {
                        _loc2_ = int(this.§#!<§.length - 1);
                        continue;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr161);
            }
         }
         loop29:
         while(true)
         {
            loop30:
            while(true)
            {
               §§push(_loc2_);
               if(_loc10_ || _loc3_)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc11_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc11_ && _loc2_))
                           {
                              addr161:
                              loop2:
                              while(true)
                              {
                                 if(this.§3D§.length <= 0)
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    loop27:
                                    while(_loc11_)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr634:
                                             loop19:
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                loop20:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop21:
                                                      while(true)
                                                      {
                                                         addr580:
                                                         addr650:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc10_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            if(_loc11_ && param1)
                                                            {
                                                               continue loop19;
                                                            }
                                                            §§push(0);
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  continue loop27;
                                                               }
                                                               if(this.§;H§[_loc2_].phase == §9i§.§9a§)
                                                               {
                                                                  break loop22;
                                                               }
                                                               continue loop18;
                                                            }
                                                         }
                                                         this.§;H§.splice(_loc2_,1);
                                                         continue loop17;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr671:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                      }
                                                      addr671:
                                                   }
                                                   §§goto(addr672);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §4[§.length = §2b§.length = 0;
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && param1))
                                    {
                                       while(true)
                                       {
                                          var _loc8_:* = §§pop();
                                          if(_loc10_)
                                          {
                                             var _loc9_:* = this.§;H§;
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                if(_loc10_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(this.§3D§.length > 0);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§4[§.indexOf(this.§3D§[this.§3D§.length - 1][0]) == -1);
                                                                                 addr427:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop4;
                                                                                    }
                                                                                    _loc3_ = (_loc7_ = this.§3D§.pop())[0] as int;
                                                                                    §§push(Boolean(_loc4_ = this.§5,§(_loc3_)));
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc4_.phase == §9i§.§'+§);
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         addr386:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr387:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop7:
                                                                                                                        for(; !(_loc11_ && param1); if(!(_loc10_ || this))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },§4[§.push(_loc3_),if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§=;§.apply(this,_loc7_);
                                                                                                                              }
                                                                                                                              addr310:
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        },§§goto(addr316))
                                                                                                                        {
                                                                                                                           §2b§.push({
                                                                                                                              "touch":_loc4_,
                                                                                                                              "target":_loc4_.target
                                                                                                                           });
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr316:
                                                                                                                              while(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop6:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(_loc4_.target));
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           addr388:
                                                                                                                           addr388:
                                                                                                                           addr388:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr389:
                                                                                                                     }
                                                                                                                     §§goto(addr310);
                                                                                                                  }
                                                                                                                  addr354:
                                                                                                               }
                                                                                                               §§goto(addr388);
                                                                                                            }
                                                                                                         }
                                                                                                         addr386:
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             §§goto(addr388);
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                              }
                                                                              addr414:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_ = §2b§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc9_,_loc8_));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                if(_loc6_.touch.target != _loc6_.target)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§]!-§,this.§;H§,this.§9!V§,this.§@D§));
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr478:
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   addr486:
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      addr497:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            _loc9_ = §4[§;
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                  break loop3;
                                                                                                               }
                                                                                                               addr560:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.§;H§.length - 1);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr671);
                                                                                                                     }
                                                                                                                     addr670:
                                                                                                                  }
                                                                                                                  §§goto(addr672);
                                                                                                               }
                                                                                                               addr557:
                                                                                                               addr560:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push((_loc4_ = this.§5,§(_loc3_)).target);
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && this))
                                                                                                                     {
                                                                                                                        addr546:
                                                                                                                        _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§]!-§,this.§;H§,this.§9!V§,this.§@D§));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            addr522:
                                                                                                         }
                                                                                                         §§goto(addr560);
                                                                                                      }
                                                                                                      addr497:
                                                                                                   }
                                                                                                   §§goto(addr634);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr560);
                                                                                          }
                                                                                          break loop3;
                                                                                       }
                                                                                    }
                                                                                    addr441:
                                                                                 }
                                                                                 §§goto(addr560);
                                                                              }
                                                                              §§goto(addr497);
                                                                           }
                                                                           addr435:
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§goto(addr435);
                                                               }
                                                               §§goto(addr665);
                                                            }
                                                            §§goto(addr672);
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr478);
                                                   }
                                                   else
                                                   {
                                                      _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                      §§push(_loc5_.phase);
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         §§push(§9i§.§%J§);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc11_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr228:
                                                                     §§push(_loc5_.phase == §9i§.§]W§);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  _loc5_.§3!1§(§9i§.§!!#§);
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                   §§goto(addr522);
                                                }
                                                §§goto(addr560);
                                             }
                                          }
                                          §§goto(addr441);
                                       }
                                       addr187:
                                    }
                                    §§goto(addr671);
                                 }
                                 §§goto(addr616);
                              }
                              return;
                           }
                           §§goto(addr672);
                        }
                        else
                        {
                           §§push(this.§=u§);
                           if(_loc10_ || param1)
                           {
                              §§push(§§pop() - this.§#!<§[_loc2_].timestamp);
                              if(!_loc11_)
                              {
                                 if(§§pop() > §9!R§)
                                 {
                                    if(_loc10_)
                                    {
                                       this.§#!<§.splice(_loc2_,1);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          addr40:
                                          §§push(_loc2_);
                                          if(_loc10_ || this)
                                          {
                                             §§push(§§pop() - 1);
                                             if(!_loc10_)
                                             {
                                                continue;
                                             }
                                             _loc2_ = §§pop();
                                             if(!(_loc11_ && this))
                                             {
                                                if(false)
                                                {
                                                   continue loop29;
                                                }
                                                continue loop30;
                                             }
                                             §§goto(addr414);
                                          }
                                          §§goto(addr187);
                                          addr98:
                                       }
                                       §§goto(addr631);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr40);
                              }
                           }
                        }
                        §§goto(addr670);
                     }
                     break;
                  }
                  §§goto(addr592);
               }
               break;
            }
            §§goto(addr497);
         }
      }
      
      public function §&I§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§3D§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§@D§);
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       addr100:
                                       do
                                       {
                                          §§push(param1 == 0);
                                          if(_loc6_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       while(!(_loc6_ && param3));
                                       
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(!(_loc6_ && this))
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop1;
                                          }
                                          addr109:
                                          addr127:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 loop7:
                                 while(§§pop())
                                 {
                                    loop8:
                                    while(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             this.§ `§.§case§(param3,param4,this.§9!V§);
                                             do
                                             {
                                                this.§3D§.unshift([1,param2,this.§ `§.§6P§,this.§ `§.§<I§]);
                                             }
                                             while(_loc6_);
                                             
                                             if(_loc7_)
                                             {
                                                break loop7;
                                             }
                                             continue loop8;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr100);
                                 }
                                 return;
                              }
                              break;
                           }
                           continue;
                        }
                     }
                  }
               }
               §§goto(addr109);
            }
         }
         §§goto(addr71);
      }
      
      private function §=;§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?X§;
         if((_loc6_ = this.§5,§(param1)) == null)
         {
            if(!(_loc8_ && this))
            {
               _loc6_ = new §?X§(param1,param3,param4,param2,null);
               if(!(_loc8_ && param3))
               {
                  this.§74§(_loc6_);
                  addr56:
                  _loc6_.setPosition(param3,param4);
                  if(_loc7_)
                  {
                     _loc6_.§3!1§(param2);
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§=u§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + this.§ !!§);
                        }
                        §§pop().§^!C§(§§pop());
                        loop1:
                        while(true)
                        {
                           §§push(param2);
                           loop2:
                           while(true)
                           {
                              §§push(§9i§.§'+§);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop1;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(!(_loc7_ || param3))
                                             {
                                                break;
                                             }
                                             §§push(§9i§.§%J§);
                                             if(_loc7_ || param1)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.§`Q§(_loc6_);
                                                   }
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            break loop6;
                                                         }
                                                         continue loop2;
                                                         addr178:
                                                      }
                                                      else
                                                      {
                                                         addr117:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr162:
                                                   }
                                                }
                                                return;
                                             }
                                             while(!(_loc8_ && this))
                                             {
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr178);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc6_.§&z§(this.§18§.hitTest(_loc5_,true));
                     §§goto(addr162);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr117);
         }
         §§goto(addr56);
      }
      
      private function §'!7§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§?X§ = null;
         var _loc4_:§?X§ = null;
         if(_loc5_ || param1)
         {
            §§push(param1.keyCode);
            if(!_loc6_)
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
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(this.§@D§);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr185:
                                          while(_loc5_)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                       addr184:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       this.§@D§ = param1.type == KeyboardEvent.KEY_DOWN;
                                       while(true)
                                       {
                                          §§push(this.simulateMultitouch);
                                          addr118:
                                          while(!(_loc6_ && _loc2_))
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr185);
                                          addr93:
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc5_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ `§);
                                                loop19:
                                                while(true)
                                                {
                                                   §§pop().visible = this.§@D§;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(this.§ `§);
                                                      if(_loc6_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      §§pop().§`!§(this.§18§.stageWidth / 2,this.§18§.stageHeight / 2);
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(false)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§@D§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr77:
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr184);
                                                                           }
                                                                        }
                                                                        addr80:
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop15;
                                                                              §§goto(addr80);
                                                                           }
                                                                           addr488:
                                                                           this.§9!V§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                           return;
                                                                           addr144:
                                                                        }
                                                                        §§goto(addr488);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr144);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§goto(addr93);
                                                                              }
                                                                              addr89:
                                                                           }
                                                                           §§goto(addr488);
                                                                        }
                                                                        continue loop2;
                                                                        addr141:
                                                                     }
                                                                     §§goto(addr89);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr140:
                                                                  }
                                                                  §§goto(addr141);
                                                               }
                                                               §§goto(addr77);
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                         else
                                                         {
                                                            _loc3_ = this.§5,§(0);
                                                            _loc4_ = this.§5,§(1);
                                                            if(_loc5_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr463:
                                                                  this.§ `§.§case§(_loc3_.globalX,_loc3_.globalY);
                                                               }
                                                               addr457:
                                                               §§push(Boolean(_loc2_));
                                                               if(Boolean(_loc2_))
                                                               {
                                                                  addr459:
                                                                  §§pop();
                                                                  addr460:
                                                                  §§push(Boolean(_loc4_));
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr450:
                                                                     if(§§pop())
                                                                     {
                                                                        addr451:
                                                                        §§pop();
                                                                        addr452:
                                                                        §§push(_loc4_.phase == §9i§.§9a§);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              addr422:
                                                                              addr421:
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr423:
                                                                                 this.§3D§.unshift([1,§9i§.§9a§,_loc4_.globalX,_loc4_.globalY]);
                                                                                 addr434:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr463);
                                                                                 }
                                                                                 §§goto(addr89);
                                                                              }
                                                                              addr379:
                                                                              §§push(Boolean(this.§@D§));
                                                                              §§push(Boolean(this.§@D§));
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr389:
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§pop();
                                                                                       addr397:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(Boolean(_loc3_));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr306:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr308:
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr317:
                                                                                                      §§push(_loc3_.phase);
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         addr326:
                                                                                                         §§push(§§pop() == §9i§.§%J§);
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr347:
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr369:
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr236:
                                                                                                                                       §§push(_loc3_.phase);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§9i§.§]W§);
                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr272:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               this.§3D§.unshift([1,§9i§.§%J§,this.§ `§.§6P§,this.§ `§.§<I§]);
                                                                                                                                                               addr296:
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr308);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr89);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr369);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr296);
                                                                                                                                                      }
                                                                                                                                                      this.§3D§.unshift([1,§9i§.§'+§,this.§ `§.§6P§,this.§ `§.§<I§]);
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr236);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr89);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr463);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr452);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr296);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr457);
                                                                                                                                                }
                                                                                                                                                §§goto(addr347);
                                                                                                                                             }
                                                                                                                                             §§goto(addr452);
                                                                                                                                          }
                                                                                                                                          §§goto(addr326);
                                                                                                                                       }
                                                                                                                                       §§goto(addr317);
                                                                                                                                    }
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 §§goto(addr434);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     §§goto(addr272);
                                                                                                                  }
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                               §§goto(addr379);
                                                                                                            }
                                                                                                            §§goto(addr460);
                                                                                                         }
                                                                                                         §§goto(addr347);
                                                                                                      }
                                                                                                      §§goto(addr452);
                                                                                                   }
                                                                                                   §§goto(addr397);
                                                                                                }
                                                                                                §§goto(addr89);
                                                                                             }
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                           §§goto(addr459);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§goto(addr421);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                }
                                             }
                                             addr109:
                                          }
                                          while(true)
                                          {
                                             §§push(param1.keyCode);
                                             if(_loc6_ && this)
                                             {
                                                break;
                                             }
                                             §§push(15);
                                             if(_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             addr475:
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr488);
                                                }
                                             }
                                             §§goto(addr488);
                                          }
                                          §§goto(addr475);
                                          §§push(16);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr474);
                                    §§push(param1.keyCode);
                                 }
                              }
                           }
                           addr178:
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr198);
                        }
                     }
                  }
               }
            }
            §§goto(addr474);
         }
         §§goto(addr109);
      }
      
      private function §`Q§(param1:§?X§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§?X§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§?X§ = null;
         §§push(§+p§);
         if(!_loc9_)
         {
            §§push(§§pop() * §+p§);
            if(_loc8_ || param1)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§#!<§)
            {
               if(!_loc9_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr87:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr89:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr87);
               }
               §§goto(addr89);
            }
            if(!(_loc9_ && param1))
            {
               if(!_loc2_)
               {
                  param1.§!!Y§(1);
                  while(true)
                  {
                     if(!(_loc9_ && this))
                     {
                        while(true)
                        {
                           this.§#!<§.push(param1.clone());
                           if(_loc9_)
                           {
                              break;
                           }
                           if(!(_loc9_ && _loc2_))
                           {
                              return;
                           }
                           addr150:
                        }
                        continue;
                     }
                     addr163:
                     while(true)
                     {
                        param1.§!!Y§(_loc2_.§#X§ + 1);
                        addr169:
                        while(true)
                        {
                           this.§#!<§.splice(this.§#!<§.indexOf(_loc2_),1);
                        }
                     }
                     while(_loc9_)
                     {
                        §§goto(addr169);
                     }
                     §§goto(addr150);
                  }
               }
            }
            §§goto(addr163);
         }
         §§goto(addr36);
      }
      
      private function §74§(param1:§?X§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§;H§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     this.§;H§.push(param1);
                     break;
                  }
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        addr57:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              addr62:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop2;
                              }
                              addr62:
                           }
                           §§goto(addr62);
                        }
                     }
                  }
                  continue;
               }
               if(this.§;H§[_loc2_].id == param1.id)
               {
                  if(!_loc4_)
                  {
                     this.§;H§.splice(_loc2_,1);
                  }
                  §§goto(addr93);
               }
               §§goto(addr57);
            }
            §§goto(addr62);
         }
      }
      
      private function §5,§(param1:int) : §?X§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?X§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§;H§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§ `§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.simulateMultitouch != param1)
            {
               return;
            }
         }
      }
   }
}
