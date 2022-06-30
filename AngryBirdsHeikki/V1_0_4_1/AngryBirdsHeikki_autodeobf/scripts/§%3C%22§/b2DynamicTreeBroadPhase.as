package §<"§
{
   import §=i§.*;
   
   public class b2DynamicTreeBroadPhase implements §+!5§
   {
       
      
      private var §]#§:b2DynamicTree;
      
      private var §2!S§:int;
      
      private var §3! §:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§]#§ = new b2DynamicTree();
         this.§3! § = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §"^§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§]#§.§"^§(param1,param2);
         ++this.§2!S§;
         this.§78§(_loc3_);
         return _loc3_;
      }
      
      public function §-0§(param1:*) : void
      {
         this.§;!E§(param1);
         --this.§2!S§;
         this.§]#§.§-0§(param1);
      }
      
      public function § f§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§]#§.§ f§(param1,param2,param3))
         {
            this.§78§(param1);
         }
      }
      
      public function §!!D§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§]#§.§6z§(param1);
         var _loc4_:b2AABB = this.§]#§.§6z§(param2);
         return _loc3_.§!!D§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§]#§.GetUserData(param1);
      }
      
      public function §6z§(param1:*) : b2AABB
      {
         return this.§]#§.§6z§(param1);
      }
      
      public function §;!?§() : int
      {
         return this.§2!S§;
      }
      
      public function §""§(param1:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.m_pairCount = 0;
         for each(queryProxy in this.§3! §)
         {
            var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(m_pairCount == m_pairBuffer.length)
               {
                  m_pairBuffer[m_pairCount] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = m_pairBuffer[m_pairCount];
               _loc2_.§^!C§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§[G§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§]#§.§6z§(queryProxy);
            this.§]#§.§1!B§(QueryCallback,fatAABB);
         }
         this.§3! §.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§]#§.GetUserData(primaryPair.§^!C§);
            userDataB = this.§]#§.GetUserData(primaryPair.§[G§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§^!C§ != primaryPair.§^!C§ || pair.§[G§ != primaryPair.§[G§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §1!B§(param1:Function, param2:b2AABB) : void
      {
         this.§]#§.§1!B§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§]#§.RayCast(param1,param2);
      }
      
      public function §68§() : void
      {
      }
      
      public function §,!-§(param1:int) : void
      {
         this.§]#§.§,!-§(param1);
      }
      
      private function §78§(param1:b2DynamicTreeNode) : void
      {
         this.§3! §[this.§3! §.length] = param1;
      }
      
      private function §;!E§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§3! §.indexOf(param1);
         this.§3! §.splice(_loc2_,1);
      }
      
      private function §4!J§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
