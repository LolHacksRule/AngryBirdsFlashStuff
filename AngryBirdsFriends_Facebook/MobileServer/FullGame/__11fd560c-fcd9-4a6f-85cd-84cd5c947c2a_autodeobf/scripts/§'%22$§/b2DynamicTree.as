package §'"$§
{
   import § "%§.*;
   import §,!s§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §8"r§:b2DynamicTreeNode;
      
      private var §&$'§:b2DynamicTreeNode;
      
      private var §[S§:uint;
      
      private var § >§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§8"r§ = null;
         this.§&$'§ = null;
         this.§[S§ = 0;
         this.§ >§ = 0;
      }
      
      public function §'"4§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§&a§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§]#b§.x = param1.§]#b§.x - _loc4_;
         _loc3_.aabb.§]#b§.y = param1.§]#b§.y - _loc5_;
         _loc3_.aabb.§!O§.x = param1.§!O§.x + _loc4_;
         _loc3_.aabb.§!O§.y = param1.§!O§.y + _loc5_;
         _loc3_.§>J§ = param2;
         this.§?y§(_loc3_);
         return _loc3_;
      }
      
      public function §8e§(param1:b2DynamicTreeNode) : void
      {
         this.§1!Z§(param1);
         this.§3! §(param1);
      }
      
      public function §=$7§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§;$9§());
         if(param1.aabb.§1"l§(param2))
         {
            return false;
         }
         this.§1!Z§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§]#b§.x = param2.§]#b§.x - _loc4_;
         param1.aabb.§]#b§.y = param2.§]#b§.y - _loc5_;
         param1.aabb.§!O§.x = param2.§!O§.x + _loc4_;
         param1.aabb.§!O§.y = param2.§!O§.y + _loc5_;
         this.§?y§(param1);
         return true;
      }
      
      public function §4$5§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§8"r§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§8"r§;
            _loc4_ = 0;
            while(_loc3_.§;$9§() == false)
            {
               _loc3_ = !!(this.§[S§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§[S§;
            this.§1!Z§(_loc3_);
            this.§?y§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §+5§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§>J§;
      }
      
      public function §?#c§(param1:Function, param2:b2AABB, param3:b2DynamicTreeNode = null) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:Boolean = false;
         if(this.§8"r§ == null)
         {
            return;
         }
         var _loc4_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc5_:int = 0;
         var _loc8_:*;
         _loc4_[_loc8_ = _loc5_++] = this.§8"r§;
         while(_loc5_ > 0)
         {
            if((_loc6_ = _loc4_[--_loc5_]).aabb.§4"-§(param2))
            {
               if(_loc6_.§;$9§())
               {
                  if(param3)
                  {
                     _loc7_ = param1(_loc6_,param3);
                  }
                  else
                  {
                     _loc7_ = param1(_loc6_);
                  }
                  if(!_loc7_)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc9_:*;
                  _loc4_[_loc9_ = _loc5_++] = _loc6_.child1;
                  var _loc10_:*;
                  _loc4_[_loc10_ = _loc5_++] = _loc6_.child2;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(this.§8"r§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§ $$§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§=$+§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§0y§(_loc6_);
         var _loc8_:Number = param2.§?"n§;
         var _loc9_:b2AABB = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§]#b§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§]#b§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§!O§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§!O§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§8"r§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§4"-§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§<!N§();
               _loc16_ = _loc14_.aabb.§[!$§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§;$9§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§?"n§ = param2.§?"n§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§]#b§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§]#b§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§!O§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§!O§.y = Math.max(_loc3_.y,_loc11_);
                  }
                  else
                  {
                     var _loc20_:*;
                     _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                     var _loc21_:*;
                     _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                  }
               }
            }
         }
      }
      
      private function §&a§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§&$'§)
         {
            _loc1_ = this.§&$'§;
            this.§&$'§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §3! §(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§&$'§;
         this.§&$'§ = param1;
      }
      
      private function §?y§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§ >§;
         if(this.§8"r§ == null)
         {
            this.§8"r§ = param1;
            this.§8"r§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§<!N§();
         var _loc3_:b2DynamicTreeNode = this.§8"r§;
         if(_loc3_.§;$9§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§]#b§.x + _loc6_.aabb.§!O§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§]#b§.y + _loc6_.aabb.§!O§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§]#b§.x + _loc7_.aabb.§!O§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§]#b§.y + _loc7_.aabb.§!O§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§;$9§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§&a§()).parent = _loc4_;
         _loc5_.§>J§ = null;
         _loc5_.aabb.§6"#§(param1.aabb,_loc3_.aabb);
         if(_loc4_)
         {
            if(_loc3_.parent.child1 == _loc3_)
            {
               _loc4_.child1 = _loc5_;
            }
            else
            {
               _loc4_.child2 = _loc5_;
            }
            _loc5_.child1 = _loc3_;
            _loc5_.child2 = param1;
            _loc3_.parent = _loc5_;
            param1.parent = _loc5_;
            while(!_loc4_.aabb.§1"l§(_loc5_.aabb))
            {
               _loc4_.aabb.§6"#§(_loc4_.child1.aabb,_loc4_.child2.aabb);
               _loc5_ = _loc4_;
               if(!(_loc4_ = _loc4_.parent))
               {
                  break;
               }
            }
         }
         else
         {
            _loc5_.child1 = _loc3_;
            _loc5_.child2 = param1;
            _loc3_.parent = _loc5_;
            param1.parent = _loc5_;
            this.§8"r§ = _loc5_;
         }
      }
      
      private function §1!Z§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§8"r§)
         {
            this.§8"r§ = null;
            return;
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc2_.child1 == param1)
         {
            _loc4_ = _loc2_.child2;
         }
         else
         {
            _loc4_ = _loc2_.child1;
         }
         if(_loc3_)
         {
            if(_loc3_.child1 == _loc2_)
            {
               _loc3_.child1 = _loc4_;
            }
            else
            {
               _loc3_.child2 = _loc4_;
            }
            _loc4_.parent = _loc3_;
            this.§3! §(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§6"#§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§1"l§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§8"r§ = _loc4_;
            _loc4_.parent = null;
            this.§3! §(_loc2_);
         }
      }
   }
}
