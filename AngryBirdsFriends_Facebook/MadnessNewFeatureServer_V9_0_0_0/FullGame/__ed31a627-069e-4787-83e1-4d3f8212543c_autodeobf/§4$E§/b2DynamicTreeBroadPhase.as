package §4$E§
{
   import §?!C§.*;
   
   public class b2DynamicTreeBroadPhase implements §2!I§
   {
       
      
      private var §^S§:b2DynamicTree;
      
      private var §=O§:int;
      
      private var §!#o§:Vector.<b2DynamicTreeNode>;
      
      private var §;!W§:Vector.<b2DynamicTreePair>;
      
      private var §]#?§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§^S§ = new b2DynamicTree();
         this.§!#o§ = new Vector.<b2DynamicTreeNode>();
         this.§;!W§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §@7§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§^S§.§@7§(param1,param2);
         ++this.§=O§;
         this.§0$$§(_loc3_);
         return _loc3_;
      }
      
      public function §=K§(param1:*) : void
      {
         this.§=#§(param1);
         --this.§=O§;
         this.§^S§.§=K§(param1);
      }
      
      public function §-#+§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§^S§.§-#+§(param1,param2,param3))
         {
            this.§0$$§(param1);
         }
      }
      
      public function §9#]§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§^S§.§'"O§(param1);
         var _loc4_:b2AABB = this.§^S§.§'"O§(param2);
         return _loc3_.§9#]§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§^S§.GetUserData(param1);
      }
      
      public function §'"O§(param1:*) : b2AABB
      {
         return this.§^S§.§'"O§(param1);
      }
      
      public function §if§() : int
      {
         return this.§=O§;
      }
      
      public function §=?§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§]#?§ = 0;
         for each(_loc2_ in this.§!#o§)
         {
            _loc4_ = this.§^S§.§'"O§(_loc2_);
            this.§^S§.§^#E§(this.§4!S§,_loc4_,_loc2_);
         }
         this.§!#o§.length = 0;
         _loc3_ = 0;
         while(_loc3_ < this.§]#?§)
         {
            _loc5_ = this.§;!W§[_loc3_];
            _loc6_ = this.§^S§.GetUserData(_loc5_.§#"X§);
            _loc7_ = this.§^S§.GetUserData(_loc5_.§-!x§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§]#?§)
            {
               if((_loc8_ = this.§;!W§[_loc3_]).§#"X§ != _loc5_.§#"X§ || _loc8_.§-!x§ != _loc5_.§-!x§)
               {
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public function §4!S§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§]#?§ == this.§;!W§.length)
         {
            this.§;!W§[this.§]#?§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§;!W§[this.§]#?§];
         _loc3_.§#"X§ = param1 < param2 ? param1 : param2;
         _loc3_.§-!x§ = param1 >= param2 ? param1 : param2;
         ++this.§]#?§;
         return true;
      }
      
      public function §^#E§(param1:Function, param2:b2AABB) : void
      {
         this.§^S§.§^#E§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§^S§.RayCast(param1,param2);
      }
      
      public function §@$A§() : void
      {
      }
      
      public function §[$9§(param1:int) : void
      {
         this.§^S§.§[$9§(param1);
      }
      
      private function §0$$§(param1:b2DynamicTreeNode) : void
      {
         this.§!#o§[this.§!#o§.length] = param1;
      }
      
      private function §=#§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§!#o§.indexOf(param1);
         this.§!#o§.splice(_loc2_,1);
      }
      
      private function §8"[§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
