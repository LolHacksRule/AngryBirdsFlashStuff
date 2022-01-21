package §&!P§
{
   import §^!%§.*;
   
   public class b2DynamicTreeBroadPhase implements §<s§
   {
       
      
      private var §<r§:b2DynamicTree;
      
      private var §]R§:int;
      
      private var §`F§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§<r§ = new b2DynamicTree();
         this.§`F§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §%t§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§<r§.§%t§(param1,param2);
         ++this.§]R§;
         this.§@!b§(_loc3_);
         return _loc3_;
      }
      
      public function §;!Q§(param1:*) : void
      {
         this.§-Q§(param1);
         --this.§]R§;
         this.§<r§.§;!Q§(param1);
      }
      
      public function §'!i§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§<r§.§'!i§(param1,param2,param3))
         {
            this.§@!b§(param1);
         }
      }
      
      public function §`C§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<r§.§>R§(param1);
         var _loc4_:b2AABB = this.§<r§.§>R§(param2);
         return _loc3_.§`C§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<r§.GetUserData(param1);
      }
      
      public function §>R§(param1:*) : b2AABB
      {
         return this.§<r§.§>R§(param1);
      }
      
      public function §'A§() : int
      {
         return this.§]R§;
      }
      
      public function §@! §(param1:Function) : void
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
         for each(queryProxy in this.§`F§)
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
               _loc2_.§@u§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§!>§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§<r§.§>R§(queryProxy);
            this.§<r§.§?!,§(QueryCallback,fatAABB);
         }
         this.§`F§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§<r§.GetUserData(primaryPair.§@u§);
            userDataB = this.§<r§.GetUserData(primaryPair.§!>§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§@u§ != primaryPair.§@u§ || pair.§!>§ != primaryPair.§!>§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §?!,§(param1:Function, param2:b2AABB) : void
      {
         this.§<r§.§?!,§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§<r§.RayCast(param1,param2);
      }
      
      public function §20§() : void
      {
      }
      
      public function §,!D§(param1:int) : void
      {
         this.§<r§.§,!D§(param1);
      }
      
      private function §@!b§(param1:b2DynamicTreeNode) : void
      {
         this.§`F§[this.§`F§.length] = param1;
      }
      
      private function §-Q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§`F§.indexOf(param1);
         this.§`F§.splice(_loc2_,1);
      }
      
      private function §class§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
