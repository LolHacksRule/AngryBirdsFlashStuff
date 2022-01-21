package §<!!§
{
   import §"U§.*;
   
   public class b2DynamicTreeBroadPhase implements §]!H§
   {
       
      
      private var §8!3§:b2DynamicTree;
      
      private var §,L§:int;
      
      private var § !I§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§8!3§ = new b2DynamicTree();
         this.§ !I§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §4f§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§8!3§.§4f§(param1,param2);
         ++this.§,L§;
         this.§?'§(_loc3_);
         return _loc3_;
      }
      
      public function §+!g§(param1:*) : void
      {
         this.§3T§(param1);
         --this.§,L§;
         this.§8!3§.§+!g§(param1);
      }
      
      public function §72§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§8!3§.§72§(param1,param2,param3))
         {
            this.§?'§(param1);
         }
      }
      
      public function §;l§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§8!3§.§6!^§(param1);
         var _loc4_:b2AABB = this.§8!3§.§6!^§(param2);
         return _loc3_.§;l§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§8!3§.GetUserData(param1);
      }
      
      public function §6!^§(param1:*) : b2AABB
      {
         return this.§8!3§.§6!^§(param1);
      }
      
      public function §+!c§() : int
      {
         return this.§,L§;
      }
      
      public function §%&§(param1:Function) : void
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
         for each(queryProxy in this.§ !I§)
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
               _loc2_.§ "§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§,x§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§8!3§.§6!^§(queryProxy);
            this.§8!3§.§0x§(QueryCallback,fatAABB);
         }
         this.§ !I§.length = 0;
         i = 0;
         loop1:
         while(true)
         {
            while(i < this.m_pairCount)
            {
               primaryPair = this.m_pairBuffer[i];
               userDataA = this.§8!3§.GetUserData(primaryPair.§ "§);
               userDataB = this.§8!3§.GetUserData(primaryPair.§,x§);
               callback(userDataA,userDataB);
               i++;
               while(i < this.m_pairCount)
               {
                  pair = this.m_pairBuffer[i];
                  if(pair.§ "§ != primaryPair.§ "§ || pair.§,x§ != primaryPair.§,x§)
                  {
                     continue loop1;
                  }
                  i++;
               }
            }
            return;
         }
      }
      
      public function §0x§(param1:Function, param2:b2AABB) : void
      {
         this.§8!3§.§0x§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§8!3§.RayCast(param1,param2);
      }
      
      public function §3,§() : void
      {
      }
      
      public function §-!K§(param1:int) : void
      {
         this.§8!3§.§-!K§(param1);
      }
      
      private function §?'§(param1:b2DynamicTreeNode) : void
      {
         this.§ !I§[this.§ !I§.length] = param1;
      }
      
      private function §3T§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§ !I§.indexOf(param1);
         this.§ !I§.splice(_loc2_,1);
      }
      
      private function §-e§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
