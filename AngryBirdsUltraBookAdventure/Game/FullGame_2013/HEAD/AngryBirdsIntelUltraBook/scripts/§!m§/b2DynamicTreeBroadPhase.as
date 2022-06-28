package §!m§
{
   import §>!8§.*;
   
   public class b2DynamicTreeBroadPhase implements §"%§
   {
       
      
      private var §9!L§:b2DynamicTree;
      
      private var § 6§:int;
      
      private var §'!2§:Vector.<b2DynamicTreeNode>;
      
      private var §5E§:Vector.<b2DynamicTreePair>;
      
      private var §4!J§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§9!L§ = new b2DynamicTree();
         this.§'!2§ = new Vector.<b2DynamicTreeNode>();
         this.§5E§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §>!I§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§9!L§.§>!I§(param1,param2);
         ++this.§ 6§;
         this.§"]§(_loc3_);
         return _loc3_;
      }
      
      public function §,!c§(param1:*) : void
      {
         this.§7!Y§(param1);
         --this.§ 6§;
         this.§9!L§.§,!c§(param1);
      }
      
      public function §]Z§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = this.§9!L§.§]Z§(param1,param2,param3);
         if(_loc4_)
         {
            this.§"]§(param1);
         }
      }
      
      public function § V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9!L§.§9!X§(param1);
         var _loc4_:b2AABB = this.§9!L§.§9!X§(param2);
         return _loc3_.§ V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9!L§.GetUserData(param1);
      }
      
      public function §9!X§(param1:*) : b2AABB
      {
         return this.§9!L§.§9!X§(param1);
      }
      
      public function §,A§() : int
      {
         return this.§ 6§;
      }
      
      public function §"!P§(param1:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.§4!J§ = 0;
         for each(queryProxy in this.§'!2§)
         {
            var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(§4!J§ == §5E§.length)
               {
                  §5E§[§4!J§] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = §5E§[§4!J§];
               _loc2_.§'[§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§4P§ = param1 >= queryProxy ? param1 : queryProxy;
               ++§4!J§;
               return true;
            };
            fatAABB = this.§9!L§.§9!X§(queryProxy);
            this.§9!L§.§99§(QueryCallback,fatAABB);
         }
         this.§'!2§.length = 0;
         i = 0;
         loop1:
         while(i < this.§4!J§)
         {
            primaryPair = this.§5E§[i];
            userDataA = this.§9!L§.GetUserData(primaryPair.§'[§);
            userDataB = this.§9!L§.GetUserData(primaryPair.§4P§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.§4!J§)
            {
               pair = this.§5E§[i];
               if(pair.§'[§ != primaryPair.§'[§ || pair.§4P§ != primaryPair.§4P§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §99§(param1:Function, param2:b2AABB) : void
      {
         this.§9!L§.§99§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§9!L§.RayCast(param1,param2);
      }
      
      public function §7v§() : void
      {
      }
      
      public function §`!6§(param1:int) : void
      {
         this.§9!L§.§`!6§(param1);
      }
      
      private function §"]§(param1:b2DynamicTreeNode) : void
      {
         this.§'!2§[this.§'!2§.length] = param1;
      }
      
      private function §7!Y§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§'!2§.indexOf(param1);
         this.§'!2§.splice(_loc2_,1);
      }
      
      private function §65§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
