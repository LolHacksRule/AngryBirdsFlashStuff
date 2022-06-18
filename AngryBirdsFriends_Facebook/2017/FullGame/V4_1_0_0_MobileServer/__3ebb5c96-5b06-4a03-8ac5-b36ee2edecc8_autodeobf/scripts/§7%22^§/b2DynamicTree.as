package §7"^§
{
   import §%!9§.*;
   import §9#K§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §#"_§:b2DynamicTreeNode;
      
      private var §'L§:b2DynamicTreeNode;
      
      private var §1# §:uint;
      
      private var § L§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§#"_§ = null;
         this.§'L§ = null;
         this.§1# § = 0;
         this.§ L§ = 0;
      }
      
      public function §;!C§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§+8§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§""x§.x = param1.§""x§.x - _loc4_;
         _loc3_.aabb.§""x§.y = param1.§""x§.y - _loc5_;
         _loc3_.aabb.§%"i§.x = param1.§%"i§.x + _loc4_;
         _loc3_.aabb.§%"i§.y = param1.§%"i§.y + _loc5_;
         _loc3_.§1$%§ = param2;
         this.§1#<§(_loc3_);
         return _loc3_;
      }
      
      public function §-!"§(param1:b2DynamicTreeNode) : void
      {
         this.§'"0§(param1);
         this.§2K§(param1);
      }
      
      public function §[H§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§["E§());
         if(param1.aabb.§1$!§(param2))
         {
            return false;
         }
         this.§'"0§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§""x§.x = param2.§""x§.x - _loc4_;
         param1.aabb.§""x§.y = param2.§""x§.y - _loc5_;
         param1.aabb.§%"i§.x = param2.§%"i§.x + _loc4_;
         param1.aabb.§%"i§.y = param2.§%"i§.y + _loc5_;
         this.§1#<§(param1);
         return true;
      }
      
      public function §<!2§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§#"_§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§#"_§;
            _loc4_ = 0;
            while(_loc3_.§["E§() == false)
            {
               _loc3_ = !!(this.§1# § >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§1# §;
            this.§'"0§(_loc3_);
            this.§1#<§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §8!z§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§1$%§;
      }
      
      public function §7"9§(param1:Function, param2:b2AABB, param3:b2DynamicTreeNode = null) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:Boolean = false;
         if(this.§#"_§ == null)
         {
            return;
         }
         var _loc4_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc5_:int = 0;
         var _loc8_:*;
         _loc4_[_loc8_ = _loc5_++] = this.§#"_§;
         while(_loc5_ > 0)
         {
            if((_loc6_ = _loc4_[--_loc5_]).aabb.§+$&§(param2))
            {
               if(_loc6_.§["E§())
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
         if(this.§#"_§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§ "&§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§6#M§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§-"a§(_loc6_);
         var _loc8_:Number = param2.§?$$§;
         var _loc9_:b2AABB = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§""x§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§""x§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§%"i§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§%"i§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§#"_§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§+$&§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§&#g§();
               _loc16_ = _loc14_.aabb.§0$=§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§["E§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§?$$§ = param2.§?$$§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§""x§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§""x§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§%"i§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§%"i§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §+8§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§'L§)
         {
            _loc1_ = this.§'L§;
            this.§'L§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §2K§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§'L§;
         this.§'L§ = param1;
      }
      
      private function §1#<§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§ L§;
         if(this.§#"_§ == null)
         {
            this.§#"_§ = param1;
            this.§#"_§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§&#g§();
         var _loc3_:b2DynamicTreeNode = this.§#"_§;
         if(_loc3_.§["E§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§""x§.x + _loc6_.aabb.§%"i§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§""x§.y + _loc6_.aabb.§%"i§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§""x§.x + _loc7_.aabb.§%"i§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§""x§.y + _loc7_.aabb.§%"i§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§["E§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§+8§()).parent = _loc4_;
         _loc5_.§1$%§ = null;
         _loc5_.aabb.§[$+§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§1$!§(_loc5_.aabb))
            {
               _loc4_.aabb.§[$+§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§#"_§ = _loc5_;
         }
      }
      
      private function §'"0§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§#"_§)
         {
            this.§#"_§ = null;
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
            this.§2K§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§[$+§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§1$!§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§#"_§ = _loc4_;
            _loc4_.parent = null;
            this.§2K§(_loc2_);
         }
      }
   }
}
