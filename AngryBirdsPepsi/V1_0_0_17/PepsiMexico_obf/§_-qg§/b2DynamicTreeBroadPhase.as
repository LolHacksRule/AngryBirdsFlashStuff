package §_-qg§
{
   import §_-Ja§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-nW§
   {
       
      
      private var §_-1K§:b2DynamicTree;
      
      private var §_-Fj§:int;
      
      private var §_-lv§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-1K§ = new b2DynamicTree();
            if(!_loc2_)
            {
               this.§_-lv§ = new Vector.<b2DynamicTreeNode>();
               if(_loc1_ || _loc1_)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  if(_loc1_)
                  {
                     addr61:
                     super();
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §_-mf§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§_-1K§.§_-mf§(param1,param2);
         if(!_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§_-Fj§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               _loc4_.§_-Fj§ = _loc5_;
            }
            if(!_loc6_)
            {
               addr64:
               this.§_-hv§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr64);
      }
      
      public function §_-aV§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-nR§(param1);
            if(!_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§_-Fj§);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  _loc2_.§_-Fj§ = _loc3_;
               }
               if(!_loc4_)
               {
               }
               §§goto(addr65);
            }
            this.§_-1K§.§_-aV§(param1);
         }
         addr65:
      }
      
      public function §_-Se§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§_-1K§.§_-Se§(param1,param2,param3));
         if(_loc5_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_ || this)
            {
               this.§_-hv§(param1);
            }
         }
      }
      
      public function §_-pb§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-1K§.§_-zV§(param1);
         var _loc4_:b2AABB = this.§_-1K§.§_-zV§(param2);
         return _loc3_.§_-pb§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-1K§.GetUserData(param1);
      }
      
      public function §_-zV§(param1:*) : b2AABB
      {
         return this.§_-1K§.§_-zV§(param1);
      }
      
      public function §_-G3§() : int
      {
         return this.§_-Fj§;
      }
      
      public function §_-PJ§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[2] = §§pop();
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[3] = 0;
                  §§push(§§newactivation());
                  §§push(null);
                  if(!_loc5_)
                  {
                     addr35:
                     §§pop().§§slot[5] = §§pop();
                     §§push(§§newactivation());
                     §§push(null);
                     if(!_loc5_)
                     {
                        addr41:
                        §§pop().§§slot[6] = §§pop();
                        if(_loc6_ || param1)
                        {
                           §§push(§§newactivation());
                           if(_loc6_ || _loc3_)
                           {
                              addr74:
                              addr58:
                              addr77:
                              §§push(undefined);
                              if(_loc6_ || _loc3_)
                              {
                                 §§pop().§§slot[7] = §§pop();
                                 addr69:
                                 §§push(§§newactivation());
                                 §§push(undefined);
                              }
                              §§pop().§§slot[8] = §§pop();
                              var pair:b2DynamicTreePair = null;
                              var callback:Function = param1;
                              this.m_pairCount = 0;
                              addr82:
                              var _loc3_:int = 0;
                              var _loc4_:* = this.§_-lv§;
                              while(§§hasnext(_loc4_,_loc3_))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[2] = §§nextvalue(_loc3_,_loc4_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_)
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
                                             _loc2_.§ do§ = param1 < queryProxy ? param1 : queryProxy;
                                             _loc2_.§_-q9§ = param1 >= queryProxy ? param1 : queryProxy;
                                             ++m_pairCount;
                                             return true;
                                          };
                                          if(!(_loc5_ && this))
                                          {
                                             addr114:
                                             var fatAABB:b2AABB = this.§_-1K§.§_-zV§(queryProxy);
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                          }
                                          this.§_-1K§.§_-7a§(QueryCallback,fatAABB);
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              this.§_-lv§.length = 0;
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 §§pop().§§slot[3] = 0;
                                 if(_loc6_ || this)
                                 {
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§pop().§§slot[3]);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.m_pairCount);
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      addr175:
                                                      §§push(§§newactivation());
                                                      §§push(this.§_-1K§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop().§§slot[6]);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§pop().§§slot[7] = §§pop().GetUserData(§§pop().§ do§);
                                                               addr210:
                                                               §§push(§§newactivation());
                                                               §§push(this.§_-1K§);
                                                               §§push(primaryPair);
                                                            }
                                                            §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§_-q9§);
                                                            if(_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§newactivation());
                                                            if(_loc6_)
                                                            {
                                                               §§pop().§§slot[1](userDataA,userDataB);
                                                               if(!_loc5_)
                                                               {
                                                                  addr230:
                                                                  §§push(§§newactivation());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§§slot[3]);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     §§push(§§newactivation());
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop().§§slot[3] = §§pop();
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                        }
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§§slot[3]);
                                                                                 if(!(_loc6_ || param1))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(this.m_pairCount);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 pair = this.m_pairBuffer[i];
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().§§slot[9]);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(§§pop().§ do§ == primaryPair.§ do§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr290:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   addr299:
                                                                                                   §§pop();
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         addr308:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[9]);
                                                                                                            addr309:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§_-q9§ == primaryPair.§_-q9§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr317:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  §§push(§§pop().§§slot[3]);
                                                                                                                  if(_loc5_ && this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + 1);
                                                                                                                  if(!(_loc6_ || _loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§§slot[3] = §§pop();
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr299);
                                                                                                      }
                                                                                                      addr307:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              continue loop4;
                                                                              addr349:
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  addr231:
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr175);
                                             }
                                             addr374:
                                             return;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr41);
               }
               §§goto(addr58);
            }
            §§goto(addr35);
         }
         §§goto(addr77);
      }
      
      public function §_-7a§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-1K§.§_-7a§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§_-1K§.RayCast(param1,param2);
         }
      }
      
      public function §_-Xa§() : void
      {
      }
      
      public function §_-pP§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-1K§.§_-pP§(param1);
         }
      }
      
      private function §_-hv§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-lv§[this.§_-lv§.length] = param1;
         }
      }
      
      private function §_-nR§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§_-lv§.indexOf(param1);
         if(!(_loc4_ && _loc2_))
         {
            this.§_-lv§.splice(_loc2_,1);
         }
      }
      
      private function §_-aF§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
