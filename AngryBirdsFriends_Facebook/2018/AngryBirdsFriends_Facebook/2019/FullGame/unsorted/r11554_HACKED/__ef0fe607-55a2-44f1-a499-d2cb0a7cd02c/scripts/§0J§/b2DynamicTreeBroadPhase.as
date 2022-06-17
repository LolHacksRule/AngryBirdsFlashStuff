package §0J§
{
   import §`# §.*;
   
   public class b2DynamicTreeBroadPhase implements §"#O§
   {
       
      
      private var §<##§:b2DynamicTree;
      
      private var §%!=§:int;
      
      private var §,##§:Vector.<b2DynamicTreeNode>;
      
      private var §<"j§:Vector.<b2DynamicTreePair>;
      
      private var §="P§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§<##§ = new b2DynamicTree();
         this.§,##§ = new Vector.<b2DynamicTreeNode>();
         this.§<"j§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §-"g§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§<##§.§-"g§(param1,param2);
         ++this.§%!=§;
         this.§'!H§(_loc3_);
         return _loc3_;
      }
      
      public function §<v§(param1:*) : void
      {
         this.§`4§(param1);
         --this.§%!=§;
         this.§<##§.§<v§(param1);
      }
      
      public function §5!0§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         if(this.§<##§.§5!0§(param1,param2,param3))
         {
            this.§'!H§(param1);
         }
      }
      
      public function §!"5§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<##§.§9!&§(param1);
         var _loc4_:b2AABB = this.§<##§.§9!&§(param2);
         return _loc3_.§!"5§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<##§.GetUserData(param1);
      }
      
      public function §9!&§(param1:*) : b2AABB
      {
         return this.§<##§.§9!&§(param1);
      }
      
      public function §["2§() : int
      {
         return this.§%!=§;
      }
      
      public function §8#j§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§="P§ = 0;
         for each(_loc2_ in this.§,##§)
         {
            _loc4_ = this.§<##§.§9!&§(_loc2_);
            this.§<##§.§0!8§(this.§?-§,_loc4_,_loc2_);
         }
         this.§,##§.length = 0;
         _loc3_ = 0;
         loop1:
         while(_loc3_ < this.§="P§)
         {
            _loc5_ = this.§<"j§[_loc3_];
            _loc6_ = this.§<##§.GetUserData(_loc5_.§[#G§);
            _loc7_ = this.§<##§.GetUserData(_loc5_.§[$@§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§="P§)
            {
               if((_loc8_ = this.§<"j§[_loc3_]).§[#G§ != _loc5_.§[#G§ || _loc8_.§[$@§ != _loc5_.§[$@§)
               {
                  continue loop1;
               }
               _loc3_++;
            }
         }
      }
      
      public function §?-§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§="P§ == this.§<"j§.length)
         {
            this.§<"j§[this.§="P§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§<"j§[this.§="P§];
         _loc3_.§[#G§ = param1 < param2 ? param1 : param2;
         _loc3_.§[$@§ = param1 >= param2 ? param1 : param2;
         ++this.§="P§;
         return true;
      }
      
      public function §0!8§(param1:Function, param2:b2AABB) : void
      {
         this.§<##§.§0!8§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§<##§.RayCast(param1,param2);
      }
      
      public function §5l§() : void
      {
      }
      
      public function §2k§(param1:int) : void
      {
         this.§<##§.§2k§(param1);
      }
      
      private function §'!H§(param1:b2DynamicTreeNode) : void
      {
         this.§,##§[this.§,##§.length] = param1;
      }
      
      private function §`4§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§,##§.indexOf(param1);
         this.§,##§.splice(_loc2_,1);
      }
      
      private function §^!N§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
