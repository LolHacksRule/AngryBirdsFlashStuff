package §;"0§
{
   import §3!t§.*;
   
   public class b2DynamicTreeBroadPhase implements §,;§
   {
       
      
      private var §5!E§:b2DynamicTree;
      
      private var §1![§:int;
      
      private var §6!X§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§5!E§ = new b2DynamicTree();
         this.§6!X§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'K§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§5!E§.§'K§(param1,param2);
         ++this.§1![§;
         this.§9=§(_loc3_);
         return _loc3_;
      }
      
      public function §1!`§(param1:*) : void
      {
         this.§5! §(param1);
         --this.§1![§;
         this.§5!E§.§1!`§(param1);
      }
      
      public function §7C§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§5!E§.§7C§(param1,param2,param3))
         {
            this.§9=§(param1);
         }
      }
      
      public function §3!z§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§5!E§.§>!M§(param1);
         var _loc4_:b2AABB = this.§5!E§.§>!M§(param2);
         return _loc3_.§3!z§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§5!E§.GetUserData(param1);
      }
      
      public function §>!M§(param1:*) : b2AABB
      {
         return this.§5!E§.§>!M§(param1);
      }
      
      public function §2!V§() : int
      {
         return this.§1![§;
      }
      
      public function §9c§(param1:Function) : void
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
         for each(queryProxy in this.§6!X§)
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
               _loc2_.§!!z§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§,!e§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§5!E§.§>!M§(queryProxy);
            this.§5!E§.§,X§(QueryCallback,fatAABB);
         }
         this.§6!X§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§5!E§.GetUserData(primaryPair.§!!z§);
            userDataB = this.§5!E§.GetUserData(primaryPair.§,!e§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§!!z§ != primaryPair.§!!z§ || pair.§,!e§ != primaryPair.§,!e§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §,X§(param1:Function, param2:b2AABB) : void
      {
         this.§5!E§.§,X§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§5!E§.RayCast(param1,param2);
      }
      
      public function §;">§() : void
      {
      }
      
      public function §9!P§(param1:int) : void
      {
         this.§5!E§.§9!P§(param1);
      }
      
      private function §9=§(param1:b2DynamicTreeNode) : void
      {
         this.§6!X§[this.§6!X§.length] = param1;
      }
      
      private function §5! §(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§6!X§.indexOf(param1);
         this.§6!X§.splice(_loc2_,1);
      }
      
      private function §1b§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
