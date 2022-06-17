package §9$A§
{
   import §6!R§.*;
   
   public class b2DynamicTreeBroadPhase implements §]"-§
   {
       
      
      private var §""H§:b2DynamicTree;
      
      private var §1"Y§:int;
      
      private var §4#b§:Vector.<b2DynamicTreeNode>;
      
      private var §[#_§:Vector.<b2DynamicTreePair>;
      
      private var §!_§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§""H§ = new b2DynamicTree();
         this.§4#b§ = new Vector.<b2DynamicTreeNode>();
         this.§[#_§ = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §^$7§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§""H§.§^$7§(param1,param2);
         ++this.§1"Y§;
         this.§`"^§(_loc3_);
         return _loc3_;
      }
      
      public function §@!v§(param1:*) : void
      {
         this.§03§(param1);
         --this.§1"Y§;
         this.§""H§.§@!v§(param1);
      }
      
      public function §>!U§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         if(this.§""H§.§>!U§(param1,param2,param3))
         {
            this.§`"^§(param1);
         }
      }
      
      public function §!"j§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§""H§.§%V§(param1);
         var _loc4_:b2AABB = this.§""H§.§%V§(param2);
         return _loc3_.§!"j§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§""H§.GetUserData(param1);
      }
      
      public function §%V§(param1:*) : b2AABB
      {
         return this.§""H§.§%V§(param1);
      }
      
      public function §3!o§() : int
      {
         return this.§1"Y§;
      }
      
      public function §7"6§(param1:Function) : void
      {
         var _loc2_:b2DynamicTreeNode = null;
         var _loc3_:int = 0;
         var _loc4_:b2AABB = null;
         var _loc5_:b2DynamicTreePair = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2DynamicTreePair = null;
         this.§!_§ = 0;
         for each(_loc2_ in this.§4#b§)
         {
            _loc4_ = this.§""H§.§%V§(_loc2_);
            this.§""H§.§ "^§(this.§&"p§,_loc4_,_loc2_);
         }
         this.§4#b§.length = 0;
         _loc3_ = 0;
         loop1:
         while(_loc3_ < this.§!_§)
         {
            _loc5_ = this.§[#_§[_loc3_];
            _loc6_ = this.§""H§.GetUserData(_loc5_.§,"?§);
            _loc7_ = this.§""H§.GetUserData(_loc5_.§!S§);
            param1(_loc6_,_loc7_);
            _loc3_++;
            while(_loc3_ < this.§!_§)
            {
               if((_loc8_ = this.§[#_§[_loc3_]).§,"?§ != _loc5_.§,"?§ || _loc8_.§!S§ != _loc5_.§!S§)
               {
                  continue loop1;
               }
               _loc3_++;
            }
         }
      }
      
      public function §&"p§(param1:b2DynamicTreeNode, param2:b2DynamicTreeNode) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(this.§!_§ == this.§[#_§.length)
         {
            this.§[#_§[this.§!_§] = new b2DynamicTreePair();
         }
         var _loc3_:b2DynamicTreePair = this.§[#_§[this.§!_§];
         _loc3_.§,"?§ = param1 < param2 ? param1 : param2;
         _loc3_.§!S§ = param1 >= param2 ? param1 : param2;
         ++this.§!_§;
         return true;
      }
      
      public function § "^§(param1:Function, param2:b2AABB) : void
      {
         this.§""H§.§ "^§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§""H§.RayCast(param1,param2);
      }
      
      public function §!!W§() : void
      {
      }
      
      public function §01§(param1:int) : void
      {
         this.§""H§.§01§(param1);
      }
      
      private function §`"^§(param1:b2DynamicTreeNode) : void
      {
         this.§4#b§[this.§4#b§.length] = param1;
      }
      
      private function §03§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4#b§.indexOf(param1);
         this.§4#b§.splice(_loc2_,1);
      }
      
      private function §["I§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
