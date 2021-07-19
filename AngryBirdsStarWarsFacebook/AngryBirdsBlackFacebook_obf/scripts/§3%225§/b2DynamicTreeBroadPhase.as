package §3"5§
{
   import §[R§.*;
   
   public class b2DynamicTreeBroadPhase implements §8t§
   {
       
      
      private var §%"C§:b2DynamicTree;
      
      private var §<t§:int;
      
      private var §<#`§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§%"C§ = new b2DynamicTree();
         }
         do
         {
            this.§<#`§ = new Vector.<b2DynamicTreeNode>();
            do
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               do
               {
                  super();
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function § #Q§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§%"C§.§ #Q§(param1,param2);
         if(_loc6_ || this)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§<t§);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§<t§ = _loc5_;
            }
            if(!_loc7_)
            {
               this.§,#M§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §,X§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§?#,§(param1);
            if(!(_loc4_ && _loc2_))
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§<t§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || _loc3_)
               {
                  _loc2_.§<t§ = _loc3_;
               }
               if(!(_loc4_ && _loc3_))
               {
                  addr76:
                  this.§%"C§.§,X§(param1);
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function §=!`§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§%"C§.§=!`§(param1,param2,param3));
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_)
            {
               this.§,#M§(param1);
            }
         }
      }
      
      public function §?#S§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§%"C§.§1"§(param1);
         var _loc4_:b2AABB = this.§%"C§.§1"§(param2);
         return _loc3_.§?#S§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§%"C§.GetUserData(param1);
      }
      
      public function §1"§(param1:*) : b2AABB
      {
         return this.§%"C§.§1"§(param1);
      }
      
      public function §<§() : int
      {
         return this.§<t§;
      }
      
      public function §;"#§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr162:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  addr157:
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     addr159:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(null);
                           addr145:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr147:
                              while(!(_loc6_ && param1))
                              {
                                 §§push(§§newactivation());
                                 continue loop5;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(null);
            loop9:
            for(; !(_loc6_ && this); §§push(null),if(_loc6_ && this)
            {
               continue;
            },if(!_loc6_)
            {
               §§pop().§§slot[9] = §§pop();
               §§goto(addr77);
            },§§goto(addr145))
            {
               §§pop().§§slot[6] = §§pop();
               loop10:
               while(true)
               {
                  §§push(§§newactivation());
                  loop11:
                  while(true)
                  {
                     §§push(undefined);
                     loop12:
                     while(true)
                     {
                        §§pop().§§slot[7] = §§pop();
                        loop13:
                        while(_loc5_ || param1)
                        {
                           §§push(§§newactivation());
                           loop14:
                           while(!_loc6_)
                           {
                              §§push(undefined);
                              if(_loc6_)
                              {
                                 continue loop12;
                              }
                              §§pop().§§slot[8] = §§pop();
                              loop15:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop16:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop9;
                                       }
                                       continue loop11;
                                    }
                                    continue loop14;
                                    addr36:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop().§§slot[1] = param1;
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop13;
                                             }
                                             §§goto(addr147);
                                          }
                                          break;
                                       }
                                       continue loop16;
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr145);
                                 addr77:
                                 while(true)
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       continue loop10;
                                    }
                                    continue loop15;
                                 }
                                 continue loop10;
                              }
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr159);
                     }
                  }
               }
            }
            §§goto(addr162);
         }
      }
      
      public function §in§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§%"C§.§in§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§%"C§.RayCast(param1,param2);
         }
      }
      
      public function §%!&§() : void
      {
      }
      
      public function §"4§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%"C§.§"4§(param1);
         }
      }
      
      private function §,#M§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<#`§[this.§<#`§.length] = param1;
         }
      }
      
      private function §?#,§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§<#`§.indexOf(param1);
         if(_loc4_)
         {
            this.§<#`§.splice(_loc2_,1);
         }
      }
      
      private function §1#<§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
