package §7"^§
{
   import §%!9§.*;
   
   public class b2DynamicTreeBroadPhase implements §'"J§
   {
       
      
      private var §5#0§:b2DynamicTree;
      
      private var §8l§:int;
      
      private var §^p§:Vector.<b2DynamicTreeNode>;
      
      private var §^E§:Vector.<b2DynamicTreePair>;
      
      private var §-3§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§5#0§ = new b2DynamicTree();
         this.§^p§ = new Vector.<b2DynamicTreeNode>();
         this.§^E§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §;!C§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§5#0§.§;!C§(param1,param2);
         ++this.§8l§;
         this.§="s§(_loc3_);
         return _loc3_;
      }
      
      public function §-!"§(param1:*) : void
      {
         this.§!!p§(param1);
         --this.§8l§;
         this.§5#0§.§-!"§(param1);
      }
      
      public function §[H§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§5#0§.§[H§(param1,param2,param3))
         {
            this.§="s§(param1);
         }
      }
      
      public function §+$&§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§5#0§.§8!z§(param1);
         var _loc4_:b2AABB = this.§5#0§.§8!z§(param2);
         return _loc3_.§+$&§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§5#0§.GetUserData(param1);
      }
      
      public function §8!z§(param1:*) : b2AABB
      {
         return this.§5#0§.§8!z§(param1);
      }
      
      public function §@$§() : int
      {
         return this.§8l§;
      }
      
      public function §>I§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§-3§ = 0;
         for each(_loc2_ in this.§^p§)
         {
            _loc4_ = this.§5#0§.§8!z§(_loc2_);
            this.§5#0§.§7"9§(this.§2"F§,_loc4_,_loc2_);
         }
         this.§^p§.length = 0;
         _loc3_ = 0;
         while(_loc3_ < this.§-3§)
         {
            _loc5_ = this.§^E§[_loc3_];
            _loc6_ = this.§5#0§.GetUserData(_loc5_.§7"'§);
            _loc7_ = this.§5#0§.GetUserData(_loc5_.§>z§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§-3§)
            {
               if((_loc8_ = this.§^E§[_loc3_]).§7"'§ != _loc5_.§7"'§ || _loc8_.§>z§ != _loc5_.§>z§)
               {
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public function §2"F§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§-3§ == this.§^E§.length)
         {
            this.§^E§[this.§-3§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§^E§[this.§-3§];
         _loc3_.§7"'§ = param1 < param2 ? param1 : param2;
         _loc3_.§>z§ = param1 >= param2 ? param1 : param2;
         ++this.§-3§;
         return true;
      }
      
      public function §7"9§(param1:Function, param2:b2AABB) : void
      {
         this.§5#0§.§7"9§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§5#0§.RayCast(param1,param2);
      }
      
      public function §-X§() : void
      {
      }
      
      public function §<!2§(param1:int) : void
      {
         this.§5#0§.§<!2§(param1);
      }
      
      private function §="s§(param1:b2DynamicTreeNode) : void
      {
         this.§^p§[this.§^p§.length] = param1;
      }
      
      private function §!!p§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§^p§.indexOf(param1);
         this.§^p§.splice(_loc2_,1);
      }
      
      private function §!##§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
