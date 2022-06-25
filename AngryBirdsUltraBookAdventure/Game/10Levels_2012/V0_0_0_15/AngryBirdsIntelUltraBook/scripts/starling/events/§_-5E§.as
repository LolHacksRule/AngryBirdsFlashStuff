package starling.events
{
   import §_-uY§.Stage;
   import flash.geom.Point;
   
   public class §_-5E§
   {
      
      private static const §_-03p§:Number = 0.3;
      
      private static const §_-SA§:Number = 25;
      
      private static var §_-SQ§:Vector.<int>;
      
      private static var §_-eu§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-03p§ = 0.3;
            while(true)
            {
               §_-SA§ = 25;
               loop2:
               while(_loc1_ || §_-5E§)
               {
                  §_-eu§ = new Vector.<Object>(0);
                  if(_loc1_ || _loc1_)
                  {
                     addr59:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           §_-SQ§ = new Vector.<int>(0);
                           continue loop2;
                           §§goto(addr59);
                        }
                        addr83:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private var §_-qN§:Stage;
      
      private var §_-je§:Number;
      
      private var §_-0CX§:Number;
      
      private var §_-5-§:§_-LK§;
      
      private var §_-0P§:Vector.<§_-06V§>;
      
      private var §_-Hz§:Vector.<Array>;
      
      private var §_-062§:Vector.<§_-06V§>;
      
      private var §_-Ri§:Boolean = false;
      
      private var §_-09Q§:Boolean = false;
      
      public function §_-5E§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this.§_-qN§ = param1;
               if(!(_loc4_ && this))
               {
                  this.§_-je§ = this.§_-0CX§ = 0;
                  if(_loc3_ || this)
                  {
                     this.§_-0P§ = new Vector.<§_-06V§>(0);
                     loop0:
                     while(true)
                     {
                        this.§_-Hz§ = new Vector.<Array>(0);
                        addr147:
                        while(true)
                        {
                           this.§_-062§ = new Vector.<§_-06V§>(0);
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr110);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-qN§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§_-00r§);
                  continue loop0;
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(this.§_-qN§);
            if(!_loc2_)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().removeEventListener(§§pop(),this.§_-00r§);
                  while(true)
                  {
                     §§push(this.§_-5-§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc2_)
                           {
                              continue;
                           }
                           addr68:
                        }
                        return;
                     }
                     break;
                  }
                  §§pop().dispose();
                  §§goto(addr68);
               }
            }
            else
            {
               §§goto(addr89);
            }
            §§goto(addr91);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§_-06V§ = null;
         var _loc5_:§_-06V§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§_-je§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-je§ = §§pop();
            loop0:
            while(true)
            {
               this.§_-0CX§ = 0;
               loop1:
               while(this.§_-062§.length > 0)
               {
                  if(_loc10_ || _loc2_)
                  {
                     while(true)
                     {
                        _loc2_ = int(this.§_-062§.length - 1);
                     }
                     addr102:
                  }
                  while(true)
                  {
                     if(_loc11_)
                     {
                        continue loop1;
                     }
                     if(_loc11_)
                     {
                        continue loop0;
                     }
                     loop25:
                     while(true)
                     {
                        loop26:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc11_)
                                    {
                                       break loop1;
                                    }
                                    loop29:
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc10_)
                                          {
                                             addr561:
                                             if(_loc10_ || param1)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§_-0CX§);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + 0.00001);
                                                         }
                                                         §§pop().§_-0CX§ = §§pop();
                                                      }
                                                      while(_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(this.§_-Hz§.length <= 0)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  addr635:
                                                                  addr635:
                                                                  while(true)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                               }
                                                               addr594:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr580);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §_-SQ§.length = §_-eu§.length = 0;
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                               var _loc8_:* = §§pop();
                                                               if(_loc10_ || param1)
                                                               {
                                                                  var _loc9_:* = this.§_-0P§;
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-Hz§.length > 0);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr391:
                                                                                                §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr407:
                                                                                                   if(§_-SQ§.indexOf(this.§_-Hz§[this.§_-Hz§.length - 1][0]) != -1)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               _loc9_ = §_-eu§;
                                                                                                               addr457:
                                                                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  break loop3;
                                                                                                               }
                                                                                                               loop19:
                                                                                                               for(; §§pop(); while(true)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               })
                                                                                                               {
                                                                                                                  _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push((_loc4_ = this.§_-hq§(_loc3_)).target);
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        §§push(_loc4_.target);
                                                                                                                     }
                                                                                                                     §§pop().dispatchEvent(new TouchEvent(TouchEvent.§_-ed§,this.§_-0P§,this.§_-Ri§,this.§_-09Q§));
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr530:
                                                                                                               if(!(_loc11_ && _loc2_))
                                                                                                               {
                                                                                                                  addr538:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§_-0P§.length - 1);
                                                                                                                     addr640:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr538:
                                                                                                               }
                                                                                                               §§goto(addr642);
                                                                                                               addr529:
                                                                                                               addr528:
                                                                                                            }
                                                                                                            addr476:
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr630:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§_-0P§.splice(_loc2_,1);
                                                                                                               §§goto(addr635);
                                                                                                            }
                                                                                                         }
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      §§goto(addr642);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc3_ = (_loc7_ = this.§_-Hz§.pop())[0] as int;
                                                                                                      §§push(Boolean(_loc4_ = this.§_-hq§(_loc3_)));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc11_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc4_.phase == §_-tW§.§for §);
                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr367:
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr371:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(_loc4_.target));
                                                                                                                                    if(!(_loc10_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr338:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr354:
                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                             {
                                                                                                                                                §_-eu§.push({
                                                                                                                                                   "touch":_loc4_,
                                                                                                                                                   "target":_loc4_.target
                                                                                                                                                });
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr354:
                                                                                                                                          }
                                                                                                                                          addr317:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§_-DU§.apply(this,_loc7_);
                                                                                                                                             while(_loc10_)
                                                                                                                                             {
                                                                                                                                                §_-SQ§.push(_loc3_);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr354);
                                                                                                                                          }
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr373:
                                                                                                                           }
                                                                                                                           §§goto(addr337);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr373);
                                                                                                                  }
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               §§goto(addr367);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr391);
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr485:
                                                                                          _loc9_ = §_-SQ§;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§goto(addr527);
                                                                                          }
                                                                                          §§goto(addr497);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr593:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          §§goto(addr594);
                                                                                       }
                                                                                       addr593:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr530);
                                                                           }
                                                                           §§goto(addr529);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                           §§push(_loc5_.phase);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(§_-tW§.§_-h4§);
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          addr211:
                                                                                          §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr218:
                                                                                          §§push(_loc5_.phase == §_-tW§.§_-Ua§);
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          _loc5_.§_-og§(§_-tW§.§_-jl§);
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
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                        if(_loc6_.touch.target != _loc6_.target)
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§_-ed§,this.§_-0P§,this.§_-Ri§,this.§_-09Q§));
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§goto(addr485);
                                                                     }
                                                                     §§goto(addr530);
                                                                  }
                                                                  §§goto(addr528);
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                            §§goto(addr593);
                                                         }
                                                         §§goto(addr593);
                                                      }
                                                      addr580:
                                                      addr582:
                                                      return;
                                                      addr540:
                                                   }
                                                   if(this.§_-0P§[_loc2_].phase == §_-tW§.§_-0Cc§)
                                                   {
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§goto(addr630);
                                                      }
                                                      §§goto(addr635);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         break loop26;
                                                      }
                                                      §§goto(addr593);
                                                      §§goto(addr635);
                                                   }
                                                }
                                                addr569:
                                             }
                                             break;
                                          }
                                          §§goto(addr593);
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr642);
                                          §§goto(addr561);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§_-je§);
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(§§pop() - this.§_-062§[_loc2_].timestamp);
                                       if(!_loc11_)
                                       {
                                          addr72:
                                          if(§§pop() > §_-03p§)
                                          {
                                             if(!_loc11_)
                                             {
                                                this.§_-062§.splice(_loc2_,1);
                                                if(_loc10_ || _loc2_)
                                                {
                                                   addr35:
                                                   §§push(_loc2_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc11_ && _loc2_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop25;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr538);
                                                   addr88:
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr88);
                                          }
                                          §§goto(addr35);
                                       }
                                       §§goto(addr640);
                                    }
                                    §§goto(addr72);
                                 }
                                 §§goto(addr538);
                              }
                              §§goto(addr569);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr593);
                        }
                     }
                  }
               }
               §§goto(addr540);
            }
         }
         §§goto(addr102);
      }
      
      public function §_-f1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            this.§_-Hz§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§_-09Q§);
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
                              if(_loc7_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1 == 0);
                                       if(_loc7_ && param1)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc7_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop7;
                                          }
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                this.§_-5-§.§_-Ze§(param3,param4,this.§_-Ri§);
                                             }
                                             addr90:
                                          }
                                          while(_loc6_ || param2)
                                          {
                                             this.§_-Hz§.unshift([1,param2,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             if(_loc6_ || param2)
                                             {
                                                continue loop0;
                                             }
                                             addr155:
                                             while(true)
                                             {
                                                §§push(this.§_-0J§);
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc6_ || this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr156);
                                             }
                                             addr156:
                                          }
                                          continue loop7;
                                       }
                                    }
                                    addr24:
                                    return;
                                 }
                                 addr147:
                              }
                              §§goto(addr86);
                           }
                           continue;
                           addr142:
                        }
                        §§goto(addr155);
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §_-DU§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-06V§;
         if((_loc6_ = this.§_-hq§(param1)) == null)
         {
            if(_loc7_ || param1)
            {
               _loc6_ = new §_-06V§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§_-05-§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(!(_loc8_ && this))
                  {
                     _loc6_.§_-og§(param2);
                     loop0:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§_-je§);
                        if(!(_loc8_ && param3))
                        {
                           §§push(§§pop() + this.§_-0CX§);
                        }
                        §§pop().§_-Sz§(§§pop());
                        loop1:
                        while(true)
                        {
                           §§push(param2);
                           loop2:
                           while(true)
                           {
                              §§push(§_-tW§.§for §);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!(_loc8_ && param2))
                                                {
                                                   §§push(§_-tW§.§_-h4§);
                                                   if(_loc7_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop2;
                                             }
                                             return;
                                          }
                                          addr67:
                                          continue loop1;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    addr171:
                                    while(!_loc8_)
                                    {
                                       §§push(param2);
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     addr193:
                  }
                  §§goto(addr114);
               }
               §§goto(addr51);
            }
            §§goto(addr193);
         }
         §§goto(addr51);
      }
      
      private function §_-00r§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§_-06V§ = null;
         var _loc4_:§_-06V§ = null;
         if(!(_loc5_ && param1))
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(param1.keyCode);
                                    if(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(15);
                                       if(_loc6_ || this)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param1.keyCode);
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§_-09Q§);
                                                   addr192:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                             }
                                             addr506:
                                             addr505:
                                             if(§§pop() == 16)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop4;
                                                }
                                             }
                                             addr516:
                                             return;
                                             addr188:
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                this.§_-09Q§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                if(!_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(this.§_-0J§);
                                                   loop10:
                                                   while(_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop11:
                                                      for(; !(_loc5_ && this); if(_loc5_ && _loc3_)
                                                      {
                                                         continue;
                                                      },if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      },§§goto(addr83))
                                                      {
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop13:
                                                               while(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     addr65:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr105:
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     addr56:
                                                                     §§goto(addr516);
                                                                     if(!(_loc6_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr65);
                                                                     }
                                                                     _loc3_ = this.§_-hq§(0);
                                                                     _loc4_ = this.§_-hq§(1);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr494:
                                                                           this.§_-5-§.§_-Ze§(_loc3_.globalX,_loc3_.globalY);
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           addr488:
                                                                           §§push(§§pop() && _loc4_);
                                                                           if(§§pop() && _loc4_)
                                                                           {
                                                                              addr465:
                                                                              §§pop();
                                                                              addr466:
                                                                              §§push(_loc4_.phase == §_-tW§.§_-0Cc§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr443:
                                                                                    addr442:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr444:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       this.§_-Hz§.unshift([1,§_-tW§.§_-0Cc§,_loc4_.globalX,_loc4_.globalY]);
                                                                                       addr502:
                                                                                       §§goto(addr516);
                                                                                       addr457:
                                                                                    }
                                                                                    addr396:
                                                                                    §§push(this.§_-09Q§);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       addr404:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr413:
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr421:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr328:
                                                                                                      §§push(Boolean(_loc3_));
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         addr335:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  addr348:
                                                                                                                  §§push(_loc3_.phase);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     addr357:
                                                                                                                     §§push(§_-tW§.§_-h4§);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr360:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr380:
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr383:
                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr269:
                                                                                                                                             §§push(_loc3_.phase);
                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§_-tW§.§_-Ua§);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr302:
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  this.§_-Hz§.unshift([1,§_-tW§.§for §,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              addr267:
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr269);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr502);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr466);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr421);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr383);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr502);
                                                                                                                                                                  addr324:
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc5_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  this.§_-Hz§.unshift([1,§_-tW§.§_-h4§,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr324);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr404);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr328);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr360);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr380);
                                                                                                                                                }
                                                                                                                                                §§goto(addr357);
                                                                                                                                             }
                                                                                                                                             §§goto(addr348);
                                                                                                                                          }
                                                                                                                                          §§goto(addr494);
                                                                                                                                       }
                                                                                                                                       §§goto(addr488);
                                                                                                                                    }
                                                                                                                                    §§goto(addr302);
                                                                                                                                 }
                                                                                                                                 §§goto(addr488);
                                                                                                                              }
                                                                                                                              §§goto(addr404);
                                                                                                                           }
                                                                                                                           §§goto(addr490);
                                                                                                                        }
                                                                                                                        §§goto(addr396);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                               §§goto(addr457);
                                                                                                            }
                                                                                                            §§goto(addr383);
                                                                                                         }
                                                                                                         §§goto(addr502);
                                                                                                      }
                                                                                                      §§goto(addr413);
                                                                                                   }
                                                                                                   §§goto(addr494);
                                                                                                }
                                                                                                §§goto(addr444);
                                                                                             }
                                                                                             §§goto(addr443);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr465);
                                                                                 }
                                                                                 §§goto(addr488);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr442);
                                                                        }
                                                                        §§goto(addr490);
                                                                     }
                                                                     §§goto(addr267);
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§push(this.§_-5-§);
                                                               while(true)
                                                               {
                                                                  §§pop().visible = this.§_-09Q§;
                                                                  if(_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                            }
                                                            §§goto(addr444);
                                                            addr83:
                                                            §§push(this.§_-09Q§);
                                                            if(!(_loc6_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_ && param1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            §§goto(addr105);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr192);
                                                }
                                                break loop4;
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr506);
                                    }
                                    §§goto(addr505);
                                 }
                                 addr204:
                              }
                              break;
                           }
                           this.§_-Ri§ = param1.type == KeyboardEvent.KEY_DOWN;
                           §§goto(addr506);
                        }
                        §§goto(addr188);
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      private function §_-Rf§(param1:§_-06V§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§_-06V§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§_-06V§ = null;
         §§push(§_-SA§);
         if(_loc9_)
         {
            §§push(§§pop() * §_-SA§);
            if(_loc9_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§_-062§)
         {
            if(!(_loc8_ && this))
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_)
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
         if(!(_loc8_ && this))
         {
            if(!_loc2_)
            {
               param1.§_-p9§(1);
               while(true)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§_-062§.push(param1.clone());
                        if(!_loc9_)
                        {
                           break;
                        }
                        if(!(_loc8_ && _loc2_))
                        {
                           return;
                        }
                        addr164:
                        loop3:
                        while(_loc8_)
                        {
                           while(true)
                           {
                              param1.§_-p9§(_loc2_.§_-Y3§ + 1);
                              continue loop3;
                           }
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     this.§_-062§.splice(this.§_-062§.indexOf(_loc2_),1);
                     §§goto(addr164);
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      private function §_-05-§(param1:§_-06V§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§_-0P§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           this.§_-0P§.push(param1);
                           addr58:
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        addr98:
                        this.§_-0P§.splice(_loc2_,1);
                     }
                     addr76:
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        addr86:
                        _loc2_ = §§pop() - 1;
                        continue;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr58);
               }
               else if(this.§_-0P§[_loc2_].id == param1.id)
               {
                  §§goto(addr98);
               }
               §§goto(addr76);
            }
            §§goto(addr86);
         }
      }
      
      private function §_-hq§(param1:int) : §_-06V§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-06V§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§_-0P§;
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
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §_-0J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-5-§ == null);
         if(!(_loc1_ && this))
         {
            return !§§pop();
         }
      }
      
      public function set §_-0J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§_-0J§ != param1)
            {
               return;
            }
         }
      }
   }
}
