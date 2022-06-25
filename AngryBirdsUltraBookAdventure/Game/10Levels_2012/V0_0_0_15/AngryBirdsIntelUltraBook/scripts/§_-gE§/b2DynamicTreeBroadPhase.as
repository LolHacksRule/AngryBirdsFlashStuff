package §_-gE§
{
   import §_-Yp§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-We§
   {
       
      
      private var §_-yn§:b2DynamicTree;
      
      private var §_-nR§:int;
      
      private var §_-JU§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-yn§ = new b2DynamicTree();
         }
         loop0:
         do
         {
            this.§_-JU§ = new Vector.<b2DynamicTreeNode>();
            while(true)
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               while(_loc2_ || this)
               {
                  super();
                  if(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      public function §_-7Y§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§_-yn§.§_-7Y§(param1,param2);
         if(!_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§_-nR§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§_-nR§ = _loc5_;
            }
            if(_loc6_ || param2)
            {
               this.§_-iR§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §_-yw§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§_-16§(param1);
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§_-nR§);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§_-nR§ = _loc3_;
               }
               if(!(_loc4_ && param1))
               {
                  this.§_-yn§.§_-yw§(param1);
               }
            }
         }
      }
      
      public function §_-BG§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§_-yn§.§_-BG§(param1,param2,param3));
         if(_loc6_ || param3)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc5_ && param2))
            {
               this.§_-iR§(param1);
            }
         }
      }
      
      public function §_-Rd§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-yn§.§_-082§(param1);
         var _loc4_:b2AABB = this.§_-yn§.§_-082§(param2);
         return _loc3_.§_-Rd§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-yn§.GetUserData(param1);
      }
      
      public function §_-082§(param1:*) : b2AABB
      {
         return this.§_-yn§.§_-082§(param1);
      }
      
      public function §_-ps§() : int
      {
         return this.§_-nR§;
      }
      
      public function §_-Mm§(param1:Function) : void
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
                        while(true)
                        {
                           §§push(null);
                           loop6:
                           while(_loc5_ || param1)
                           {
                              §§pop().§§slot[5] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(null);
                                    addr107:
                                    while(_loc5_)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(!_loc6_)
                                          {
                                             §§push(undefined);
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                addr101:
                                                while(!_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 addr29:
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§pop().§§slot[1] = param1;
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr101);
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr79);
                                    }
                                    continue loop5;
                                 }
                                 var _loc3_:int = 0;
                                 var _loc4_:* = this.§_-JU§;
                                 addr202:
                                 if(§§hasnext(_loc4_,_loc3_))
                                 {
                                    addr196:
                                    var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                    addr180:
                                    addr201:
                                    §§push(§§newactivation());
                                    if(_loc5_)
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
                                          _loc2_.§_-05Z§ = param1 < queryProxy ? param1 : queryProxy;
                                          _loc2_.§_-l4§ = param1 >= queryProxy ? param1 : queryProxy;
                                          ++m_pairCount;
                                          return true;
                                       };
                                       addr185:
                                       if(_loc5_ || param1)
                                       {
                                          addr166:
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             §§pop().§§slot[5] = this.§_-yn§.§_-082§(queryProxy);
                                             this.§_-yn§.§_-CP§(QueryCallback,fatAABB);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr185);
                                             }
                                             addr177:
                                             §§goto(addr177);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr196);
                                 }
                                 if(_loc5_)
                                 {
                                    this.§_-JU§.length = 0;
                                    addr519:
                                    var i:int = 0;
                                    addr279:
                                    addr521:
                                    addr526:
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr298:
                                             §§push(§§pop().§§slot[3]);
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr314:
                                                   if(§§pop() >= this.m_pairCount)
                                                   {
                                                      addr315:
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            addr479:
                                                            addr516:
                                                            §§push(§§newactivation());
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               addr500:
                                                               §§pop().§§slot[7] = this.§_-yn§.GetUserData(primaryPair.§_-05Z§);
                                                               addr457:
                                                               addr504:
                                                               addr499:
                                                               §§push(§§newactivation());
                                                               §§push(this.§_-yn§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop().§§slot[6]);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§_-l4§);
                                                                        addr446:
                                                                        callback(userDataA,userDataB);
                                                                        addr432:
                                                                        i++;
                                                                        addr454:
                                                                        addr430:
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr209:
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[3]);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.m_pairCount);
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr279);
                                                                                                                  }
                                                                                                                  addr412:
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr384:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr387:
                                                                                                                           §§push(§§pop().§§slot[9].§_-05Z§ == primaryPair.§_-05Z§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr397:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr399:
                                                                                                                                    §§pop();
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[9]);
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§_-l4§ == primaryPair.§_-l4§);
                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr354:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr356:
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr279);
                                                                                                                                                }
                                                                                                                                                §§goto(addr521);
                                                                                                                                             }
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr369:
                                                                                                                                                §§push(§§pop().§§slot[3] + 1);
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§§slot[3] = §§pop();
                                                                                                                                                   addr374:
                                                                                                                                                   if(!(_loc6_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr381:
                                                                                                                                                      §§goto(addr209);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr454);
                                                                                                                                                }
                                                                                                                                                §§goto(addr432);
                                                                                                                                             }
                                                                                                                                             §§goto(addr446);
                                                                                                                                          }
                                                                                                                                          §§goto(addr399);
                                                                                                                                       }
                                                                                                                                       §§goto(addr387);
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                    addr400:
                                                                                                                                 }
                                                                                                                                 §§goto(addr354);
                                                                                                                              }
                                                                                                                              §§goto(addr399);
                                                                                                                           }
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        §§goto(addr457);
                                                                                                                     }
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                                  §§goto(addr446);
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                      addr405:
                                                                                                      var pair:b2DynamicTreePair = this.m_pairBuffer[i];
                                                                                                      §§goto(addr412);
                                                                                                   }
                                                                                                   §§goto(addr314);
                                                                                                }
                                                                                                §§goto(addr430);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       addr509:
                                                                                       §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                                                       §§goto(addr516);
                                                                                    }
                                                                                    §§goto(addr399);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr526);
                                                                        }
                                                                        addr476:
                                                                        §§goto(addr476);
                                                                        addr431:
                                                                        addr429:
                                                                     }
                                                                     §§goto(addr500);
                                                                  }
                                                                  §§goto(addr499);
                                                               }
                                                               addr498:
                                                               §§goto(addr498);
                                                            }
                                                            §§goto(addr519);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr356);
                                                   }
                                                   §§goto(addr509);
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr431);
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr429);
                                       }
                                       §§goto(addr405);
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr381);
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
      
      public function §_-CP§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§_-yn§.§_-CP§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§_-yn§.RayCast(param1,param2);
         }
      }
      
      public function §_-0DA§() : void
      {
      }
      
      public function §_-DT§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-yn§.§_-DT§(param1);
         }
      }
      
      private function §_-iR§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-JU§[this.§_-JU§.length] = param1;
         }
      }
      
      private function §_-16§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§_-JU§.indexOf(param1);
         if(!_loc3_)
         {
            this.§_-JU§.splice(_loc2_,1);
         }
      }
      
      private function §_-97§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
