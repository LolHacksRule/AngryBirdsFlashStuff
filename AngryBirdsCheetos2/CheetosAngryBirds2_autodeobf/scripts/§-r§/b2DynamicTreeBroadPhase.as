package §-r§
{
   import §6!H§.*;
   
   public class b2DynamicTreeBroadPhase implements §@C§
   {
       
      
      private var §-o§:b2DynamicTree;
      
      private var §?w§:int;
      
      private var §=u§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-o§ = new b2DynamicTree();
         }
         loop0:
         while(true)
         {
            this.§=u§ = new Vector.<b2DynamicTreeNode>();
            while(true)
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     super();
                     if(!_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §1<§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§-o§.§1<§(param1,param2);
         if(!(_loc6_ && param2))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§?w§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || this)
            {
               _loc4_.§?w§ = _loc5_;
            }
            if(_loc7_ || this)
            {
               this.§8!J§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §%!4§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§&,§(param1);
            if(_loc5_ || _loc2_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§?w§);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.§?w§ = _loc3_;
               }
               if(_loc5_)
               {
                  this.§-o§.§%!4§(param1);
               }
            }
         }
      }
      
      public function §-H§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§-o§.§-H§(param1,param2,param3));
         if(!(_loc6_ && param3))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_)
            {
               this.§8!J§(param1);
            }
         }
      }
      
      public function §"!F§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§-o§.§4!^§(param1);
         var _loc4_:b2AABB = this.§-o§.§4!^§(param2);
         return _loc3_.§"!F§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§-o§.GetUserData(param1);
      }
      
      public function §4!^§(param1:*) : b2AABB
      {
         return this.§-o§.§4!^§(param1);
      }
      
      public function §<Q§() : int
      {
         return this.§?w§;
      }
      
      public function §]@§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr172:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr174:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §#c§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-o§.§#c§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-o§.RayCast(param1,param2);
         }
      }
      
      public function §6!<§() : void
      {
      }
      
      public function §>!R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-o§.§>!R§(param1);
         }
      }
      
      private function §8!J§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=u§[this.§=u§.length] = param1;
         }
      }
      
      private function §&,§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§=u§.indexOf(param1);
         if(!(_loc4_ && _loc2_))
         {
            this.§=u§.splice(_loc2_,1);
         }
      }
      
      private function §2!U§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
