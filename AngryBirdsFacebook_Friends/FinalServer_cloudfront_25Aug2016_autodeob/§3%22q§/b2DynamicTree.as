package §3"q§
{
   import §0H§.*;
   import §0m§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §<S§:b2DynamicTreeNode;
      
      private var §]"A§:b2DynamicTreeNode;
      
      private var §""u§:uint;
      
      private var §0!m§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§<S§ = null;
         this.§]"A§ = null;
         this.§""u§ = 0;
         this.§0!m§ = 0;
      }
      
      public function §=&§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§8!W§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§6G§.x = param1.§6G§.x - _loc4_;
         _loc3_.aabb.§6G§.y = param1.§6G§.y - _loc5_;
         _loc3_.aabb.§%G§.x = param1.§%G§.x + _loc4_;
         _loc3_.aabb.§%G§.y = param1.§%G§.y + _loc5_;
         _loc3_.§>"<§ = param2;
         this.§@#q§(_loc3_);
         return _loc3_;
      }
      
      public function §'!g§(param1:b2DynamicTreeNode) : void
      {
         this.§-"'§(param1);
         this.§]#f§(param1);
      }
      
      public function §2$+§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§=![§());
         if(param1.aabb.§!#r§(param2))
         {
            return false;
         }
         this.§-"'§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§6G§.x = param2.§6G§.x - _loc4_;
         param1.aabb.§6G§.y = param2.§6G§.y - _loc5_;
         param1.aabb.§%G§.x = param2.§%G§.x + _loc4_;
         param1.aabb.§%G§.y = param2.§%G§.y + _loc5_;
         this.§@#q§(param1);
         return true;
      }
      
      public function §"O§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§<S§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§<S§;
            _loc4_ = 0;
            while(_loc3_.§=![§() == false)
            {
               _loc3_ = !!(this.§""u§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§""u§;
            this.§-"'§(_loc3_);
            this.§@#q§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §8"2§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§>"<§;
      }
      
      public function §?!F§(param1:Function, param2:b2AABB, param3:b2DynamicTreeNode = null) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:Boolean = false;
         if(this.§<S§ == null)
         {
            return;
         }
         var _loc4_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc5_:int = 0;
         _loc4_[_loc5_++] = this.§<S§;
         while(_loc5_ > 0)
         {
            if((_loc6_ = _loc4_[--_loc5_]).aabb.§4"t§(param2))
            {
               if(_loc6_.§=![§())
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
                  _loc4_[_loc5_++] = _loc6_.child1;
                  _loc4_[_loc5_++] = _loc6_.child2;
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
         var _loc18_:b2RayCastInput = null;
         if(this.§<S§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§>!6§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§'"t§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§=#"§(_loc6_);
         var _loc8_:Number = param2.§^!s§;
         var _loc9_:b2AABB = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§6G§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§6G§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§%G§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§%G§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         _loc12_[_loc13_++] = this.§<S§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§4"t§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§+H§();
               _loc16_ = _loc14_.aabb.§5#_§();
               if(Number(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§=![§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§^!s§ = param2.§^!s§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§6G§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§6G§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§%G§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§%G§.y = Math.max(_loc3_.y,_loc11_);
                  }
                  else
                  {
                     _loc12_[_loc13_++] = _loc14_.child1;
                     _loc12_[_loc13_++] = _loc14_.child2;
                  }
               }
            }
         }
      }
      
      private function §8!W§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§]"A§)
         {
            _loc1_ = this.§]"A§;
            this.§]"A§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §]#f§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§]"A§;
         this.§]"A§ = param1;
      }
      
      private function §@#q§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§0!m§;
         if(this.§<S§ == null)
         {
            this.§<S§ = param1;
            this.§<S§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§+H§();
         var _loc3_:b2DynamicTreeNode = this.§<S§;
         if(_loc3_.§=![§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§6G§.x + _loc6_.aabb.§%G§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§6G§.y + _loc6_.aabb.§%G§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§6G§.x + _loc7_.aabb.§%G§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§6G§.y + _loc7_.aabb.§%G§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§=![§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§8!W§()).parent = _loc4_;
         _loc5_.§>"<§ = null;
         _loc5_.aabb.§4x§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§!#r§(_loc5_.aabb))
            {
               _loc4_.aabb.§4x§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§<S§ = _loc5_;
         }
      }
      
      private function §-"'§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§<S§)
         {
            this.§<S§ = null;
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
            this.§]#f§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§4x§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§!#r§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§<S§ = _loc4_;
            _loc4_.parent = null;
            this.§]#f§(_loc2_);
         }
      }
   }
}
