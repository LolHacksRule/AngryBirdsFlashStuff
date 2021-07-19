package §'"-§
{
   import §6!^§.*;
   
   public class b2DynamicTreeBroadPhase implements §3Q§
   {
       
      
      private var §+!@§:b2DynamicTree;
      
      private var §2!=§:int;
      
      private var §0"@§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!@§ = new b2DynamicTree();
            while(true)
            {
               this.§0"@§ = new Vector.<b2DynamicTreeNode>();
               addr67:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
            while(!_loc1_)
            {
               super();
               if(!_loc1_)
               {
                  return;
               }
            }
            §§goto(addr67);
         }
      }
      
      public function §!!$§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§+!@§.§!!$§(param1,param2);
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§2!=§);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               _loc4_.§2!=§ = _loc5_;
            }
            if(_loc6_ || param1)
            {
               addr77:
               this.§&"T§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr77);
      }
      
      public function §&-§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            this.§1u§(param1);
            if(_loc4_)
            {
               §§goto(addr48);
            }
            §§goto(addr70);
         }
         addr48:
         var _loc2_:*;
         §§push((_loc2_ = this).§2!=§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() - 1);
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.§2!=§ = _loc3_;
         }
         if(_loc4_)
         {
            addr70:
            this.§+!@§.§&-§(param1);
         }
      }
      
      public function § c§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§+!@§.§ c§(param1,param2,param3));
         if(!(_loc6_ && param2))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_ || param3)
            {
               this.§&"T§(param1);
            }
         }
      }
      
      public function §9e§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§+!@§.§""8§(param1);
         var _loc4_:b2AABB = this.§+!@§.§""8§(param2);
         return _loc3_.§9e§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§+!@§.GetUserData(param1);
      }
      
      public function §""8§(param1:*) : b2AABB
      {
         return this.§+!@§.§""8§(param1);
      }
      
      public function §4!>§() : int
      {
         return this.§2!=§;
      }
      
      public function §=q§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     addr154:
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr146:
                        while(true)
                        {
                           §§push(null);
                           addr147:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr149:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(_loc6_ && param1)
            {
               continue;
            }
            §§push(undefined);
            if(!_loc6_)
            {
               §§pop().§§slot[8] = §§pop();
               §§goto(addr113);
            }
            §§goto(addr128);
         }
      }
      
      public function §^"Y§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§+!@§.§^"Y§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§+!@§.RayCast(param1,param2);
         }
      }
      
      public function §8!V§() : void
      {
      }
      
      public function § r§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!@§.§ r§(param1);
         }
      }
      
      private function §&"T§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0"@§[this.§0"@§.length] = param1;
         }
      }
      
      private function §1u§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§0"@§.indexOf(param1);
         if(!_loc3_)
         {
            this.§0"@§.splice(_loc2_,1);
         }
      }
      
      private function §<8§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
