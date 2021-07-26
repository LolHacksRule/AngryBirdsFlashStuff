package §,#E§
{
   import §04§.*;
   
   public class b2DynamicTreeBroadPhase implements § #Z§
   {
       
      
      private var §%"Q§:b2DynamicTree;
      
      private var §>c§:int;
      
      private var §'L§:Vector.<b2DynamicTreeNode>;
      
      private var §%6§:Vector.<b2DynamicTreePair>;
      
      private var §%z§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§%"Q§ = new b2DynamicTree();
         this.§'L§ = new Vector.<b2DynamicTreeNode>();
         this.§%6§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §7#0§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§%"Q§.§7#0§(param1,param2);
         ++this.§>c§;
         this.§<#"§(_loc3_);
         return _loc3_;
      }
      
      public function §,7§(param1:*) : void
      {
         this.§"!D§(param1);
         --this.§>c§;
         this.§%"Q§.§,7§(param1);
      }
      
      public function §2"4§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§%"Q§.§2"4§(param1,param2,param3))
         {
            this.§<#"§(param1);
         }
      }
      
      public function §2#%§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§%"Q§.§;$1§(param1);
         var _loc4_:b2AABB = this.§%"Q§.§;$1§(param2);
         return _loc3_.§2#%§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§%"Q§.GetUserData(param1);
      }
      
      public function §;$1§(param1:*) : b2AABB
      {
         return this.§%"Q§.§;$1§(param1);
      }
      
      public function §,!0§() : int
      {
         return this.§>c§;
      }
      
      public function §!"o§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§%z§ = 0;
         for each(_loc2_ in this.§'L§)
         {
            _loc4_ = this.§%"Q§.§;$1§(_loc2_);
            this.§%"Q§.§0$&§(this.§^$C§,_loc4_,_loc2_);
         }
         this.§'L§.length = 0;
         _loc3_ = 0;
         while(_loc3_ < this.§%z§)
         {
            _loc5_ = this.§%6§[_loc3_];
            _loc6_ = this.§%"Q§.GetUserData(_loc5_.§^#1§);
            _loc7_ = this.§%"Q§.GetUserData(_loc5_.§2$A§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§%z§)
            {
               if((_loc8_ = this.§%6§[_loc3_]).§^#1§ != _loc5_.§^#1§ || _loc8_.§2$A§ != _loc5_.§2$A§)
               {
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public function §^$C§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§%z§ == this.§%6§.length)
         {
            this.§%6§[this.§%z§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§%6§[this.§%z§];
         _loc3_.§^#1§ = param1 < param2 ? param1 : param2;
         _loc3_.§2$A§ = param1 >= param2 ? param1 : param2;
         ++this.§%z§;
         return true;
      }
      
      public function §0$&§(param1:Function, param2:b2AABB) : void
      {
         this.§%"Q§.§0$&§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§%"Q§.RayCast(param1,param2);
      }
      
      public function §5j§() : void
      {
      }
      
      public function §7!L§(param1:int) : void
      {
         this.§%"Q§.§7!L§(param1);
      }
      
      private function §<#"§(param1:b2DynamicTreeNode) : void
      {
         this.§'L§[this.§'L§.length] = param1;
      }
      
      private function §"!D§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§'L§.indexOf(param1);
         this.§'L§.splice(_loc2_,1);
      }
      
      private function §1#,§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
