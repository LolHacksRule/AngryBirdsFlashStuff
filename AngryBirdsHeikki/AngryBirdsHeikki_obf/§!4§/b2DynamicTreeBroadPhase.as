package §!4§
{
   import §6A§.*;
   
   public class b2DynamicTreeBroadPhase implements §!s§
   {
       
      
      private var §4!G§:b2DynamicTree;
      
      private var §#T§:int;
      
      private var §&Q§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!G§ = new b2DynamicTree();
            while(true)
            {
               this.§&Q§ = new Vector.<b2DynamicTreeNode>();
            }
            addr74:
         }
         loop1:
         do
         {
            this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
            while(_loc2_)
            {
               super();
               if(!_loc1_)
               {
                  continue loop1;
               }
            }
            §§goto(addr74);
         }
         while(!_loc2_);
         
      }
      
      public function §+!#§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§4!G§.§+!#§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§#T§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               _loc4_.§#T§ = _loc5_;
            }
            if(_loc7_ || param2)
            {
               this.§>D§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §&R§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§3!J§(param1);
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§#T§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && param1))
               {
                  _loc2_.§#T§ = _loc3_;
               }
               if(!_loc4_)
               {
                  addr76:
                  this.§4!G§.§&R§(param1);
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §&W§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§4!G§.§&W§(param1,param2,param3));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc5_ && param2))
            {
               this.§>D§(param1);
            }
         }
      }
      
      public function §+!;§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§4!G§.§,,§(param1);
         var _loc4_:b2AABB = this.§4!G§.§,,§(param2);
         return _loc3_.§+!;§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§4!G§.GetUserData(param1);
      }
      
      public function §,,§(param1:*) : b2AABB
      {
         return this.§4!G§.§,,§(param1);
      }
      
      public function §-s§() : int
      {
         return this.§#T§;
      }
      
      public function §"!R§(param1:Function) : void
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
                  loop3:
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
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(!_loc5_)
                                 {
                                    §§push(null);
                                    loop9:
                                    while(!_loc5_)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       §§pop().§§slot[6] = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(!_loc5_)
                                          {
                                             §§push(undefined);
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                loop13:
                                                while(!(_loc5_ && param1))
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(undefined);
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§§slot[8] = §§pop();
                                                      while(!_loc5_)
                                                      {
                                                         §§push(§§newactivation());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(null);
                                                            if(!_loc6_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§pop().§§slot[9] = §§pop();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               addr58:
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop().§§slot[1] = param1;
                                                                        continue loop17;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop8;
                                                         if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc6_ || _loc2_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(false)
                                                         {
                                                            §§goto(addr58);
                                                         }
                                                         var _loc3_:int = 0;
                                                         var _loc4_:* = this.§&Q§;
                                                         addr213:
                                                         if(§§hasnext(_loc4_,_loc3_))
                                                         {
                                                            addr207:
                                                            var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                                            addr193:
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
                                                               _loc2_.§package§ = param1 < queryProxy ? param1 : queryProxy;
                                                               _loc2_.§@!?§ = param1 >= queryProxy ? param1 : queryProxy;
                                                               ++m_pairCount;
                                                               return true;
                                                            };
                                                            addr196:
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr165:
                                                               §§push(§§newactivation());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§pop().§§slot[5] = this.§4!G§.§,,§(queryProxy);
                                                                     addr188:
                                                                     if(!_loc5_)
                                                                     {
                                                                        this.§4!G§.§&!K§(QueryCallback,fatAABB);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr165);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            addr212:
                                                            §§goto(addr212);
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            this.§&Q§.length = 0;
                                                            addr520:
                                                            var i:int = 0;
                                                            addr282:
                                                            addr522:
                                                            addr527:
                                                         }
                                                         addr284:
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            addr287:
                                                            §§push(§§pop().§§slot[3]);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               addr296:
                                                               if(§§pop() >= this.m_pairCount)
                                                               {
                                                                  addr297:
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_ && _loc3_)
                                                                     {
                                                                        addr423:
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr369:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    addr377:
                                                                                    §§push(§§pop().§§slot[9].§package§ == primaryPair.§package§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          addr392:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             addr394:
                                                                                             §§pop();
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[9]);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§@!?§ == primaryPair.§@!?§);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr342:
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr394);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                     addr364:
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr220:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[3]);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_pairCount);
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr282);
                                                                                                                                                }
                                                                                                                                                §§goto(addr522);
                                                                                                                                             }
                                                                                                                                             §§goto(addr394);
                                                                                                                                          }
                                                                                                                                          §§goto(addr297);
                                                                                                                                       }
                                                                                                                                       addr414:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[9] = this.m_pairBuffer[i];
                                                                                                                                          §§goto(addr423);
                                                                                                                                       }
                                                                                                                                       §§goto(addr520);
                                                                                                                                    }
                                                                                                                                    §§goto(addr296);
                                                                                                                                 }
                                                                                                                                 addr352:
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[3] = §§pop();
                                                                                                                                       §§goto(addr364);
                                                                                                                                    }
                                                                                                                                    addr440:
                                                                                                                                    §§pop().§§slot[3] = §§pop();
                                                                                                                                    §§goto(addr220);
                                                                                                                                    addr442:
                                                                                                                                 }
                                                                                                                                 §§goto(addr440);
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 §§push(§§newactivation());
                                                                                                                              }
                                                                                                                              §§goto(addr287);
                                                                                                                           }
                                                                                                                           addr348:
                                                                                                                           §§push(§§pop().§§slot[3]);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr352);
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           §§goto(addr352);
                                                                                                                        }
                                                                                                                        §§goto(addr284);
                                                                                                                     }
                                                                                                                     addr437:
                                                                                                                     §§goto(addr352);
                                                                                                                     §§push(i);
                                                                                                                     addr455:
                                                                                                                  }
                                                                                                                  §§goto(addr348);
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            addr458:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(this.§4!G§);
                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[6]);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§@!?§);
                                                                                                                        addr445:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().§§slot[1](userDataA,userDataB);
                                                                                                                           §§goto(addr455);
                                                                                                                        }
                                                                                                                        addr490:
                                                                                                                        §§push(this.§4!G§);
                                                                                                                        §§push(primaryPair);
                                                                                                                        addr484:
                                                                                                                     }
                                                                                                                     §§pop().§§slot[7] = §§pop().GetUserData(§§pop().§package§);
                                                                                                                     §§goto(addr458);
                                                                                                                     §§push(§§newactivation());
                                                                                                                     addr495:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr490);
                                                                                                            }
                                                                                                            addr500:
                                                                                                            §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                                                                            §§goto(addr490);
                                                                                                            §§push(§§newactivation());
                                                                                                            addr507:
                                                                                                         }
                                                                                                         §§goto(addr445);
                                                                                                      }
                                                                                                      §§goto(addr369);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr484);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                                 §§goto(addr414);
                                                                              }
                                                                              §§goto(addr527);
                                                                           }
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr495);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr500);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §&!K§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!G§.§&!K§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§4!G§.RayCast(param1,param2);
         }
      }
      
      public function §6k§() : void
      {
      }
      
      public function §]Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!G§.§]Q§(param1);
         }
      }
      
      private function §>D§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&Q§[this.§&Q§.length] = param1;
         }
      }
      
      private function §3!J§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§&Q§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            this.§&Q§.splice(_loc2_,1);
         }
      }
      
      private function §+b§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
