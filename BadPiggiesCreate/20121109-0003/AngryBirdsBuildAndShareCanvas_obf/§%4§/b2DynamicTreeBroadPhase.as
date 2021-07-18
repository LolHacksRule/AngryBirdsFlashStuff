package §%4§
{
   import §<!a§.*;
   
   public class b2DynamicTreeBroadPhase implements §0w§
   {
       
      
      private var § !o§:b2DynamicTree;
      
      private var §3!#§:int;
      
      private var §@!-§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ !o§ = new b2DynamicTree();
            while(true)
            {
               this.§@!-§ = new Vector.<b2DynamicTreeNode>();
               loop1:
               while(_loc1_)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  while(true)
                  {
                     super();
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §1S§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§ !o§.§1S§(param1,param2);
         if(!_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§3!#§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               _loc4_.§3!#§ = _loc5_;
            }
            if(_loc7_)
            {
               this.§<!`§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §`q§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§[B§(param1);
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§3!#§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  _loc2_.§3!#§ = _loc3_;
               }
               if(_loc4_)
               {
               }
               §§goto(addr70);
            }
            this.§ !o§.§`q§(param1);
         }
         addr70:
      }
      
      public function §4#§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§ !o§.§4#§(param1,param2,param3));
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_)
            {
               this.§<!`§(param1);
            }
         }
      }
      
      public function §6m§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§ !o§.§=!p§(param1);
         var _loc4_:b2AABB = this.§ !o§.§=!p§(param2);
         return _loc3_.§6m§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§ !o§.GetUserData(param1);
      }
      
      public function §=!p§(param1:*) : b2AABB
      {
         return this.§ !o§.§=!p§(param1);
      }
      
      public function §?!a§() : int
      {
         return this.§3!#§;
      }
      
      public function §=!o§(param1:Function) : void
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
                     addr148:
                     while(_loc6_)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§push(null);
                           addr141:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr143:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 for(; _loc6_; while(true)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       continue loop3;
                                    }
                                    continue loop8;
                                 },continue loop3)
                                 {
                                    §§push(null);
                                    while(true)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       addr137:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop8;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     continue loop2;
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     §§push(undefined);
                     loop12:
                     while(true)
                     {
                        §§pop().§§slot[7] = §§pop();
                        addr129:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop12;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §5%§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§ !o§.§5%§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§ !o§.RayCast(param1,param2);
         }
      }
      
      public function §]3§() : void
      {
      }
      
      public function §=f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !o§.§=f§(param1);
         }
      }
      
      private function §<!`§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@!-§[this.§@!-§.length] = param1;
         }
      }
      
      private function §[B§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§@!-§.indexOf(param1);
         if(!_loc4_)
         {
            this.§@!-§.splice(_loc2_,1);
         }
      }
      
      private function §>"!§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
