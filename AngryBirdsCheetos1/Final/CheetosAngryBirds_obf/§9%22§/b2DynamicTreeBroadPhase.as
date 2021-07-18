package §9"§
{
   import §0!G§.*;
   
   public class b2DynamicTreeBroadPhase implements §>![§
   {
       
      
      private var §[5§:b2DynamicTree;
      
      private var §2`§:int;
      
      private var §4![§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§[5§ = new b2DynamicTree();
            while(true)
            {
               this.§4![§ = new Vector.<b2DynamicTreeNode>();
               addr54:
               if(!(_loc1_ && this))
               {
                  super();
                  addr61:
                  if(!_loc2_)
                  {
                     while(!_loc1_)
                     {
                        §§goto(addr54);
                        §§goto(addr61);
                     }
                     while(true)
                     {
                        this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                        §§goto(addr52);
                     }
                     addr52:
                     addr79:
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §case§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§[5§.§case§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§2`§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               _loc4_.§2`§ = _loc5_;
            }
            if(_loc7_ || param1)
            {
               this.§<!,§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §^<§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§<q§(param1);
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§2`§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§2`§ = _loc3_;
               }
               if(!_loc4_)
               {
                  addr66:
                  this.§[5§.§^<§(param1);
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §5! §(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§[5§.§5! §(param1,param2,param3));
         if(_loc6_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc5_ && param1))
            {
               this.§<!,§(param1);
            }
         }
      }
      
      public function §[!K§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§[5§.§8!R§(param1);
         var _loc4_:b2AABB = this.§[5§.§8!R§(param2);
         return _loc3_.§[!K§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§[5§.GetUserData(param1);
      }
      
      public function §8!R§(param1:*) : b2AABB
      {
         return this.§[5§.§8!R§(param1);
      }
      
      public function §^n§() : int
      {
         return this.§2`§;
      }
      
      public function §=h§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
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
                        for(; !_loc5_; while(_loc6_ || _loc3_)
                        {
                           §§push(undefined);
                           if(!_loc5_)
                           {
                              §§pop().§§slot[8] = §§pop();
                              §§goto(addr117);
                           }
                           §§goto(addr121);
                           §§goto(addr58);
                        })
                        {
                           §§push(null);
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              loop7:
                              while(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§newactivation());
                                 while(!_loc5_)
                                 {
                                    §§push(null);
                                    continue loop6;
                                    loop16:
                                    for(; _loc6_ || param1; while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue loop16;
                                       }
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       addr65:
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§pop().§§slot[1] = param1;
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr145:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                             }
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §§push(undefined);
                                          addr121:
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             §§goto(addr123);
                                          }
                                          §§goto(addr65);
                                       }
                                    },continue loop5)
                                    {
                                       §§push(null);
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[9] = §§pop();
                                          while(true)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop16;
                                             }
                                             addr117:
                                             while(true)
                                             {
                                                continue loop16;
                                             }
                                             addr33:
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(false)
                                                {
                                                   continue loop16;
                                                }
                                                var _loc3_:int = 0;
                                                var _loc4_:* = this.§4![§;
                                                addr233:
                                                if(§§hasnext(_loc4_,_loc3_))
                                                {
                                                   addr227:
                                                   var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                                   addr220:
                                                   var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
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
                                                      _loc2_.§+X§ = param1 < queryProxy ? param1 : queryProxy;
                                                      _loc2_.§4q§ = param1 >= queryProxy ? param1 : queryProxy;
                                                      ++m_pairCount;
                                                      return true;
                                                   };
                                                   addr190:
                                                   addr232:
                                                   addr223:
                                                   §§push(§§newactivation());
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop().§§slot[5] = this.§[5§.§8!R§(queryProxy);
                                                         addr203:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               this.§[5§.§<§(QueryCallback,fatAABB);
                                                               if(_loc6_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr190);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                if(!_loc5_)
                                                {
                                                   this.§4![§.length = 0;
                                                   addr555:
                                                   var i:int = 0;
                                                   addr310:
                                                   addr562:
                                                   addr557:
                                                   §§push(§§newactivation());
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr320:
                                                      §§push(§§pop().§§slot[3]);
                                                      if(!_loc5_)
                                                      {
                                                         addr324:
                                                         if(§§pop() >= this.m_pairCount)
                                                         {
                                                            addr325:
                                                            if(!(_loc6_ || this))
                                                            {
                                                               addr519:
                                                               var userDataA:* = this.§[5§.GetUserData(primaryPair.§+X§);
                                                               addr523:
                                                               addr542:
                                                               addr515:
                                                               addr518:
                                                               addr517:
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  addr488:
                                                                  §§push(§§newactivation());
                                                                  §§push(this.§[5§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(§§pop().§§slot[6]);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§4q§);
                                                                           addr477:
                                                                           callback(userDataA,userDataB);
                                                                           addr472:
                                                                           i++;
                                                                           addr485:
                                                                           addr512:
                                                                           addr474:
                                                                           addr470:
                                                                           addr469:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§push(§§pop().§§slot[3]);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(this.m_pairCount);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr310);
                                                                                                               }
                                                                                                               §§goto(addr523);
                                                                                                            }
                                                                                                            §§goto(addr485);
                                                                                                         }
                                                                                                         addr400:
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr485);
                                                                                                                  }
                                                                                                                  §§goto(addr512);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            addr421:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               addr434:
                                                                                                               §§push(§§pop().§§slot[9].§+X§ != primaryPair.§+X§);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr439:
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        addr337:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[9]);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§4q§ == primaryPair.§4q§);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          addr371:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             addr378:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr310);
                                                                                                                                                }
                                                                                                                                                §§goto(addr400);
                                                                                                                                             }
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr387:
                                                                                                                                                §§push(§§pop().§§slot[3]);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr390:
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                                                                      §§goto(addr400);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr472);
                                                                                                                                                }
                                                                                                                                                §§goto(addr470);
                                                                                                                                             }
                                                                                                                                             §§goto(addr555);
                                                                                                                                          }
                                                                                                                                          §§goto(addr439);
                                                                                                                                       }
                                                                                                                                       §§goto(addr434);
                                                                                                                                    }
                                                                                                                                    §§goto(addr371);
                                                                                                                                 }
                                                                                                                                 §§goto(addr434);
                                                                                                                              }
                                                                                                                              addr535:
                                                                                                                              §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                                                                                              §§goto(addr542);
                                                                                                                           }
                                                                                                                           §§goto(addr477);
                                                                                                                        }
                                                                                                                        §§goto(addr469);
                                                                                                                     }
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                                  §§goto(addr378);
                                                                                                               }
                                                                                                               §§goto(addr439);
                                                                                                            }
                                                                                                            addr466:
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§pop().§§slot[9] = this.m_pairBuffer[i];
                                                                                                               §§goto(addr466);
                                                                                                            }
                                                                                                            §§goto(addr515);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr466);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr324);
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           §§goto(addr555);
                                                                           addr471:
                                                                        }
                                                                        §§goto(addr519);
                                                                     }
                                                                     §§goto(addr518);
                                                                  }
                                                                  §§goto(addr517);
                                                               }
                                                               §§goto(addr557);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr535);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§goto(addr488);
                                                }
                                                §§goto(addr421);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop5;
                                                }
                                                addr123:
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function §<§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§[5§.§<§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§[5§.RayCast(param1,param2);
         }
      }
      
      public function §!W§() : void
      {
      }
      
      public function §%!>§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[5§.§%!>§(param1);
         }
      }
      
      private function §<!,§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4![§[this.§4![§.length] = param1;
         }
      }
      
      private function §<q§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§4![§.indexOf(param1);
         if(!_loc4_)
         {
            this.§4![§.splice(_loc2_,1);
         }
      }
      
      private function §[!5§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
