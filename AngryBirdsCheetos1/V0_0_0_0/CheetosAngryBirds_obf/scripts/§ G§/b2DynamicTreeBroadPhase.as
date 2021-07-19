package § G§
{
   import §9"§.*;
   
   public class b2DynamicTreeBroadPhase implements §3!>§
   {
       
      
      private var §?Z§:b2DynamicTree;
      
      private var §=!O§:int;
      
      private var §9v§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?Z§ = new b2DynamicTree();
            loop0:
            while(true)
            {
               this.§9v§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  while(!_loc1_)
                  {
                     continue loop0;
                     super();
                     if(_loc2_ || _loc1_)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §7=§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§?Z§.§7=§(param1,param2);
         if(!(_loc6_ && _loc3_))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§=!O§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               _loc4_.§=!O§ = _loc5_;
            }
            if(!(_loc6_ && param1))
            {
               addr78:
               this.§-!,§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr78);
      }
      
      public function §'!F§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.dynamic(param1);
            if(_loc5_ || this)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§=!O§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§=!O§ = _loc3_;
               }
               if(!_loc4_)
               {
                  addr66:
                  this.§?Z§.§'!F§(param1);
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §]!T§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§?Z§.§]!T§(param1,param2,param3));
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!_loc6_)
            {
               this.§-!,§(param1);
            }
         }
      }
      
      public function §;!4§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?Z§.§^y§(param1);
         var _loc4_:b2AABB = this.§?Z§.§^y§(param2);
         return _loc3_.§;!4§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?Z§.GetUserData(param1);
      }
      
      public function §^y§(param1:*) : b2AABB
      {
         return this.§?Z§.§^y§(param1);
      }
      
      public function §1[§() : int
      {
         return this.§=!O§;
      }
      
      public function §,!<§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     addr150:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     loop8:
                     for(; !(_loc5_ && _loc2_); while(_loc6_ || _loc3_)
                     {
                        §§goto(addr111);
                        §§push(undefined);
                        §§goto(addr59);
                     })
                     {
                        §§push(null);
                        loop9:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop8;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().§§slot[5] = §§pop();
                                 addr145:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                              addr143:
                           }
                           addr66:
                           §§push(null);
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           §§pop().§§slot[9] = §§pop();
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       loop14:
                                       while(!_loc5_)
                                       {
                                          addr81:
                                          §§push(undefined);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§pop().§§slot[8] = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr59:
                                                      break;
                                                      addr59:
                                                   }
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      if(_loc5_ && this)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr66);
                                                   }
                                                   continue loop9;
                                                }
                                                addr35:
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   break loop18;
                                                }
                                                if(false)
                                                {
                                                   continue loop18;
                                                }
                                                var _loc3_:int = 0;
                                                var _loc4_:* = this.§9v§;
                                                addr223:
                                                if(§§hasnext(_loc4_,_loc3_))
                                                {
                                                   addr217:
                                                   var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                                   addr222:
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().§§slot[4] = function(param1:b2DynamicTreeNode):Boolean
                                                      {
                                                         if(param1 == queryProxy)
                                                         {
                                                            return true;
                                                         }
                                                         if(m_pairCount == m_pairBuffer.length)
                                                         {
                                                            m_pairBuffer[m_pairCount] = new b2DynamicTreePair();
                                                         }
                                                         var _loc2_:b2DynamicTreePair = m_pairBuffer[m_pairCount];
                                                         _loc2_.§;!?§ = param1 < queryProxy ? param1 : queryProxy;
                                                         _loc2_.§&z§ = param1 >= queryProxy ? param1 : queryProxy;
                                                         ++m_pairCount;
                                                         return true;
                                                      };
                                                      addr180:
                                                      addr213:
                                                      §§push(§§newactivation());
                                                      if(_loc6_ || this)
                                                      {
                                                         §§pop().§§slot[5] = this.§?Z§.§^y§(queryProxy);
                                                         addr196:
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               this.§?Z§.§;!@§(QueryCallback,fatAABB);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr180);
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   this.§9v§.length = 0;
                                                   addr545:
                                                   var i:int = 0;
                                                   addr547:
                                                   addr552:
                                                   §§push(§§newactivation());
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr323:
                                                         §§push(§§pop().§§slot[3]);
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr331:
                                                                  if(§§pop() >= this.m_pairCount)
                                                                  {
                                                                     addr332:
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr547);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr467:
                                                                        i++;
                                                                        addr480:
                                                                        addr469:
                                                                        addr464:
                                                                        addr465:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(§§pop().§§slot[3]);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(this.m_pairCount);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   addr386:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      addr520:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         addr514:
                                                                                                         §§push(this.§?Z§);
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[6]);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§&z§);
                                                                                                                  addr472:
                                                                                                                  callback(userDataA,userDataB);
                                                                                                                  §§goto(addr480);
                                                                                                                  addr509:
                                                                                                               }
                                                                                                               addr516:
                                                                                                               §§pop().§§slot[7] = §§pop().GetUserData(§§pop().§;!?§);
                                                                                                               §§goto(addr520);
                                                                                                            }
                                                                                                            addr515:
                                                                                                            §§goto(addr516);
                                                                                                            §§push(§§pop().§§slot[6]);
                                                                                                         }
                                                                                                         §§goto(addr515);
                                                                                                         §§push(§§newactivation());
                                                                                                      }
                                                                                                      §§goto(addr514);
                                                                                                      §§push(this.§?Z§);
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr388:
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr443:
                                                                                                         §§push(§§pop().§§slot[9].§;!?§ != primaryPair.§;!?§);
                                                                                                         if(!(§§pop().§§slot[9].§;!?§ != primaryPair.§;!?§))
                                                                                                         {
                                                                                                            addr446:
                                                                                                            §§pop();
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[9]);
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§&z§ == primaryPair.§&z§);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              addr384:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr386);
                                                                                                                              }
                                                                                                                              addr390:
                                                                                                                              §§push(i + 1);
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop().§§slot[3] = §§pop();
                                                                                                                                 addr402:
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr480);
                                                                                                                                          }
                                                                                                                                          §§goto(addr552);
                                                                                                                                       }
                                                                                                                                       §§goto(addr520);
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       addr532:
                                                                                                                                    }
                                                                                                                                    §§goto(addr509);
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                              }
                                                                                                                              §§goto(addr467);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr443);
                                                                                                               }
                                                                                                               §§goto(addr520);
                                                                                                            }
                                                                                                            §§goto(addr390);
                                                                                                            addr447:
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr545);
                                                                                                   }
                                                                                                   §§goto(addr464);
                                                                                                   addr461:
                                                                                                }
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          addr452:
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop().§§slot[9] = this.m_pairBuffer[i];
                                                                                             §§goto(addr461);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr465);
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr384);
                                                                        }
                                                                        §§goto(addr545);
                                                                        addr466:
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  addr525:
                                                                  var primaryPair:b2DynamicTreePair = this.m_pairBuffer[i];
                                                                  §§goto(addr532);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr525);
                                                   }
                                                   §§goto(addr452);
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr150);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                §§goto(addr81);
                                             }
                                             addr111:
                                          }
                                          while(_loc6_)
                                          {
                                             §§push(§§newactivation());
                                             continue loop14;
                                          }
                                          §§goto(addr132);
                                       }
                                       continue loop0;
                                    }
                                    §§pop().§§slot[1] = param1;
                                    while(!_loc5_)
                                    {
                                       this.m_pairCount = 0;
                                       if(!_loc5_)
                                       {
                                          continue loop17;
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr59);
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §;!@§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§?Z§.§;!@§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§?Z§.RayCast(param1,param2);
         }
      }
      
      public function §;g§() : void
      {
      }
      
      public function §`!8§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§?Z§.§`!8§(param1);
         }
      }
      
      private function §-!,§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9v§[this.§9v§.length] = param1;
         }
      }
      
      private function dynamic(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§9v§.indexOf(param1);
         if(_loc4_ || param1)
         {
            this.§9v§.splice(_loc2_,1);
         }
      }
      
      private function §6e§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
