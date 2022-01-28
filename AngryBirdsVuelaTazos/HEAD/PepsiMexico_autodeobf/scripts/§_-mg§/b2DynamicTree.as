package §_-mg§
{
   import §_-bA§.*;
   import §_-rz§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §_-ch§:b2DynamicTreeNode;
      
      private var §_-yw§:b2DynamicTreeNode;
      
      private var §_-m5§:uint;
      
      private var §_-m§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§_-ch§ = null;
         this.§_-yw§ = null;
         this.§_-m5§ = 0;
         this.§_-m§ = 0;
      }
      
      public function §_-Nl§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§_-q5§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§_-PO§.x = param1.§_-PO§.x - _loc4_;
         _loc3_.aabb.§_-PO§.y = param1.§_-PO§.y - _loc5_;
         _loc3_.aabb.§_-LW§.x = param1.§_-LW§.x + _loc4_;
         _loc3_.aabb.§_-LW§.y = param1.§_-LW§.y + _loc5_;
         _loc3_.§_-nF§ = param2;
         this.§_-vb§(_loc3_);
         return _loc3_;
      }
      
      public function §_-Xm§(param1:b2DynamicTreeNode) : void
      {
         this.§_-wY§(param1);
         this.§_-yM§(param1);
      }
      
      public function §_-Mf§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§_-Vc§());
         if(param1.aabb.§_-Bs§(param2))
         {
            return false;
         }
         this.§_-wY§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§_-PO§.x = param2.§_-PO§.x - _loc4_;
         param1.aabb.§_-PO§.y = param2.§_-PO§.y - _loc5_;
         param1.aabb.§_-LW§.x = param2.§_-LW§.x + _loc4_;
         param1.aabb.§_-LW§.y = param2.§_-LW§.y + _loc5_;
         this.§_-vb§(param1);
         return true;
      }
      
      public function §_-y0§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§_-ch§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§_-ch§;
            _loc4_ = 0;
            while(_loc3_.§_-Vc§() == false)
            {
               _loc3_ = !!(this.§_-m5§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§_-m5§;
            this.§_-wY§(_loc3_);
            this.§_-vb§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §_-8q§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§_-nF§;
      }
      
      public function §_-xd§(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this.§_-ch§ == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§_-ch§;
         while(_loc4_ > 0)
         {
            if((_loc5_ = _loc3_[--_loc4_]).aabb.§_-lP§(param2))
            {
               if(_loc5_.§_-Vc§())
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
         if(this.§_-ch§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§_-2E§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§_-3k§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§ try§(_loc6_);
         var _loc8_:Number = param2.§_-1x§;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§_-PO§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§_-PO§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§_-LW§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§_-LW§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§_-ch§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§_-lP§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§_-ju§();
               _loc16_ = _loc14_.aabb.§do§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§_-Vc§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§_-1x§ = param2.§_-1x§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§_-PO§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§_-PO§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§_-LW§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§_-LW§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §_-q5§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§_-yw§)
         {
            _loc1_ = this.§_-yw§;
            this.§_-yw§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §_-yM§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§_-yw§;
         this.§_-yw§ = param1;
      }
      
      private function §_-vb§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§_-m§;
         if(this.§_-ch§ == null)
         {
            this.§_-ch§ = param1;
            this.§_-ch§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§_-ju§();
         var _loc3_:b2DynamicTreeNode = this.§_-ch§;
         if(_loc3_.§_-Vc§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§_-PO§.x + _loc6_.aabb.§_-LW§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§_-PO§.y + _loc6_.aabb.§_-LW§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§_-PO§.x + _loc7_.aabb.§_-LW§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§_-PO§.y + _loc7_.aabb.§_-LW§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§_-Vc§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§_-q5§()).parent = _loc4_;
         _loc5_.§_-nF§ = null;
         _loc5_.aabb.§_-9M§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§_-Bs§(_loc5_.aabb))
            {
               _loc4_.aabb.§_-9M§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§_-ch§ = _loc5_;
         }
      }
      
      private function §_-wY§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§_-ch§)
         {
            this.§_-ch§ = null;
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
            this.§_-yM§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§_-9M§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§_-Bs§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§_-ch§ = _loc4_;
            _loc4_.parent = null;
            this.§_-yM§(_loc2_);
         }
      }
   }
}
