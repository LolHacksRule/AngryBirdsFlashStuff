package §5!o§
{
   import §2"=§.*;
   
   public class b2DynamicTreeBroadPhase implements §#!M§
   {
       
      
      private var §="!§:b2DynamicTree;
      
      private var §?!B§:int;
      
      private var §^"+§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§="!§ = new b2DynamicTree();
         }
         loop0:
         do
         {
            this.§^"+§ = new Vector.<b2DynamicTreeNode>();
            while(true)
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               while(_loc1_)
               {
                  super();
                  if(_loc1_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §>!#§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§="!§.§>!#§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§?!B§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               _loc4_.§?!B§ = _loc5_;
            }
            if(!_loc6_)
            {
               this.§<!q§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §`4§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`b§(param1);
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§?!B§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || this)
               {
                  _loc2_.§?!B§ = _loc3_;
               }
               if(_loc5_)
               {
                  addr71:
                  this.§="!§.§`4§(param1);
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function §-!?§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§="!§.§-!?§(param1,param2,param3));
         if(!(_loc6_ && param2))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!_loc6_)
            {
               this.§<!q§(param1);
            }
         }
      }
      
      public function §;c§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§="!§.§1c§(param1);
         var _loc4_:b2AABB = this.§="!§.§1c§(param2);
         return _loc3_.§;c§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§="!§.GetUserData(param1);
      }
      
      public function §1c§(param1:*) : b2AABB
      {
         return this.§="!§.§1c§(param1);
      }
      
      public function §;"=§() : int
      {
         return this.§?!B§;
      }
      
      public function §^!`§(param1:Function) : void
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
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(null);
                           addr142:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr144:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || this))
            {
               continue;
            }
            §§push(undefined);
            if(_loc5_)
            {
               §§pop().§§slot[8] = §§pop();
               §§goto(addr99);
            }
            §§goto(addr105);
         }
      }
      
      public function §'!!§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§="!§.§'!!§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§="!§.RayCast(param1,param2);
         }
      }
      
      public function §6! §() : void
      {
      }
      
      public function §+Y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§="!§.§+Y§(param1);
         }
      }
      
      private function §<!q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^"+§[this.§^"+§.length] = param1;
         }
      }
      
      private function §`b§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§^"+§.indexOf(param1);
         if(_loc3_)
         {
            this.§^"+§.splice(_loc2_,1);
         }
      }
      
      private function §&!x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
