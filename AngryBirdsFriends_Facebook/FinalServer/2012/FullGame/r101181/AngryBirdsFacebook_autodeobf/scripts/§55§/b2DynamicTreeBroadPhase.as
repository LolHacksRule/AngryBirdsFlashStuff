package §55§
{
   import §#]§.*;
   
   public class b2DynamicTreeBroadPhase implements §0!K§
   {
       
      
      private var §^!Y§:b2DynamicTree;
      
      private var §#r§:int;
      
      private var §6"'§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!Y§ = new b2DynamicTree();
            loop0:
            while(true)
            {
               this.§6"'§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  loop2:
                  while(!_loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        super();
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §'X§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§^!Y§.§'X§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§#r§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               _loc4_.§#r§ = _loc5_;
            }
            if(!(_loc6_ && param1))
            {
               this.§&i§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §,K§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§!!T§(param1);
            if(_loc4_ || this)
            {
               §§goto(addr48);
            }
            §§goto(addr70);
         }
         addr48:
         var _loc2_:*;
         §§push((_loc2_ = this).§#r§);
         if(_loc4_)
         {
            §§push(§§pop() - 1);
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.§#r§ = _loc3_;
         }
         if(!(_loc5_ && this))
         {
            addr70:
            this.§^!Y§.§,K§(param1);
         }
      }
      
      public function §"!,§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§^!Y§.§"!,§(param1,param2,param3));
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc6_ && param2))
            {
               this.§&i§(param1);
            }
         }
      }
      
      public function §3§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§^!Y§.§-Z§(param1);
         var _loc4_:b2AABB = this.§^!Y§.§-Z§(param2);
         return _loc3_.§3§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§^!Y§.GetUserData(param1);
      }
      
      public function §-Z§(param1:*) : b2AABB
      {
         return this.§^!Y§.§-Z§(param1);
      }
      
      public function §9g§() : int
      {
         return this.§#r§;
      }
      
      public function §+_§(param1:Function) : void
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
                           while(_loc6_ || _loc2_)
                           {
                              §§pop().§§slot[5] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(null);
                                    addr133:
                                    while(!_loc5_)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(_loc6_)
                                          {
                                             §§push(undefined);
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                §§push(undefined);
                                                addr100:
                                                continue loop10;
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§pop().§§slot[8] = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                            addr69:
                                                         }
                                                         §§push(§§newactivation());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            continue loop8;
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().§§slot[1] = param1;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr88:
                                                                        while(true)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue loop6;
                                 }
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
      
      public function §const§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§^!Y§.§const§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^!Y§.RayCast(param1,param2);
         }
      }
      
      public function §5G§() : void
      {
      }
      
      public function §]!N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!Y§.§]!N§(param1);
         }
      }
      
      private function §&i§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6"'§[this.§6"'§.length] = param1;
         }
      }
      
      private function §!!T§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§6"'§.indexOf(param1);
         if(!(_loc3_ && param1))
         {
            this.§6"'§.splice(_loc2_,1);
         }
      }
      
      private function §6!^§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
