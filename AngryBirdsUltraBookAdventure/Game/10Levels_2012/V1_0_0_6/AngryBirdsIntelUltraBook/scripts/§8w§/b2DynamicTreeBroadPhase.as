package §8w§
{
   import §;%§.*;
   
   public class b2DynamicTreeBroadPhase implements §2U§
   {
       
      
      private var §=!4§:b2DynamicTree;
      
      private var §2y§:int;
      
      private var §%! §:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§=!4§ = new b2DynamicTree();
         }
         loop0:
         while(true)
         {
            this.§%! § = new Vector.<b2DynamicTreeNode>();
            do
            {
               this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      public function §1!@§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§=!4§.§1!@§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§2y§);
            if(_loc7_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || param1)
            {
               _loc4_.§2y§ = _loc5_;
            }
            if(_loc7_)
            {
               addr73:
               this.§4!M§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr73);
      }
      
      public function §for §(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§1l§(param1);
            if(!(_loc4_ && _loc2_))
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§2y§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§2y§ = _loc3_;
               }
               if(!_loc4_)
               {
                  this.§=!4§.§for §(param1);
               }
            }
         }
      }
      
      public function §&!N§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§=!4§.§&!N§(param1,param2,param3));
         if(!(_loc5_ && param3))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(!_loc5_)
            {
               this.§4!M§(param1);
            }
         }
      }
      
      public function §3!V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§=!4§.§8!W§(param1);
         var _loc4_:b2AABB = this.§=!4§.§8!W§(param2);
         return _loc3_.§3!V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§=!4§.GetUserData(param1);
      }
      
      public function §8!W§(param1:*) : b2AABB
      {
         return this.§=!4§.§8!W§(param1);
      }
      
      public function §92§() : int
      {
         return this.§2y§;
      }
      
      public function §"-§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr153:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr155:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §4!3§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§=!4§.§4!3§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§=!4§.RayCast(param1,param2);
         }
      }
      
      public function §]!b§() : void
      {
      }
      
      public function §6e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!4§.§6e§(param1);
         }
      }
      
      private function §4!M§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%! §[this.§%! §.length] = param1;
         }
      }
      
      private function §1l§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%! §.indexOf(param1);
         if(_loc3_ || this)
         {
            this.§%! §.splice(_loc2_,1);
         }
      }
      
      private function §[!R§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
