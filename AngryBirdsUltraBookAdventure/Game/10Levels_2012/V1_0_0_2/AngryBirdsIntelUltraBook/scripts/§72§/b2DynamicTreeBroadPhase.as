package §72§
{
   import §>H§.*;
   
   public class b2DynamicTreeBroadPhase implements §<X§
   {
       
      
      private var §9h§:b2DynamicTree;
      
      private var §!!w§:int;
      
      private var §3!6§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§9h§ = new b2DynamicTree();
            loop0:
            while(true)
            {
               this.§3!6§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        super();
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §0!S§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§9h§.§0!S§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§!!w§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && this))
            {
               _loc4_.§!!w§ = _loc5_;
            }
            if(_loc7_)
            {
               this.§,!=§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §!O§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§#!u§(param1);
            if(!_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§!!w§);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && param1))
               {
                  _loc2_.§!!w§ = _loc3_;
               }
               if(_loc4_ || param1)
               {
                  addr75:
                  this.§9h§.§!O§(param1);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function §`=§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§9h§.§`=§(param1,param2,param3));
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_)
            {
               this.§,!=§(param1);
            }
         }
      }
      
      public function §7l§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9h§.§^!Q§(param1);
         var _loc4_:b2AABB = this.§9h§.§^!Q§(param2);
         return _loc3_.§7l§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9h§.GetUserData(param1);
      }
      
      public function §^!Q§(param1:*) : b2AABB
      {
         return this.§9h§.§^!Q§(param1);
      }
      
      public function §]y§() : int
      {
         return this.§!!w§;
      }
      
      public function §`!j§(param1:Function) : void
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
                              while(_loc6_)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 for(; _loc6_; while(true)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop8;
                                    §§goto(addr53);
                                 },continue loop5)
                                 {
                                    §§push(null);
                                    loop9:
                                    while(!_loc5_)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr122:
                                          while(true)
                                          {
                                             §§push(undefined);
                                             addr123:
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                addr125:
                                                while(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          addr40:
                                          if(_loc5_ && param1)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   addr53:
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§§slot[1] = param1;
                                                      while(_loc6_ || _loc3_)
                                                      {
                                                         this.m_pairCount = 0;
                                                         if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§goto(addr40);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr125);
                                                         }
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop18;
                                                         }
                                                         addr119:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            addr76:
                                                            while(true)
                                                            {
                                                               §§push(null);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().§§slot[9] = §§pop();
                                                                  continue loop17;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      addr66:
                                                      continue loop4;
                                                   }
                                                   §§goto(addr122);
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr76);
                                             }
                                             continue loop3;
                                          }
                                          var _loc3_:int = 0;
                                          var _loc4_:* = this.§3!6§;
                                          addr213:
                                          if(§§hasnext(_loc4_,_loc3_))
                                          {
                                             addr207:
                                             var queryProxy:b2DynamicTreeNode = §§nextvalue(_loc3_,_loc4_);
                                             addr212:
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
                                                   _loc2_.§]!O§ = param1 < queryProxy ? param1 : queryProxy;
                                                   _loc2_.§&d§ = param1 >= queryProxy ? param1 : queryProxy;
                                                   ++m_pairCount;
                                                   return true;
                                                };
                                                addr180:
                                                addr203:
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   §§pop().§§slot[5] = this.§9h§.§^!Q§(queryProxy);
                                                   addr191:
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         this.§9h§.§@!1§(QueryCallback,fatAABB);
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr207);
                                          }
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.§3!6§.length = 0;
                                             addr533:
                                             var i:int = 0;
                                             if(_loc6_)
                                             {
                                                addr268:
                                                §§push(§§newactivation());
                                                if(_loc6_ || this)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr294:
                                                            §§push(§§pop().§§slot[3]);
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        addr319:
                                                                        if(§§pop() >= this.m_pairCount)
                                                                        {
                                                                           addr320:
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc5_ && _loc3_)
                                                                                    {
                                                                                       addr523:
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr497:
                                                                                          var userDataA:* = this.§9h§.GetUserData(primaryPair.§]!O§);
                                                                                          addr501:
                                                                                          addr496:
                                                                                          addr495:
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(this.§9h§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[6]);
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop().§§slot[8] = §§pop().GetUserData(§§pop().§&d§);
                                                                                                      addr446:
                                                                                                      callback(userDataA,userDataB);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         addr441:
                                                                                                         i++;
                                                                                                         addr225:
                                                                                                         addr438:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[3]);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.m_pairCount);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§goto(addr268);
                                                                                                                           }
                                                                                                                           §§goto(addr320);
                                                                                                                        }
                                                                                                                        addr426:
                                                                                                                        var pair:b2DynamicTreePair = this.m_pairBuffer[i];
                                                                                                                        addr433:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr400:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr413:
                                                                                                                              §§push(§§pop().§§slot[9].§]!O§ != primaryPair.§]!O§);
                                                                                                                              if(!(§§pop().§§slot[9].§]!O§ != primaryPair.§]!O§))
                                                                                                                              {
                                                                                                                                 addr416:
                                                                                                                                 §§pop();
                                                                                                                                 addr417:
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr348:
                                                                                                                                       §§push(pair);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§&d§ == primaryPair.§&d§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr370:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr372:
                                                                                                                                                      §§goto(addr268);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr389:
                                                                                                                                                         §§push(§§pop().§§slot[3] + 1);
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§§slot[3] = §§pop();
                                                                                                                                                            addr395:
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr225);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr417);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr441);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr533);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr446);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr413);
                                                                                                                                          }
                                                                                                                                          §§goto(addr416);
                                                                                                                                       }
                                                                                                                                       §§goto(addr413);
                                                                                                                                    }
                                                                                                                                    §§goto(addr446);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           §§goto(addr438);
                                                                                                                        }
                                                                                                                        §§goto(addr501);
                                                                                                                     }
                                                                                                                     §§goto(addr319);
                                                                                                                  }
                                                                                                                  §§goto(addr294);
                                                                                                               }
                                                                                                               §§goto(addr426);
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         §§goto(addr268);
                                                                                                         addr443:
                                                                                                         addr439:
                                                                                                         addr440:
                                                                                                      }
                                                                                                      addr490:
                                                                                                      §§goto(addr490);
                                                                                                   }
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                             §§goto(addr495);
                                                                                          }
                                                                                          addr493:
                                                                                          §§goto(addr493);
                                                                                       }
                                                                                       §§goto(addr533);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr443);
                                                                              }
                                                                              §§goto(addr372);
                                                                           }
                                                                           §§goto(addr395);
                                                                        }
                                                                        addr516:
                                                                        var primaryPair:b2DynamicTreePair = this.m_pairBuffer[i];
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                                  §§goto(addr440);
                                                               }
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         §§goto(addr516);
                                                      }
                                                      §§goto(addr497);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr370);
                                             }
                                             addr542:
                                             §§goto(addr542);
                                          }
                                          §§goto(addr372);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           §§push(undefined);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§pop().§§slot[8] = §§pop();
                              §§goto(addr119);
                           }
                           §§goto(addr123);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §@!1§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9h§.§@!1§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9h§.RayCast(param1,param2);
         }
      }
      
      public function §##§() : void
      {
      }
      
      public function §]!t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9h§.§]!t§(param1);
         }
      }
      
      private function §,!=§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3!6§[this.§3!6§.length] = param1;
         }
      }
      
      private function §#!u§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§3!6§.indexOf(param1);
         if(!(_loc3_ && this))
         {
            this.§3!6§.splice(_loc2_,1);
         }
      }
      
      private function §5!W§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
