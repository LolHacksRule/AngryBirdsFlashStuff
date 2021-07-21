package §'!;§
{
   import §<!B§.*;
   
   public class b2DynamicTreeBroadPhase implements §1!p§
   {
       
      
      private var §3O§:b2DynamicTree;
      
      private var §&!2§:int;
      
      private var §%W§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3O§ = new b2DynamicTree();
            if(!(_loc2_ && _loc1_))
            {
               this.§%W§ = new Vector.<b2DynamicTreeNode>();
               if(_loc1_ || this)
               {
                  addr62:
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  if(!_loc2_)
                  {
                     super();
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §<!U§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§3O§.§<!U§(param1,param2);
         if(!(_loc6_ && param1))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§&!2§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               _loc4_.§&!2§ = _loc5_;
            }
            if(_loc7_)
            {
               this.§'!@§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §`!A§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§-!^§(param1);
            if(_loc5_)
            {
               addr44:
               var _loc2_:*;
               §§push((_loc2_ = this).§&!2§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  _loc2_.§&!2§ = _loc3_;
               }
               if(_loc5_)
               {
                  this.§3O§.§`!A§(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §?"§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§3O§.§?"§(param1,param2,param3));
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc6_ && param1))
            {
               this.§'!@§(param1);
            }
         }
      }
      
      public function §,!r§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§3O§.§+,§(param1);
         var _loc4_:b2AABB = this.§3O§.§+,§(param2);
         return _loc3_.§,!r§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§3O§.GetUserData(param1);
      }
      
      public function §+,§(param1:*) : b2AABB
      {
         return this.§3O§.§+,§(param1);
      }
      
      public function §8!d§() : int
      {
         return this.§&!2§;
      }
      
      public function §-!g§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!(_loc6_ && _loc2_))
            {
               §§pop().§§slot[2] = §§pop();
               var i:int = 0;
               if(_loc5_ || _loc2_)
               {
                  addr44:
                  §§push(§§newactivation());
                  §§push(null);
                  if(!_loc6_)
                  {
                     §§pop().§§slot[5] = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§push(null);
                           if(!_loc6_)
                           {
                              addr62:
                              §§pop().§§slot[6] = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 addr71:
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    §§push(undefined);
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[7] = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_ || this)
                                          {
                                             addr90:
                                             §§pop().§§slot[8] = undefined;
                                             addr92:
                                             §§push(§§newactivation());
                                             if(_loc6_)
                                             {
                                             }
                                             addr106:
                                             §§pop().§§slot[1] = param1;
                                             addr108:
                                             this.m_pairCount = 0;
                                             var _loc3_:int = 0;
                                             var _loc4_:* = this.§%W§;
                                             while(§§hasnext(_loc4_,_loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = §§nextvalue(_loc3_,_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         addr137:
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
                                                            _loc2_.§4M§ = param1 < queryProxy ? param1 : queryProxy;
                                                            _loc2_.§1!]§ = param1 >= queryProxy ? param1 : queryProxy;
                                                            ++m_pairCount;
                                                            return true;
                                                         };
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§newactivation());
                                                      }
                                                      §§pop().§§slot[5] = this.§3O§.§+,§(queryProxy);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         this.§3O§.§>x§(QueryCallback,fatAABB);
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr137);
                                             }
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                this.§%W§.length = 0;
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   §§pop().§§slot[3] = 0;
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
                                                            while(§§pop() < §§pop())
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc5_)
                                                               {
                                                                  §§pop().§§slot[6] = this.m_pairBuffer[i];
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(this.§3O§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(§§pop().§§slot[6]);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§pop().§§slot[7] = §§pop().GetUserData(§§pop().§4M§);
                                                                              addr240:
                                                                              §§push(§§newactivation());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr246:
                                                                                 §§push(this.§3O§);
                                                                                 §§push(primaryPair);
                                                                              }
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§§slot[9]);
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§1!]§ == primaryPair.§1!]§);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       addr344:
                                                                                    }
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break loop4;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[3]);
                                                                                             if(_loc6_ && _loc2_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                addr369:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§§slot[3] = §§pop();
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc6_ && this)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      addr383:
                                                                                                   }
                                                                                                   break loop4;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr357:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[3]);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.m_pairCount);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                   {
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                var pair:b2DynamicTreePair = this.m_pairBuffer[i];
                                                                                                §§push(pair);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().§4M§ == primaryPair.§4M§);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(!§§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr331:
                                                                           }
                                                                           §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§1!]§);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 §§pop().§§slot[1](userDataA,userDataB);
                                                                                 §§push(i);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().§§slot[3] = §§pop();
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           addr251:
                                                                        }
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            return;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr251);
                                             addr89:
                                          }
                                          addr96:
                                          §§pop().§§slot[9] = null;
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr105:
                                             §§goto(addr106);
                                             §§push(§§newactivation());
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr62);
               }
               §§goto(addr71);
            }
            §§goto(addr96);
         }
         §§goto(addr44);
      }
      
      public function §>x§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§3O§.§>x§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§3O§.RayCast(param1,param2);
         }
      }
      
      public function §1K§() : void
      {
      }
      
      public function §set §(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3O§.§set §(param1);
         }
      }
      
      private function §'!@§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%W§[this.§%W§.length] = param1;
         }
      }
      
      private function §-!^§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%W§.indexOf(param1);
         if(_loc3_ || _loc3_)
         {
            this.§%W§.splice(_loc2_,1);
         }
      }
      
      private function §^!f§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
