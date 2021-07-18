package §!§
{
   import §@!E§.*;
   
   public class b2DynamicTreeBroadPhase implements §5!u§
   {
       
      
      private var §#!x§:b2DynamicTree;
      
      private var §var §:int;
      
      private var §[!?§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#!x§ = new b2DynamicTree();
            while(true)
            {
               this.§[!?§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  §§goto(addr60);
               }
            }
         }
         addr60:
         while(true)
         {
            super();
            if(_loc1_)
            {
               if(_loc1_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §=!b§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§#!x§.§=!b§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§var §);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               _loc4_.§var § = _loc5_;
            }
            if(_loc7_ || _loc3_)
            {
               addr73:
               this.§<!p§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr73);
      }
      
      public function §4d§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§0f§(param1);
            if(_loc4_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§var §);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_ || param1)
               {
                  _loc2_.§var § = _loc3_;
               }
               if(_loc4_)
               {
                  addr65:
                  this.§#!x§.§4d§(param1);
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §;!n§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§#!x§.§;!n§(param1,param2,param3));
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!(_loc5_ && param3))
            {
               this.§<!p§(param1);
            }
         }
      }
      
      public function §4I§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§#!x§.dynamic(param1);
         var _loc4_:b2AABB = this.§#!x§.dynamic(param2);
         return _loc3_.§4I§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§#!x§.GetUserData(param1);
      }
      
      public function dynamic(param1:*) : b2AABB
      {
         return this.§#!x§.dynamic(param1);
      }
      
      public function §7!W§() : int
      {
         return this.§var §;
      }
      
      public function §0!Y§(param1:Function) : void
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
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              loop7:
                              while(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                       addr128:
                                    }
                                    §§push(null);
                                    while(_loc6_ || this)
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
                                                addr122:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(undefined);
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§§slot[8] = §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         continue loop14;
                                                         addr92:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     addr32:
                                                                     break;
                                                                     addr32:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(null);
                                    if(!_loc5_)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          continue loop6;
                                       }
                                       §§pop().§§slot[9] = §§pop();
                                       §§goto(addr92);
                                    }
                                    §§goto(addr128);
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §^C§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§#!x§.§^C§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#!x§.RayCast(param1,param2);
         }
      }
      
      public function §@2§() : void
      {
      }
      
      public function §%"%§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#!x§.§%"%§(param1);
         }
      }
      
      private function §<!p§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!?§[this.§[!?§.length] = param1;
         }
      }
      
      private function §0f§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§[!?§.indexOf(param1);
         if(_loc3_)
         {
            this.§[!?§.splice(_loc2_,1);
         }
      }
      
      private function §#!§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
