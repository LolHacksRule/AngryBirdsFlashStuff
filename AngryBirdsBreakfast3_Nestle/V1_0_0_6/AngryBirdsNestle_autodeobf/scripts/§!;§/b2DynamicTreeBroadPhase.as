package §!;§
{
   import §-!A§.*;
   
   public class b2DynamicTreeBroadPhase implements §;!`§
   {
       
      
      private var §;!G§:b2DynamicTree;
      
      private var §!!k§:int;
      
      private var §0!I§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§;!G§ = new b2DynamicTree();
         this.§0!I§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'"!§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§;!G§.§'"!§(param1,param2);
         ++this.§!!k§;
         this.§3!E§(_loc3_);
         return _loc3_;
      }
      
      public function §'",§(param1:*) : void
      {
         this.§&!>§(param1);
         --this.§!!k§;
         this.§;!G§.§'",§(param1);
      }
      
      public function §3!N§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§;!G§.§3!N§(param1,param2,param3))
         {
            this.§3!E§(param1);
         }
      }
      
      public function §&!^§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§;!G§.§0!O§(param1);
         var _loc4_:b2AABB = this.§;!G§.§0!O§(param2);
         return _loc3_.§&!^§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§;!G§.GetUserData(param1);
      }
      
      public function §0!O§(param1:*) : b2AABB
      {
         return this.§;!G§.§0!O§(param1);
      }
      
      public function §`S§() : int
      {
         return this.§!!k§;
      }
      
      public function §2,§(param1:Function) : void
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
         for each(queryProxy in this.§0!I§)
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
               _loc2_.§"!Z§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§^_§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§;!G§.§0!O§(queryProxy);
            this.§;!G§.§,#§(QueryCallback,fatAABB);
         }
         this.§0!I§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§;!G§.GetUserData(primaryPair.§"!Z§);
            userDataB = this.§;!G§.GetUserData(primaryPair.§^_§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§"!Z§ != primaryPair.§"!Z§ || pair.§^_§ != primaryPair.§^_§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §,#§(param1:Function, param2:b2AABB) : void
      {
         this.§;!G§.§,#§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§;!G§.RayCast(param1,param2);
      }
      
      public function §33§() : void
      {
      }
      
      public function §0f§(param1:int) : void
      {
         this.§;!G§.§0f§(param1);
      }
      
      private function §3!E§(param1:b2DynamicTreeNode) : void
      {
         this.§0!I§[this.§0!I§.length] = param1;
      }
      
      private function §&!>§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§0!I§.indexOf(param1);
         this.§0!I§.splice(_loc2_,1);
      }
      
      private function §%"#§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
