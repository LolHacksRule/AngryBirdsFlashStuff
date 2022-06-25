package §&!-§
{
   import §8>§.*;
   
   public class b2DynamicTreeBroadPhase implements §>D§
   {
       
      
      private var §9h§:b2DynamicTree;
      
      private var §!!0§:int;
      
      private var §1,§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9h§ = new b2DynamicTree();
            while(true)
            {
               this.§1,§ = new Vector.<b2DynamicTreeNode>();
               while(_loc2_ || _loc1_)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  do
                  {
                     super();
                  }
                  while(_loc1_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §2!9§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§9h§.§2!9§(param1,param2);
         if(!_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§!!0§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               _loc4_.§!!0§ = _loc5_;
            }
            if(_loc7_)
            {
               this.§!<§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §"!=§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§6u§(param1);
            if(_loc4_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§!!0§);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  _loc2_.§!!0§ = _loc3_;
               }
               if(!_loc5_)
               {
                  addr50:
                  this.§9h§.§"!=§(param1);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §5!O§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§9h§.§5!O§(param1,param2,param3));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_ || param3)
            {
               this.§!<§(param1);
            }
         }
      }
      
      public function §'V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9h§.§<!q§(param1);
         var _loc4_:b2AABB = this.§9h§.§<!q§(param2);
         return _loc3_.§'V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9h§.GetUserData(param1);
      }
      
      public function §<!q§(param1:*) : b2AABB
      {
         return this.§9h§.§<!q§(param1);
      }
      
      public function §"!F§() : int
      {
         return this.§!!0§;
      }
      
      public function §`h§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
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
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(null);
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              loop7:
                              while(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(null);
                                    addr121:
                                    while(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       §§pop().§§slot[6] = §§pop();
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop5;
                                          addr30:
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr37:
                                          if(!_loc6_)
                                          {
                                             continue loop7;
                                          }
                                          if(false)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   continue loop8;
                                                }
                                                addr45:
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§pop().§§slot[1] = param1;
                                                   while(!(_loc5_ && _loc2_))
                                                   {
                                                      this.m_pairCount = 0;
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         loop13:
                                                         while(_loc6_)
                                                         {
                                                            §§push(§§newactivation());
                                                            while(_loc6_)
                                                            {
                                                               §§push(undefined);
                                                               if(_loc6_)
                                                               {
                                                                  §§pop().§§slot[8] = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     continue loop8;
                                                                  }
                                                                  addr100:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop().§§slot[7] = §§pop();
                                                                     continue loop13;
                                                                  }
                                                                  addr113:
                                                               }
                                                               §§goto(addr45);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr30);
                                                   }
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      continue loop18;
                                                      §§goto(addr54);
                                                   }
                                                   addr54:
                                                   §§goto(addr100);
                                                   addr83:
                                                }
                                                §§goto(addr93);
                                             }
                                             continue loop7;
                                          }
                                          var _loc3_:int = 0;
                                          var _loc4_:* = this.§1,§;
                                          addr218:
                                          if(§§hasnext(_loc4_,_loc3_))
                                          {
                                             addr212:
                                             var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                             addr205:
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
                                                _loc2_.§5R§ = param1 < queryProxy ? param1 : queryProxy;
                                                _loc2_.§0D§ = param1 >= queryProxy ? param1 : queryProxy;
                                                ++m_pairCount;
                                                return true;
                                             };
                                             addr170:
                                             addr217:
                                             addr208:
                                             §§push(§§newactivation());
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop().§§slot[5] = this.§9h§.§<!q§(queryProxy);
                                                   addr188:
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         this.§9h§.§&!]§(QueryCallback,fatAABB);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr205);
                                          }
                                          if(_loc6_ || _loc3_)
                                          {
                                             this.§1,§.length = 0;
                                             addr545:
                                             var i:int = 0;
                                             addr277:
                                             addr547:
                                             addr552:
                                             §§push(§§newactivation());
                                             if(!_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr302:
                                                            if(§§pop().§§slot[3] >= this.m_pairCount)
                                                            {
                                                               addr303:
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        addr475:
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           addr462:
                                                                           i++;
                                                                           addr230:
                                                                           addr460:
                                                                           addr464:
                                                                           addr461:
                                                                           addr459:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[3]);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(this.m_pairCount);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   §§goto(addr303);
                                                                                                }
                                                                                                addr440:
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§pop().§§slot[9] = this.m_pairBuffer[i];
                                                                                                   addr449:
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      addr403:
                                                                                                      §§push(pair.§5R§ == primaryPair.§5R§);
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         addr416:
                                                                                                         §§push(!§§pop());
                                                                                                         if(!!§§pop())
                                                                                                         {
                                                                                                            addr418:
                                                                                                            §§pop();
                                                                                                            addr419:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     addr319:
                                                                                                                     §§push(pair);
                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§0D§ == primaryPair.§0D§);
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                        }
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr344:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr277);
                                                                                                                                 }
                                                                                                                                 addr385:
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr230);
                                                                                                                                    }
                                                                                                                                    addr467:
                                                                                                                                    callback(userDataA,userDataB);
                                                                                                                                    §§goto(addr475);
                                                                                                                                    addr509:
                                                                                                                                 }
                                                                                                                                 §§goto(addr419);
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[3]);
                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr373:
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§pop().§§slot[3] = §§pop();
                                                                                                                                             §§goto(addr385);
                                                                                                                                          }
                                                                                                                                          §§goto(addr462);
                                                                                                                                       }
                                                                                                                                       §§goto(addr460);
                                                                                                                                    }
                                                                                                                                    §§goto(addr373);
                                                                                                                                 }
                                                                                                                                 addr526:
                                                                                                                                 §§pop().§§slot[7] = this.§9h§.GetUserData(primaryPair.§5R§);
                                                                                                                                 addr525:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 §§push(this.§9h§);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[6]);
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§0D§);
                                                                                                                                          §§goto(addr509);
                                                                                                                                       }
                                                                                                                                       §§goto(addr526);
                                                                                                                                    }
                                                                                                                                    §§goto(addr525);
                                                                                                                                 }
                                                                                                                                 addr524:
                                                                                                                                 §§goto(addr524);
                                                                                                                                 addr530:
                                                                                                                                 addr522:
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                           §§goto(addr416);
                                                                                                                        }
                                                                                                                        §§goto(addr418);
                                                                                                                     }
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               §§goto(addr530);
                                                                                                            }
                                                                                                            §§goto(addr464);
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr418);
                                                                                                   }
                                                                                                   §§goto(addr522);
                                                                                                   §§push(§§newactivation());
                                                                                                   addr542:
                                                                                                }
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr461);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr302);
                                                                                 }
                                                                                 §§goto(addr459);
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                        §§goto(addr552);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr449);
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            §§push(§§newactivation());
                                                         }
                                                         §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                         §§goto(addr542);
                                                      }
                                                      §§goto(addr526);
                                                   }
                                                   §§goto(addr467);
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr449);
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §&!]§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§9h§.§&!]§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§9h§.RayCast(param1,param2);
         }
      }
      
      public function §<!3§() : void
      {
      }
      
      public function §]!§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9h§.§]!§(param1);
         }
      }
      
      private function §!<§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§1,§[this.§1,§.length] = param1;
         }
      }
      
      private function §6u§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§1,§.indexOf(param1);
         if(!_loc3_)
         {
            this.§1,§.splice(_loc2_,1);
         }
      }
      
      private function §>!?§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
