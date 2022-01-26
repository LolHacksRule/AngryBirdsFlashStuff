package §_-wZ§
{
   import §_-SM§.*;
   import §var§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §_-qQ§:b2DynamicTreeNode;
      
      private var §_-fG§:b2DynamicTreeNode;
      
      private var §_-yM§:uint;
      
      private var §_-y1§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§_-qQ§ = null;
         this.§_-fG§ = null;
         this.§_-yM§ = 0;
         this.§_-y1§ = 0;
      }
      
      public function §_-c6§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§_-AR§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§_-Cw§.x = param1.§_-Cw§.x - _loc4_;
         _loc3_.aabb.§_-Cw§.y = param1.§_-Cw§.y - _loc5_;
         _loc3_.aabb.§_-OC§.x = param1.§_-OC§.x + _loc4_;
         _loc3_.aabb.§_-OC§.y = param1.§_-OC§.y + _loc5_;
         _loc3_.§_-mx§ = param2;
         this.§_-Ld§(_loc3_);
         return _loc3_;
      }
      
      public function §_-La§(param1:b2DynamicTreeNode) : void
      {
         this.§_-Mg§(param1);
         this.§_-pz§(param1);
      }
      
      public function §_-sJ§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§_-uw§());
         if(param1.aabb.§_-IS§(param2))
         {
            return false;
         }
         this.§_-Mg§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§_-Cw§.x = param2.§_-Cw§.x - _loc4_;
         param1.aabb.§_-Cw§.y = param2.§_-Cw§.y - _loc5_;
         param1.aabb.§_-OC§.x = param2.§_-OC§.x + _loc4_;
         param1.aabb.§_-OC§.y = param2.§_-OC§.y + _loc5_;
         this.§_-Ld§(param1);
         return true;
      }
      
      public function §_-gf§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§_-qQ§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§_-qQ§;
            _loc4_ = 0;
            while(_loc3_.§_-uw§() == false)
            {
               _loc3_ = !!(this.§_-yM§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§_-yM§;
            this.§_-Mg§(_loc3_);
            this.§_-Ld§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §_-hC§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§_-mx§;
      }
      
      public function §_-7F§(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this.§_-qQ§ == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§_-qQ§;
         while(_loc4_ > 0)
         {
            if((_loc5_ = _loc3_[--_loc4_]).aabb.§_-db§(param2))
            {
               if(_loc5_.§_-uw§())
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
         if(this.§_-qQ§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§_-MF§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§_-mn§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§_-lu§(_loc6_);
         var _loc8_:Number = param2.§_-r3§;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§_-Cw§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§_-Cw§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§_-OC§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§_-OC§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§_-qQ§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§_-db§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§_-A8§();
               _loc16_ = _loc14_.aabb.§_-O3§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§_-uw§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§_-r3§ = param2.§_-r3§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§_-Cw§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§_-Cw§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§_-OC§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§_-OC§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §_-AR§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§_-fG§)
         {
            _loc1_ = this.§_-fG§;
            this.§_-fG§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §_-pz§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§_-fG§;
         this.§_-fG§ = param1;
      }
      
      private function §_-Ld§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§_-y1§;
         if(this.§_-qQ§ == null)
         {
            this.§_-qQ§ = param1;
            this.§_-qQ§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§_-A8§();
         var _loc3_:b2DynamicTreeNode = this.§_-qQ§;
         if(_loc3_.§_-uw§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§_-Cw§.x + _loc6_.aabb.§_-OC§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§_-Cw§.y + _loc6_.aabb.§_-OC§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§_-Cw§.x + _loc7_.aabb.§_-OC§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§_-Cw§.y + _loc7_.aabb.§_-OC§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§_-uw§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§_-AR§()).parent = _loc4_;
         _loc5_.§_-mx§ = null;
         _loc5_.aabb.§_-aw§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§_-IS§(_loc5_.aabb))
            {
               _loc4_.aabb.§_-aw§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§_-qQ§ = _loc5_;
         }
      }
      
      private function §_-Mg§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§_-qQ§)
         {
            this.§_-qQ§ = null;
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
            this.§_-pz§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§_-aw§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§_-IS§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§_-qQ§ = _loc4_;
            _loc4_.parent = null;
            this.§_-pz§(_loc2_);
         }
      }
   }
}
