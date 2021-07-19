package §3"q§
{
   import §0m§.*;
   
   public class b2DynamicTreeBroadPhase implements §2"E§
   {
       
      
      private var §@"%§:b2DynamicTree;
      
      private var §&"§:int;
      
      private var §4$ §:Vector.<b2DynamicTreeNode>;
      
      private var §>a§:Vector.<b2DynamicTreePair>;
      
      private var §=!S§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§@"%§ = new b2DynamicTree();
         this.§4$ § = new Vector.<b2DynamicTreeNode>();
         this.§>a§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §=&§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§@"%§.§=&§(param1,param2);
         ++this.§&"§;
         this.§6t§(_loc3_);
         return _loc3_;
      }
      
      public function §'!g§(param1:*) : void
      {
         this.§-p§(param1);
         --this.§&"§;
         this.§@"%§.§'!g§(param1);
      }
      
      public function §2$+§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         if(this.§@"%§.§2$+§(param1,param2,param3))
         {
            this.§6t§(param1);
         }
      }
      
      public function §4"t§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§@"%§.§8"2§(param1);
         var _loc4_:b2AABB = this.§@"%§.§8"2§(param2);
         return _loc3_.§4"t§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§@"%§.GetUserData(param1);
      }
      
      public function §8"2§(param1:*) : b2AABB
      {
         return this.§@"%§.§8"2§(param1);
      }
      
      public function §+#^§() : int
      {
         return this.§&"§;
      }
      
      public function §7E§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§=!S§ = 0;
         for each(_loc2_ in this.§4$ §)
         {
            _loc4_ = this.§@"%§.§8"2§(_loc2_);
            this.§@"%§.§?!F§(this.§6";§,_loc4_,_loc2_);
         }
         this.§4$ §.length = 0;
         _loc3_ = 0;
         loop1:
         while(_loc3_ < this.§=!S§)
         {
            _loc5_ = this.§>a§[_loc3_];
            _loc6_ = this.§@"%§.GetUserData(_loc5_.§["-§);
            _loc7_ = this.§@"%§.GetUserData(_loc5_.§?$;§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§=!S§)
            {
               if((_loc8_ = this.§>a§[_loc3_]).§["-§ != _loc5_.§["-§ || _loc8_.§?$;§ != _loc5_.§?$;§)
               {
                  continue loop1;
               }
               _loc3_++;
            }
         }
      }
      
      public function §6";§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§=!S§ == this.§>a§.length)
         {
            this.§>a§[this.§=!S§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§>a§[this.§=!S§];
         _loc3_.§["-§ = param1 < param2 ? param1 : param2;
         _loc3_.§?$;§ = param1 >= param2 ? param1 : param2;
         ++this.§=!S§;
         return true;
      }
      
      public function §?!F§(param1:Function, param2:b2AABB) : void
      {
         this.§@"%§.§?!F§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§@"%§.RayCast(param1,param2);
      }
      
      public function §0!v§() : void
      {
      }
      
      public function §"O§(param1:int) : void
      {
         this.§@"%§.§"O§(param1);
      }
      
      private function §6t§(param1:b2DynamicTreeNode) : void
      {
         this.§4$ §[this.§4$ §.length] = param1;
      }
      
      private function §-p§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4$ §.indexOf(param1);
         this.§4$ §.splice(_loc2_,1);
      }
      
      private function §`!0§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
