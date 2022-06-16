package §'"$§
{
   import § "%§.*;
   
   public class b2DynamicTreeBroadPhase implements §`$&§
   {
       
      
      private var §!x§:b2DynamicTree;
      
      private var §4N§:int;
      
      private var §5"J§:Vector.<b2DynamicTreeNode>;
      
      private var §]#3§:Vector.<b2DynamicTreePair>;
      
      private var §4&§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§!x§ = new b2DynamicTree();
         this.§5"J§ = new Vector.<b2DynamicTreeNode>();
         this.§]#3§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'"4§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§!x§.§'"4§(param1,param2);
         ++this.§4N§;
         this.§0c§(_loc3_);
         return _loc3_;
      }
      
      public function §8e§(param1:*) : void
      {
         this.§##o§(param1);
         --this.§4N§;
         this.§!x§.§8e§(param1);
      }
      
      public function §=$7§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§!x§.§=$7§(param1,param2,param3))
         {
            this.§0c§(param1);
         }
      }
      
      public function §4"-§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§!x§.§+5§(param1);
         var _loc4_:b2AABB = this.§!x§.§+5§(param2);
         return _loc3_.§4"-§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§!x§.GetUserData(param1);
      }
      
      public function §+5§(param1:*) : b2AABB
      {
         return this.§!x§.§+5§(param1);
      }
      
      public function §!!Q§() : int
      {
         return this.§4N§;
      }
      
      public function §3x§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§4&§ = 0;
         for each(_loc2_ in this.§5"J§)
         {
            _loc4_ = this.§!x§.§+5§(_loc2_);
            this.§!x§.§?#c§(this.§[2§,_loc4_,_loc2_);
         }
         this.§5"J§.length = 0;
         _loc3_ = 0;
         while(_loc3_ < this.§4&§)
         {
            _loc5_ = this.§]#3§[_loc3_];
            _loc6_ = this.§!x§.GetUserData(_loc5_.§6"e§);
            _loc7_ = this.§!x§.GetUserData(_loc5_.§1#_§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§4&§)
            {
               if((_loc8_ = this.§]#3§[_loc3_]).§6"e§ != _loc5_.§6"e§ || _loc8_.§1#_§ != _loc5_.§1#_§)
               {
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public function §[2§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§4&§ == this.§]#3§.length)
         {
            this.§]#3§[this.§4&§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§]#3§[this.§4&§];
         _loc3_.§6"e§ = param1 < param2 ? param1 : param2;
         _loc3_.§1#_§ = param1 >= param2 ? param1 : param2;
         ++this.§4&§;
         return true;
      }
      
      public function §?#c§(param1:Function, param2:b2AABB) : void
      {
         this.§!x§.§?#c§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§!x§.RayCast(param1,param2);
      }
      
      public function §9#U§() : void
      {
      }
      
      public function §4$5§(param1:int) : void
      {
         this.§!x§.§4$5§(param1);
      }
      
      private function §0c§(param1:b2DynamicTreeNode) : void
      {
         this.§5"J§[this.§5"J§.length] = param1;
      }
      
      private function §##o§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§5"J§.indexOf(param1);
         this.§5"J§.splice(_loc2_,1);
      }
      
      private function §"#_§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
