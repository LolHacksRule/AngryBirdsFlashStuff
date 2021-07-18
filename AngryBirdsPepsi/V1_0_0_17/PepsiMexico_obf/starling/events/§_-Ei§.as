package starling.events
{
   import §_-LP§.DisplayObject;
   import §_-LP§.Stage;
   import flash.geom.Point;
   
   public class §_-Ei§
   {
      
      private static const §_-zg§:Number = 0.3;
      
      private static const §_-1i§:Number = 25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-zg§ = 0.3;
            if(!(_loc1_ && _loc1_))
            {
               §_-1i§ = 25;
            }
         }
      }
      
      private var mStage:Stage;
      
      private var §_-QF§:Number;
      
      private var §_-87§:§_-Uf§;
      
      private var §_-2-§:Vector.<§_-aG§>;
      
      private var §_-FG§:Vector.<Array>;
      
      private var §_-RD§:Vector.<§_-aG§>;
      
      private var §_-A2§:Boolean = false;
      
      private var §_-FX§:Boolean = false;
      
      public function §_-Ei§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.mStage = param1;
         if(!(_loc3_ && param1))
         {
            this.§_-QF§ = 0;
            this.§_-2-§ = new Vector.<§_-aG§>(0);
         }
         this.§_-FG§ = new Vector.<Array>(0);
         this.§_-RD§ = new Vector.<§_-aG§>(0);
         §§push(this.mStage);
         if(_loc2_)
         {
            §§push(KeyboardEvent.KEY_DOWN);
            if(_loc2_ || param1)
            {
               §§pop().addEventListener(§§pop(),this.§_-6E§);
               addr84:
               §§push(this.mStage);
               §§push(KeyboardEvent.KEY_UP);
            }
            §§pop().addEventListener(§§pop(),this.§_-6E§);
            return;
         }
         §§goto(addr84);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mStage);
            if(_loc1_)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§_-6E§);
                  if(!_loc2_)
                  {
                     addr39:
                     this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-6E§);
                     if(!_loc2_)
                     {
                        addr44:
                        §§push(this.§_-87§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 addr70:
                                 this.§_-87§.dispose();
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || this)
         {
            §§pop().§§slot[3] = null;
            §§push(§§newactivation());
            §§push(0);
            if(_loc5_ || param1)
            {
               §§pop().§§slot[4] = §§pop();
               if(!_loc6_)
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     §§pop().§§slot[5] = null;
                     if(_loc5_)
                     {
                        §§push(§§newactivation());
                        §§push(null);
                        if(_loc5_ || _loc3_)
                        {
                           §§pop().§§slot[6] = §§pop();
                           §§push(§§newactivation());
                           §§push(null);
                        }
                        §§pop().§§slot[7] = §§pop();
                        if(_loc5_)
                        {
                           addr67:
                           var i:int = 0;
                           addr68:
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              §§pop().§§slot[9] = null;
                              §§push(§§newactivation());
                              §§push(null);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§pop().§§slot[10] = §§pop();
                                 addr85:
                                 §§push(§§newactivation());
                                 §§push(null);
                              }
                              §§pop().§§slot[11] = §§pop();
                              if(_loc5_)
                              {
                                 addr92:
                                 §§push(§§newactivation());
                                 §§push(param1);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    addr101:
                                    §§push(§§newactivation());
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       addr105:
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().§§slot[2] = §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       if(this.§_-RD§.length > 0)
                                       {
                                          addr119:
                                          this.§_-RD§ = this.§_-RD§.filter(function(param1:§_-aG§, ... rest):Boolean
                                          {
                                             return §_-QF§ + passedTime - param1.timestamp <= §_-zg§;
                                          });
                                       }
                                       loop0:
                                       while(this.§_-FG§.length > 0)
                                       {
                                          var processedTouchIDs:Vector.<int> = new Vector.<int>(0);
                                          if(!_loc6_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_ || param1)
                                             {
                                                §§push(null);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      addr160:
                                                      var hoverTarget:DisplayObject = null;
                                                   }
                                                   §§push(§§newactivation());
                                                   if(_loc5_)
                                                   {
                                                      addr165:
                                                      §§push(this.§_-2-§.length - 1);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc6_)
                                                         {
                                                            §§pop().§§slot[8] = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(i);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= 0)
                                                                        {
                                                                           var currentTouch:§_-aG§ = this.§_-2-§[i];
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§push(§§pop().§§slot[9]);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(§§pop().phase);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§_-5K§.§_-qP§);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[9]);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§pop().§_-RP§(§_-5K§.§_-CC§);
                                                                                                   addr242:
                                                                                                   §§push(currentTouch);
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      addr251:
                                                                                                      §§push(§§pop().target);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(§§pop().stage == null)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr259:
                                                                                                               var target:DisplayObject = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                                                                                                               §§push(§§newactivation());
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop().§§slot[10] != null)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[8]);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              i = §§pop();
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              addr414:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[5]);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[6] = §§pop();
                                                                                                                                       addr510:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr436:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§§slot[5]);
                                                                                                                                                addr437:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().§§slot[7] = §§pop().target;
                                                                                                                                                   addr440:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§_-3S§.apply(this,touchArgs);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§§slot[3].push(touchID);
                                                                                                                                                         break loop1;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr436:
                                                                                                                                          }
                                                                                                                                          addr613:
                                                                                                                                          §§push(§§pop().§§slot[2]);
                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + 0.00001);
                                                                                                                                             if(_loc6_ && param1)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr631:
                                                                                                                                             §§pop().§§slot[2] = §§pop();
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§_-QF§);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 0.00001);
                                                                                                                                             }
                                                                                                                                             §§pop().§_-QF§ = §§pop();
                                                                                                                                             if(!(_loc5_ || this))
                                                                                                                                             {
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          §§goto(addr631);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       if(§§pop().§§slot[6].target != hoverTarget)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr526);
                                                                                                                                          }
                                                                                                                                          §§goto(addr612);
                                                                                                                                       }
                                                                                                                                       §§goto(addr539);
                                                                                                                                    }
                                                                                                                                    §§goto(addr437);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr449);
                                                                                                                              §§goto(addr301);
                                                                                                                           }
                                                                                                                           addr289:
                                                                                                                        }
                                                                                                                        §§push(§§pop().§§slot[9]);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§_-Lb§(target);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                           }
                                                                                                                           §§goto(addr242);
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr329:
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  this.§_-2-§.splice(i,1);
                                                                                                                  §§goto(addr301);
                                                                                                                  §§goto(addr301);
                                                                                                                  §§goto(addr259);
                                                                                                               }
                                                                                                               addr275:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-FG§.length > 0);
                                                                                                               §§push(this.§_-FG§.length > 0);
                                                                                                               if(!(_loc5_ || _loc2_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           addr491:
                                                                                                                           if(§§pop().§§slot[3].indexOf(this.§_-FG§[this.§_-FG§.length - 1][0]) != -1)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[7]);
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       addr506:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       break loop5;
                                                                                                                                    }
                                                                                                                                    addr526:
                                                                                                                                    §§pop().§§slot[7].dispatchEvent(new TouchEvent(TouchEvent.§_-AT§,this.§_-2-§,this.§_-A2§,this.§_-FX§));
                                                                                                                                    §§goto(addr525);
                                                                                                                                 }
                                                                                                                                 addr525:
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr540:
                                                                                                                                    var _loc3_:int = 0;
                                                                                                                                    addr539:
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       var _loc4_:* = processedTouchIDs;
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       while(§§hasnext(_loc4_,_loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§pop().§§slot[4] = int(§§nextvalue(_loc3_,_loc4_));
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[5] = this.§_-11§(touchID);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§pop().§§slot[5].target.dispatchEvent(new TouchEvent(TouchEvent.§_-AT§,this.§_-2-§,this.§_-A2§,this.§_-FX§));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    this.§_-2-§ = this.§_-2-§.filter(function(param1:§_-aG§, ... rest):Boolean
                                                                                                                                    {
                                                                                                                                       return param1.phase != §_-5K§.§_-an§;
                                                                                                                                    });
                                                                                                                                    if(this.§_-FG§.length == 0)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    addr612:
                                                                                                                                    §§goto(addr613);
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().§§slot[11] = this.§_-FG§.pop();
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop().§§slot[11][0] as int));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[4] = §§pop();
                                                                                                                                       var touch:§_-aG§ = this.§_-11§(touchID);
                                                                                                                                       §§push(touch);
                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       addr405:
                                                                                                                                       addr402:
                                                                                                                                       if(§§pop().phase == §_-5K§.§_-d2§)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr414);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr440);
                                                                                                                                    }
                                                                                                                                    §§goto(addr506);
                                                                                                                                    addr363:
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr510);
                                                                                                                           }
                                                                                                                           §§goto(addr510);
                                                                                                                        }
                                                                                                                        §§goto(addr612);
                                                                                                                     }
                                                                                                                     addr509:
                                                                                                                     §§goto(addr510);
                                                                                                                     §§push(§§newactivation());
                                                                                                                  }
                                                                                                                  §§goto(addr491);
                                                                                                               }
                                                                                                               §§goto(addr449);
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr509);
                                                                                                            }
                                                                                                            §§goto(addr510);
                                                                                                         }
                                                                                                         §§goto(addr301);
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                   §§goto(addr289);
                                                                                                }
                                                                                                §§goto(addr251);
                                                                                             }
                                                                                             §§goto(addr510);
                                                                                          }
                                                                                          §§goto(addr242);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr405);
                                                                                 }
                                                                                 §§goto(addr251);
                                                                              }
                                                                              §§goto(addr612);
                                                                           }
                                                                           §§goto(addr631);
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr631);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr540);
                                       }
                                       §§push(this);
                                       §§push(this.§_-QF§);
                                       if(!_loc6_)
                                       {
                                          §§push(passedTime);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() - additionalTime);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§_-QF§ = §§pop();
                                       §§goto(addr526);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr68);
            }
            §§goto(addr67);
         }
         §§goto(addr92);
      }
      
      public function §_-W5§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.§_-FG§.unshift(arguments);
         §§push(this.§_-FX§);
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         §§push(§§pop());
         if(!(_loc6_ && param1))
         {
            if(§§pop())
            {
               §§pop();
               if(!_loc6_)
               {
                  §§push(this.include);
                  if(_loc7_ || param3)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc6_)
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr88);
            }
            addr54:
            §§goto(addr55);
         }
         addr55:
         if(§§pop())
         {
            if(_loc7_ || param2)
            {
               addr63:
               §§pop();
               §§push(param1 == 0);
            }
         }
         if(§§pop())
         {
            if(_loc7_ || param3)
            {
               this.§_-87§.§_-ee§(param3,param4,this.§_-A2§);
               if(!_loc6_)
               {
                  if(param2 != §_-5K§.§_-d2§)
                  {
                     this.§_-FG§.unshift([1,param2,this.§_-87§.§_-15§,this.§_-87§.§_-AU§]);
                     addr88:
                  }
               }
            }
            §§goto(addr88);
         }
      }
      
      private function §_-3S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-aG§ = this.§_-11§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-Iz§(param1);
               if(!_loc8_)
               {
                  §§goto(addr151);
               }
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-aG§(param1,param3,param4,param2,_loc7_);
            if(_loc8_ || param1)
            {
               this.§_-au§(_loc6_);
            }
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-RP§(param2);
         _loc6_.§_-vL§(this.§_-QF§);
         if(_loc8_ || param3)
         {
            §§push(param2);
            if(_loc8_)
            {
               §§push(§_-5K§.§_-d2§);
               if(_loc8_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc9_ && param2))
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || param2)
                        {
                           §§pop();
                           if(!(_loc9_ && this))
                           {
                              §§push(param2);
                              if(!_loc9_)
                              {
                                 §§goto(addr150);
                              }
                              addr148:
                              addr150:
                              §§push(§_-5K§.§_-RF§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() == §§pop());
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr151);
                              }
                              addr151:
                              this.§_-cG§(_loc6_);
                              return;
                              §§push(§_-5K§.§_-RF§);
                           }
                           §§goto(addr151);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     _loc6_.§_-Lb§(_loc7_);
                     if(!(_loc9_ && param2))
                     {
                        addr147:
                        §§goto(addr148);
                        §§push(param2);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr147);
               }
               §§goto(addr150);
            }
            §§goto(addr148);
         }
         §§goto(addr151);
      }
      
      private function §_-6E§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§_-aG§ = null;
         var _loc4_:§_-aG§ = null;
         §§push(param1.keyCode);
         if(_loc5_)
         {
            §§push(17);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  §§push(this.§_-FX§);
                  if(!(_loc6_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc2_ = §§pop();
                  this.§_-FX§ = param1.type == KeyboardEvent.KEY_DOWN;
                  §§push(Boolean(this.include));
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && this))
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    addr81:
                                    addr79:
                                    §§push(§§pop() == this.§_-FX§);
                                    if(_loc6_)
                                    {
                                    }
                                    addr85:
                                    if(§§pop())
                                    {
                                       §§push(this.§_-87§);
                                       if(_loc5_)
                                       {
                                          §§pop().visible = this.§_-FX§;
                                          if(!(_loc6_ && param1))
                                          {
                                             addr100:
                                             §§push(this.§_-87§);
                                          }
                                          else
                                          {
                                             addr327:
                                             this.§_-A2§ = param1.type == KeyboardEvent.KEY_DOWN;
                                             §§goto(addr334);
                                          }
                                          §§goto(addr334);
                                       }
                                       §§pop().§_-2B§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
                                       if(_loc5_)
                                       {
                                          _loc3_ = this.§_-11§(0);
                                          _loc4_ = this.§_-11§(1);
                                          if(!_loc6_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc5_)
                                                {
                                                   this.§_-87§.§_-ee§(_loc3_.globalX,_loc3_.globalY);
                                                }
                                                §§goto(addr313);
                                             }
                                             §§push(Boolean(_loc2_));
                                             §§push(Boolean(_loc2_));
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr158:
                                                         §§push(Boolean(_loc4_));
                                                         §§push(Boolean(_loc4_));
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc4_.phase);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(§_-5K§.§_-an§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     addr190:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr193:
                                                                           this.§_-FG§.unshift([1,§_-5K§.§_-an§,_loc4_.globalX,_loc4_.globalY]);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr313);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr259:
                                                                              §§push(_loc3_.phase);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§_-5K§.§_-an§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr283:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             addr290:
                                                                                             §§push(_loc3_.phase == §_-5K§.§_-d2§);
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                addr298:
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                        }
                                                                        this.§_-FG§.unshift([1,§_-5K§.§_-RF§,this.§_-87§.§_-15§,this.§_-87§.§_-AU§]);
                                                                        §§goto(addr313);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Boolean(this.§_-FX§));
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              addr226:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(Boolean(_loc3_));
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr240:
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          addr248:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr259);
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      addr313:
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr193);
                                       }
                                       addr334:
                                       return;
                                    }
                                    §§goto(addr313);
                                 }
                                 §§goto(addr85);
                                 §§push(!§§pop());
                              }
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr79);
               }
               else
               {
                  addr317:
                  if(param1.keyCode == 16)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr327);
                     }
                  }
               }
               §§goto(addr327);
            }
         }
         §§goto(addr317);
      }
      
      private function §_-cG§(param1:§_-aG§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§_-aG§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§_-aG§ = null;
         §§push(§_-1i§);
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() * §_-1i§);
            if(_loc9_)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§_-RD§)
            {
               if(!(_loc8_ && _loc2_))
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
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
            if(_loc9_)
            {
               if(_loc2_)
               {
                  if(!(_loc8_ && this))
                  {
                     param1.§_-xv§(_loc2_.§_-Y7§ + 1);
                     if(_loc8_)
                     {
                     }
                     §§goto(addr154);
                  }
                  this.§_-RD§.splice(this.§_-RD§.indexOf(_loc2_),1);
                  if(!_loc8_)
                  {
                     addr149:
                     this.§_-RD§.push(param1.clone());
                  }
               }
               else
               {
                  param1.§_-xv§(1);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§goto(addr149);
                  }
               }
            }
            addr154:
            return;
         }
         §§goto(addr34);
      }
      
      private function §_-au§(param1:§_-aG§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var touch:§_-aG§ = param1;
         if(!(_loc4_ && _loc3_))
         {
            this.§_-2-§ = this.§_-2-§.filter(function(param1:§_-aG§, ... rest):Boolean
            {
               return param1.id != touch.id;
            });
            if(_loc3_ || _loc2_)
            {
               addr54:
               this.§_-2-§.push(touch);
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §_-11§(param1:int) : §_-aG§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-aG§ = null;
         for each(_loc2_ in this.§_-2-§)
         {
            if(_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private function §_-Iz§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-aG§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-2-§.length)
         {
            _loc3_ = this.§_-2-§[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.id == param1)
               {
                  if(_loc4_)
                  {
                     this.§_-2-§.splice(_loc2_,1);
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      public function get include() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-87§ == null);
         if(_loc2_ || _loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function set include(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.include);
         if(!_loc2_)
         {
            if(§§pop() == param1)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               addr24:
               if(param1)
               {
                  this.§_-87§ = new §_-Uf§();
                  if(!_loc2_)
                  {
                     §§push(this.§_-87§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           §§pop().visible = §§pop();
                           if(_loc3_ || this)
                           {
                              this.mStage.addChild(this.§_-87§);
                              if(_loc2_ && _loc3_)
                              {
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        addr80:
                        §§push(true);
                     }
                     §§pop().§_-Lh§(§§pop());
                     if(_loc2_)
                     {
                     }
                     §§goto(addr87);
                  }
                  this.§_-87§ = null;
                  §§goto(addr87);
               }
               else
               {
                  §§push(this.§_-87§);
               }
               §§goto(addr80);
            }
            addr87:
            return;
         }
         §§goto(addr24);
      }
   }
}
