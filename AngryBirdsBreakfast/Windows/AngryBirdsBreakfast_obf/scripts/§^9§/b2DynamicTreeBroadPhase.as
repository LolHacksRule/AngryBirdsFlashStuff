package §^9§
{
   import §6Z§.*;
   
   public class b2DynamicTreeBroadPhase implements §`c§
   {
       
      
      private var §?4§:b2DynamicTree;
      
      private var §6!B§:int;
      
      private var §0!d§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?4§ = new b2DynamicTree();
         }
         loop0:
         while(true)
         {
            this.§0!d§ = new Vector.<b2DynamicTreeNode>();
            loop1:
            do
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               while(!_loc1_)
               {
                  super();
                  if(_loc2_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_ && this);
            
            return;
         }
      }
      
      public function §]!J§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§?4§.§]!J§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§6!B§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               _loc4_.§6!B§ = _loc5_;
            }
            if(!_loc6_)
            {
               this.§9^§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §5!k§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§'r§(param1);
            if(!(_loc4_ && this))
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§6!B§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || _loc2_)
               {
                  _loc2_.§6!B§ = _loc3_;
               }
               if(!(_loc4_ && param1))
               {
                  addr76:
                  this.§?4§.§5!k§(param1);
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function §2n§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§?4§.§2n§(param1,param2,param3));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_ || param3)
            {
               this.§9^§(param1);
            }
         }
      }
      
      public function §]",§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?4§.§25§(param1);
         var _loc4_:b2AABB = this.§?4§.§25§(param2);
         return _loc3_.§]",§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?4§.GetUserData(param1);
      }
      
      public function §25§(param1:*) : b2AABB
      {
         return this.§?4§.§25§(param1);
      }
      
      public function §<!v§() : int
      {
         return this.§6!B§;
      }
      
      public function §,b§(param1:Function) : void
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
                           while(!(_loc5_ && _loc3_))
                           {
                              §§pop().§§slot[5] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop5;
                                 addr33:
                                 if(!(_loc6_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc5_ && this)
                                 {
                                    continue loop2;
                                 }
                                 if(false)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[1] = param1;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr57:
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr127:
                                                      loop11:
                                                      for(; _loc6_ || _loc3_; loop14:
                                                      for(; !(_loc5_ && this); while(true)
                                                      {
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr85:
                                                         §§push(null);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§pop().§§slot[9] = §§pop();
                                                            while(true)
                                                            {
                                                               continue loop18;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[6] = §§pop();
                                                               continue loop10;
                                                               §§goto(addr85);
                                                            }
                                                            addr150:
                                                         }
                                                      },continue loop3)
                                                      {
                                                         §§push(undefined);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().§§slot[8] = §§pop();
                                                            while(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop14;
                                                               §§goto(addr57);
                                                            }
                                                            addr117:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr137);
                                                      })
                                                      {
                                                         §§push(undefined);
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[7] = §§pop();
                                                            addr137:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr102);
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr76);
                                    }
                                    continue loop2;
                                 }
                                 var _loc3_:int = 0;
                                 var _loc4_:* = this.§0!d§;
                                 addr243:
                                 if(§§hasnext(_loc4_,_loc3_))
                                 {
                                    addr237:
                                    var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                    addr242:
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && _loc2_))
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
                                          _loc2_.§2J§ = param1 < queryProxy ? param1 : queryProxy;
                                          _loc2_.§4"$§ = param1 >= queryProxy ? param1 : queryProxy;
                                          ++m_pairCount;
                                          return true;
                                       };
                                       addr200:
                                       addr233:
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && param1))
                                       {
                                          §§pop().§§slot[5] = this.§?4§.§25§(queryProxy);
                                          addr216:
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§?4§.§ var§(QueryCallback,fatAABB);
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr237);
                                 }
                                 if(_loc6_ || _loc3_)
                                 {
                                    this.§0!d§.length = 0;
                                    addr530:
                                    var i:int = 0;
                                    addr296:
                                    addr537:
                                    addr532:
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       addr303:
                                       if(§§pop().§§slot[3] < this.m_pairCount)
                                       {
                                          addr508:
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             §§pop().§§slot[6] = this.m_pairBuffer[i];
                                             addr497:
                                             var userDataA:* = this.§?4§.GetUserData(primaryPair.§2J§);
                                             addr501:
                                             addr493:
                                             addr496:
                                             addr495:
                                             if(!_loc5_)
                                             {
                                                addr461:
                                                §§push(§§newactivation());
                                                §§push(this.§?4§);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(§§pop().§§slot[6]);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§4"$§);
                                                         addr490:
                                                         §§push(§§newactivation());
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().§§slot[1](userDataA,userDataB);
                                                               addr436:
                                                               addr435:
                                                               addr426:
                                                               §§push(i);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               i = §§pop();
                                                               addr458:
                                                               addr438:
                                                               §§push(§§newactivation());
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop().§§slot[3]);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(this.m_pairCount);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          addr367:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                             addr414:
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr379:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr395:
                                                                                                      §§push(§§pop().§§slot[9].§2J§ == primaryPair.§2J§);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr397:
                                                                                                         §§pop();
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr309:
                                                                                                            §§push(pair);
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop().§4"$§ == primaryPair.§4"$§);
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr332:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr334:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr296);
                                                                                                                                 }
                                                                                                                                 §§goto(addr490);
                                                                                                                              }
                                                                                                                              §§goto(addr438);
                                                                                                                           }
                                                                                                                           §§goto(addr367);
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[3]);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr355:
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[3] = §§pop();
                                                                                                                                    §§goto(addr367);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr435);
                                                                                                                           }
                                                                                                                           §§goto(addr355);
                                                                                                                        }
                                                                                                                        §§goto(addr379);
                                                                                                                     }
                                                                                                                     §§goto(addr397);
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               §§goto(addr332);
                                                                                                            }
                                                                                                            §§goto(addr395);
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                   §§goto(addr490);
                                                                                                }
                                                                                                §§goto(addr532);
                                                                                             }
                                                                                             §§goto(addr501);
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    addr405:
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().§§slot[9] = this.m_pairBuffer[i];
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    §§goto(addr426);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr493);
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr497);
                                                   }
                                                   §§goto(addr496);
                                                }
                                                §§goto(addr495);
                                             }
                                             addr517:
                                             §§goto(addr517);
                                          }
                                          §§goto(addr530);
                                       }
                                       addr304:
                                       return;
                                    }
                                    §§goto(addr309);
                                 }
                                 §§goto(addr490);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function § var§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§?4§.§ var§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§?4§.RayCast(param1,param2);
         }
      }
      
      public function §`!n§() : void
      {
      }
      
      public function §;3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?4§.§;3§(param1);
         }
      }
      
      private function §9^§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!d§[this.§0!d§.length] = param1;
         }
      }
      
      private function §'r§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§0!d§.indexOf(param1);
         if(_loc4_ || this)
         {
            this.§0!d§.splice(_loc2_,1);
         }
      }
      
      private function §-!j§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
