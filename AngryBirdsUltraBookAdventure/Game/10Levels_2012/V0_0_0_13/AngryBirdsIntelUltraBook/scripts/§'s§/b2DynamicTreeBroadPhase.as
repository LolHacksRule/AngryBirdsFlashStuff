package §'s§
{
   import §&L§.*;
   
   public class b2DynamicTreeBroadPhase implements §8!b§
   {
       
      
      private var §<r§:b2DynamicTree;
      
      private var §&!O§:int;
      
      private var §?!8§:Vector.<b2DynamicTreeNode>;
      
      private var §9W§:Vector.<b2DynamicTreePair>;
      
      private var §?!E§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§<r§ = new b2DynamicTree();
         this.§?!8§ = new Vector.<b2DynamicTreeNode>();
         this.§9W§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §6K§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§<r§.§6K§(param1,param2);
         ++this.§&!O§;
         this.§5!U§(_loc3_);
         return _loc3_;
      }
      
      public function §[!3§(param1:*) : void
      {
         this.§>!P§(param1);
         --this.§&!O§;
         this.§<r§.§[!3§(param1);
      }
      
      public function §]O§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = this.§<r§.§]O§(param1,param2,param3);
         if(_loc4_)
         {
            this.§5!U§(param1);
         }
      }
      
      public function §@w§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<r§.§%!A§(param1);
         var _loc4_:b2AABB = this.§<r§.§%!A§(param2);
         return _loc3_.§@w§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<r§.GetUserData(param1);
      }
      
      public function §%!A§(param1:*) : b2AABB
      {
         return this.§<r§.§%!A§(param1);
      }
      
      public function §8!0§() : int
      {
         return this.§&!O§;
      }
      
      public function dynamic(param1:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.§?!E§ = 0;
         for each(queryProxy in this.§?!8§)
         {
            var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(§?!E§ == §9W§.length)
               {
                  §9W§[§?!E§] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = §9W§[§?!E§];
               _loc2_.§5A§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§"T§ = param1 >= queryProxy ? param1 : queryProxy;
               ++§?!E§;
               return true;
            };
            fatAABB = this.§<r§.§%!A§(queryProxy);
            this.§<r§.§'!Z§(QueryCallback,fatAABB);
         }
         this.§?!8§.length = 0;
         i = 0;
         while(i < this.§?!E§)
         {
            primaryPair = this.§9W§[i];
            userDataA = this.§<r§.GetUserData(primaryPair.§5A§);
            userDataB = this.§<r§.GetUserData(primaryPair.§"T§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.§?!E§)
            {
               pair = this.§9W§[i];
               if(pair.§5A§ != primaryPair.§5A§ || pair.§"T§ != primaryPair.§"T§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §'!Z§(param1:Function, param2:b2AABB) : void
      {
         this.§<r§.§'!Z§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§<r§.RayCast(param1,param2);
      }
      
      public function §5!h§() : void
      {
      }
      
      public function §2x§(param1:int) : void
      {
         this.§<r§.§2x§(param1);
      }
      
      private function §5!U§(param1:b2DynamicTreeNode) : void
      {
         this.§?!8§[this.§?!8§.length] = param1;
      }
      
      private function §>!P§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§?!8§.indexOf(param1);
         this.§?!8§.splice(_loc2_,1);
      }
      
      private function §5x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
