package §>!Z§
{
   import §&H§.*;
   
   public class b2DynamicTreeBroadPhase implements §<P§
   {
       
      
      private var §?!P§:b2DynamicTree;
      
      private var §"!E§:int;
      
      private var §1B§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§?!P§ = new b2DynamicTree();
            loop0:
            while(true)
            {
               this.§1B§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     continue loop0;
                     while(true)
                     {
                        super();
                        if(!_loc2_)
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
         §§goto(addr75);
      }
      
      public function §[E§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§?!P§.§[E§(param1,param2);
         if(!(_loc7_ && this))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§"!E§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§"!E§ = _loc5_;
            }
            if(_loc6_)
            {
               addr72:
               this.§4!e§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr72);
      }
      
      public function §#i§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§]!I§(param1);
            if(!(_loc4_ && param1))
            {
               addr54:
               var _loc2_:*;
               §§push((_loc2_ = this).§"!E§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  _loc2_.§"!E§ = _loc3_;
               }
               if(!_loc4_)
               {
                  this.§?!P§.§#i§(param1);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §"d§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§?!P§.§"d§(param1,param2,param3));
         if(_loc5_ || param3)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!_loc6_)
            {
               this.§4!e§(param1);
            }
         }
      }
      
      public function §]I§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?!P§.§8"§(param1);
         var _loc4_:b2AABB = this.§?!P§.§8"§(param2);
         return _loc3_.§]I§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?!P§.GetUserData(param1);
      }
      
      public function §8"§(param1:*) : b2AABB
      {
         return this.§?!P§.§8"§(param1);
      }
      
      public function §^!A§() : int
      {
         return this.§"!E§;
      }
      
      public function §9N§(param1:Function) : void
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
                        while(_loc5_)
                        {
                           §§push(null);
                           loop6:
                           for(; !_loc6_; loop9:
                           while(_loc5_ || _loc2_)
                           {
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop11:
                                 while(_loc5_)
                                 {
                                    §§push(undefined);
                                    while(true)
                                    {
                                       §§pop().§§slot[7] = §§pop();
                                       addr121:
                                       addr94:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr85:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop11;
                                             addr44:
                                             if(_loc5_ || _loc2_)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       §§push(undefined);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§pop().§§slot[8] = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[9] = §§pop();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr40:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§goto(addr44);
                                                      }
                                                      addr60:
                                                      continue loop5;
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop17;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr121);
                                             §§goto(addr85);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr124);
                              }
                           })
                           {
                              §§pop().§§slot[5] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 addr124:
                                 while(true)
                                 {
                                    §§push(null);
                                    continue loop6;
                                 }
                              }
                           }
                           continue loop1;
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           §§pop().§§slot[1] = param1;
                           §§goto(addr60);
                        }
                        continue loop0;
                     }
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr94);
                  }
               }
            }
         }
      }
      
      public function § [§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!P§.§ [§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§?!P§.RayCast(param1,param2);
         }
      }
      
      public function §4!B§() : void
      {
      }
      
      public function §8"$§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!P§.§8"$§(param1);
         }
      }
      
      private function §4!e§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1B§[this.§1B§.length] = param1;
         }
      }
      
      private function §]!I§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§1B§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            this.§1B§.splice(_loc2_,1);
         }
      }
      
      private function §"!w§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
