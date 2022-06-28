package §`!H§
{
   import §?!&§.*;
   
   public class b2DynamicTreeBroadPhase implements §>u§
   {
       
      
      private var §8!^§:b2DynamicTree;
      
      private var §"I§:int;
      
      private var §=!8§:Vector.<b2DynamicTreeNode>;
      
      private var §-!`§:Vector.<b2DynamicTreePair>;
      
      private var §;U§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§8!^§ = new b2DynamicTree();
         this.§=!8§ = new Vector.<b2DynamicTreeNode>();
         this.§-!`§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'R§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§8!^§.§'R§(param1,param2);
         ++this.§"I§;
         this.§,"§(_loc3_);
         return _loc3_;
      }
      
      public function §^!B§(param1:*) : void
      {
         this.§9"§(param1);
         --this.§"I§;
         this.§8!^§.§^!B§(param1);
      }
      
      public function §5N§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = this.§8!^§.§5N§(param1,param2,param3);
         if(_loc4_)
         {
            this.§,"§(param1);
         }
      }
      
      public function §>!N§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§8!^§.§6A§(param1);
         var _loc4_:b2AABB = this.§8!^§.§6A§(param2);
         return _loc3_.§>!N§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§8!^§.GetUserData(param1);
      }
      
      public function §6A§(param1:*) : b2AABB
      {
         return this.§8!^§.§6A§(param1);
      }
      
      public function §2!J§() : int
      {
         return this.§"I§;
      }
      
      public function §<!Q§(param1:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.§;U§ = 0;
         for each(queryProxy in this.§=!8§)
         {
            var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(§;U§ == §-!`§.length)
               {
                  §-!`§[§;U§] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = §-!`§[§;U§];
               _loc2_.§1&§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§5!f§ = param1 >= queryProxy ? param1 : queryProxy;
               ++§;U§;
               return true;
            };
            fatAABB = this.§8!^§.§6A§(queryProxy);
            this.§8!^§.§9!e§(QueryCallback,fatAABB);
         }
         this.§=!8§.length = 0;
         i = 0;
         while(i < this.§;U§)
         {
            primaryPair = this.§-!`§[i];
            userDataA = this.§8!^§.GetUserData(primaryPair.§1&§);
            userDataB = this.§8!^§.GetUserData(primaryPair.§5!f§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.§;U§)
            {
               pair = this.§-!`§[i];
               if(pair.§1&§ != primaryPair.§1&§ || pair.§5!f§ != primaryPair.§5!f§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §9!e§(param1:Function, param2:b2AABB) : void
      {
         this.§8!^§.§9!e§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§8!^§.RayCast(param1,param2);
      }
      
      public function §9+§() : void
      {
      }
      
      public function §[X§(param1:int) : void
      {
         this.§8!^§.§[X§(param1);
      }
      
      private function §,"§(param1:b2DynamicTreeNode) : void
      {
         this.§=!8§[this.§=!8§.length] = param1;
      }
      
      private function §9"§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§=!8§.indexOf(param1);
         this.§=!8§.splice(_loc2_,1);
      }
      
      private function § 5§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
