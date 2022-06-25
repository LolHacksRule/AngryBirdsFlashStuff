package §'s§
{
   import §&L§.*;
   
   public class b2DynamicTreeBroadPhase implements §8!b§
   {
       
      
      private var §<r§:b2DynamicTree;
      
      private var §&!O§:int;
      
      private var §?!8§:Vector.<b2DynamicTreeNode>;
      
      private var §9W§:Vector.<b2DynamicTreePair>;
      
      private var §?!E§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<r§ = new b2DynamicTree();
            do
            {
               this.§?!8§ = new Vector.<b2DynamicTreeNode>();
               do
               {
                  this.§9W§ = new Vector.<b2DynamicTreePair>();
                  do
                  {
                     super();
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §6K§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§<r§.§6K§(param1,param2);
         if(_loc6_ || param1)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§&!O§);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§&!O§ = _loc5_;
            }
            if(_loc6_ || this)
            {
               this.§5!U§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §[!3§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§>!P§(param1);
            if(!(_loc4_ && _loc3_))
            {
               addr40:
               var _loc2_:*;
               §§push((_loc2_ = this).§&!O§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_.§&!O§ = _loc3_;
               }
               if(_loc5_ || this)
               {
                  this.§<r§.§[!3§(param1);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §]O§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§<r§.§]O§(param1,param2,param3));
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param1)
         {
            if(_loc4_)
            {
               if(!_loc6_)
               {
                  addr47:
                  this.§5!U§(param1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §@w§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<r§.§%!A§(param1);
         var _loc4_:b2AABB = this.§<r§.§%!A§(param2);
         return _loc3_.§@w§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<r§.GetUserData(param1);
      }
      
      public function §%!A§(param1:*) : b2AABB
      {
         return this.§<r§.§%!A§(param1);
      }
      
      public function §8!0§() : int
      {
         return this.§&!O§;
      }
      
      public function dynamic(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(!_loc6_)
                        {
                           §§push(null);
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr154:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop0;
                              }
                           }
                           addr65:
                           if(!(_loc6_ && _loc3_))
                           {
                              addr72:
                              §§push(null);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop().§§slot[9] = §§pop();
                                 loop17:
                                 while(true)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             §§pop().§§slot[1] = param1;
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop17;
                                             }
                                             loop13:
                                             while(_loc5_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(undefined);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§pop().§§slot[8] = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         addr56:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr58:
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§goto(addr65);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(undefined);
                                                                     break loop14;
                                                                  }
                                                                  break;
                                                                  §§goto(addr58);
                                                               }
                                                               continue loop0;
                                                               addr112:
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr109:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop().§§slot[7] = §§pop();
                                                   continue loop13;
                                                   §§goto(addr99);
                                                }
                                                addr99:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr112);
                                                §§goto(addr117);
                                             }
                                             addr117:
                                             addr146:
                                          }
                                          §§goto(addr56);
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          var _loc3_:int = 0;
                                          var _loc4_:* = this.§?!8§;
                                          addr223:
                                          if(§§hasnext(_loc4_,_loc3_))
                                          {
                                             addr217:
                                             var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                             addr222:
                                             §§push(§§newactivation());
                                             if(!_loc6_)
                                             {
                                                §§pop().§§slot[4] = function(param1:b2DynamicTreeNode):Boolean
                                                {
                                                   if(param1 == queryProxy)
                                                   {
                                                      return true;
                                                   }
                                                   if(§?!E§ == §9W§.length)
                                                   {
                                                      §9W§[§?!E§] = new b2DynamicTreePair();
                                                   }
                                                   var _loc2_:b2DynamicTreePair = §9W§[§?!E§];
                                                   _loc2_.§5A§ = param1 < queryProxy ? param1 : queryProxy;
                                                   _loc2_.§"T§ = param1 >= queryProxy ? param1 : queryProxy;
                                                   ++§?!E§;
                                                   return true;
                                                };
                                                addr189:
                                                addr213:
                                                §§push(§§newactivation());
                                                if(_loc5_ || this)
                                                {
                                                   §§pop().§§slot[5] = this.§<r§.§%!A§(queryProxy);
                                                   this.§<r§.§'!Z§(QueryCallback,fatAABB);
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr189);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   addr205:
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr217);
                                          }
                                          if(_loc5_ || _loc3_)
                                          {
                                             this.§?!8§.length = 0;
                                             addr550:
                                             §§push(§§newactivation());
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             §§pop().§§slot[3] = §§pop();
                                             addr289:
                                             addr555:
                                             addr560:
                                             §§push(§§newactivation());
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_)
                                                {
                                                   addr301:
                                                   §§push(§§pop().§§slot[3]);
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr314:
                                                            if(§§pop() >= this.§?!E§)
                                                            {
                                                               addr315:
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr429:
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr324:
                                                                        §§push(pair);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop().§"T§ == primaryPair.§"T§);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr350:
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr352:
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       addr533:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr491:
                                                                                          §§push(§§newactivation());
                                                                                          §§push(this.§<r§);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[6]);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§"T§);
                                                                                                   addr510:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr480:
                                                                                                      callback(userDataA,userDataB);
                                                                                                      addr458:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr473:
                                                                                                               var i:int = §§pop().§§slot[3] + 1;
                                                                                                               addr475:
                                                                                                               addr471:
                                                                                                               addr472:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr235:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[3]);
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 §§push(this.§?!E§);
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr289);
                                                                                                                                             }
                                                                                                                                             addr397:
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr400:
                                                                                                                                                §§push(§§pop().§§slot[9].§5A§ == primaryPair.§5A§);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(_loc6_ && this)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr428:
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr429);
                                                                                                                                                }
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr428);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr350);
                                                                                                                                                }
                                                                                                                                                §§goto(addr428);
                                                                                                                                             }
                                                                                                                                             addr540:
                                                                                                                                             §§pop().§§slot[6] = this.§9W§[i];
                                                                                                                                             var userDataA:* = this.§<r§.GetUserData(primaryPair.§5A§);
                                                                                                                                             §§goto(addr533);
                                                                                                                                             addr455:
                                                                                                                                             addr547:
                                                                                                                                          }
                                                                                                                                          addr392:
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr394:
                                                                                                                                             §§goto(addr235);
                                                                                                                                          }
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                       §§goto(addr315);
                                                                                                                                    }
                                                                                                                                    addr441:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[9] = this.§9W§[i];
                                                                                                                                       §§goto(addr455);
                                                                                                                                    }
                                                                                                                                    §§goto(addr458);
                                                                                                                                 }
                                                                                                                                 §§goto(addr314);
                                                                                                                              }
                                                                                                                              addr377:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[3] = §§pop();
                                                                                                                                       §§goto(addr392);
                                                                                                                                    }
                                                                                                                                    §§goto(addr473);
                                                                                                                                 }
                                                                                                                                 §§goto(addr471);
                                                                                                                              }
                                                                                                                              §§goto(addr472);
                                                                                                                           }
                                                                                                                           §§goto(addr301);
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     §§goto(addr324);
                                                                                                                  }
                                                                                                                  §§goto(addr289);
                                                                                                               }
                                                                                                               §§goto(addr555);
                                                                                                               addr470:
                                                                                                            }
                                                                                                            §§goto(addr550);
                                                                                                         }
                                                                                                         §§goto(addr397);
                                                                                                      }
                                                                                                      §§goto(addr480);
                                                                                                      addr488:
                                                                                                   }
                                                                                                   §§goto(addr560);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       §§goto(addr547);
                                                                                    }
                                                                                    §§goto(addr488);
                                                                                 }
                                                                                 addr368:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    addr376:
                                                                                    §§goto(addr377);
                                                                                    §§push(§§pop().§§slot[3] + 1);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr510);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            §§goto(addr540);
                                                            §§push(§§newactivation());
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr441);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr394);
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr109);
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[6] = §§pop();
                                    §§goto(addr146);
                                 }
                                 else
                                 {
                                    §§goto(addr152);
                                 }
                              }
                              continue loop1;
                              addr135:
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function §'!Z§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§<r§.§'!Z§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§<r§.RayCast(param1,param2);
         }
      }
      
      public function §5!h§() : void
      {
      }
      
      public function §2x§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<r§.§2x§(param1);
         }
      }
      
      private function §5!U§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!8§[this.§?!8§.length] = param1;
         }
      }
      
      private function §>!P§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§?!8§.indexOf(param1);
         if(_loc3_ || _loc3_)
         {
            this.§?!8§.splice(_loc2_,1);
         }
      }
      
      private function §5x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
