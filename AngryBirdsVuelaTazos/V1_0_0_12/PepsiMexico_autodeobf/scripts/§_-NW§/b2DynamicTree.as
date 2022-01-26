package §_-Nw§
{
   import §_-9z§.*;
   import §_-sU§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §_-6t§:b2DynamicTreeNode;
      
      private var §_-kL§:b2DynamicTreeNode;
      
      private var §_-eN§:uint;
      
      private var §_-m4§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§_-6t§ = null;
         this.§_-kL§ = null;
         this.§_-eN§ = 0;
         this.§_-m4§ = 0;
      }
      
      public function §_-S3§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§_-c9§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§_-9P§.x = param1.§_-9P§.x - _loc4_;
         _loc3_.aabb.§_-9P§.y = param1.§_-9P§.y - _loc5_;
         _loc3_.aabb.§_-5c§.x = param1.§_-5c§.x + _loc4_;
         _loc3_.aabb.§_-5c§.y = param1.§_-5c§.y + _loc5_;
         _loc3_.§_-ZT§ = param2;
         this.§_-WH§(_loc3_);
         return _loc3_;
      }
      
      public function §_-r5§(param1:b2DynamicTreeNode) : void
      {
         this.§_-oh§(param1);
         this.§_-Dc§(param1);
      }
      
      public function §_-4G§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§_-Ym§());
         if(param1.aabb.§_-Qx§(param2))
         {
            return false;
         }
         this.§_-oh§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§_-9P§.x = param2.§_-9P§.x - _loc4_;
         param1.aabb.§_-9P§.y = param2.§_-9P§.y - _loc5_;
         param1.aabb.§_-5c§.x = param2.§_-5c§.x + _loc4_;
         param1.aabb.§_-5c§.y = param2.§_-5c§.y + _loc5_;
         this.§_-WH§(param1);
         return true;
      }
      
      public function §_-L0§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§_-6t§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§_-6t§;
            _loc4_ = 0;
            while(_loc3_.§_-Ym§() == false)
            {
               _loc3_ = !!(this.§_-eN§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§_-eN§;
            this.§_-oh§(_loc3_);
            this.§_-WH§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §_-nm§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§_-ZT§;
      }
      
      public function §_-sP§(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this.§_-6t§ == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§_-6t§;
         while(_loc4_ > 0)
         {
            if((_loc5_ = _loc3_[--_loc4_]).aabb.§_-4S§(param2))
            {
               if(_loc5_.§_-Ym§())
               {
                  if(!(_loc6_ = param1(_loc5_)))
                  {
                     return;
                  }
               }
               else
               {
                  var _loc8_:*;
                  _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                  var _loc9_:*;
                  _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(this.§_-6t§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§_-9M§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§_-Lf§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§_-1N§(_loc6_);
         var _loc8_:Number = param2.§_-1o§;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§_-9P§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§_-9P§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§_-5c§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§_-5c§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§_-6t§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§_-4S§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§_-3f§();
               _loc16_ = _loc14_.aabb.§_-Du§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§_-Ym§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§_-1o§ = param2.§_-1o§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§_-9P§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§_-9P§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§_-5c§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§_-5c§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §_-c9§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§_-kL§)
         {
            _loc1_ = this.§_-kL§;
            this.§_-kL§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §_-Dc§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§_-kL§;
         this.§_-kL§ = param1;
      }
      
      private function §_-WH§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§_-m4§;
         if(this.§_-6t§ == null)
         {
            this.§_-6t§ = param1;
            this.§_-6t§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§_-3f§();
         var _loc3_:b2DynamicTreeNode = this.§_-6t§;
         if(_loc3_.§_-Ym§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§_-9P§.x + _loc6_.aabb.§_-5c§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§_-9P§.y + _loc6_.aabb.§_-5c§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§_-9P§.x + _loc7_.aabb.§_-5c§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§_-9P§.y + _loc7_.aabb.§_-5c§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§_-Ym§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§_-c9§()).parent = _loc4_;
         _loc5_.§_-ZT§ = null;
         _loc5_.aabb.§_-ri§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§_-Qx§(_loc5_.aabb))
            {
               _loc4_.aabb.§_-ri§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§_-6t§ = _loc5_;
         }
      }
      
      private function §_-oh§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§_-6t§)
         {
            this.§_-6t§ = null;
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
            this.§_-Dc§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§_-ri§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§_-Qx§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§_-6t§ = _loc4_;
            _loc4_.parent = null;
            this.§_-Dc§(_loc2_);
         }
      }
   }
}
