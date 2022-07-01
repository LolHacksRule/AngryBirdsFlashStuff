package §!!o§
{
   import §-!2§.*;
   
   public class b2DynamicTreeBroadPhase implements §>"#§
   {
       
      
      private var §0m§:b2DynamicTree;
      
      private var §8"#§:int;
      
      private var §,K§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0m§ = new b2DynamicTree();
         this.§,K§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §,!G§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0m§.§,!G§(param1,param2);
         ++this.§8"#§;
         this.§#!f§(_loc3_);
         return _loc3_;
      }
      
      public function §4!i§(param1:*) : void
      {
         this.§3g§(param1);
         --this.§8"#§;
         this.§0m§.§4!i§(param1);
      }
      
      public function §2!w§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0m§.§2!w§(param1,param2,param3))
         {
            this.§#!f§(param1);
         }
      }
      
      public function §?"2§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0m§.§3b§(param1);
         var _loc4_:b2AABB = this.§0m§.§3b§(param2);
         return _loc3_.§?"2§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0m§.GetUserData(param1);
      }
      
      public function §3b§(param1:*) : b2AABB
      {
         return this.§0m§.§3b§(param1);
      }
      
      public function §'7§() : int
      {
         return this.§8"#§;
      }
      
      public function §=!W§(param1:Function) : void
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
         for each(queryProxy in this.§,K§)
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
               _loc2_.§!4§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§&![§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0m§.§3b§(queryProxy);
            this.§0m§.§>!L§(QueryCallback,fatAABB);
         }
         this.§,K§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0m§.GetUserData(primaryPair.§!4§);
            userDataB = this.§0m§.GetUserData(primaryPair.§&![§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§!4§ != primaryPair.§!4§ || pair.§&![§ != primaryPair.§&![§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §>!L§(param1:Function, param2:b2AABB) : void
      {
         this.§0m§.§>!L§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0m§.RayCast(param1,param2);
      }
      
      public function §1$§() : void
      {
      }
      
      public function §@!S§(param1:int) : void
      {
         this.§0m§.§@!S§(param1);
      }
      
      private function §#!f§(param1:b2DynamicTreeNode) : void
      {
         this.§,K§[this.§,K§.length] = param1;
      }
      
      private function §3g§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§,K§.indexOf(param1);
         this.§,K§.splice(_loc2_,1);
      }
      
      private function §'!Q§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
