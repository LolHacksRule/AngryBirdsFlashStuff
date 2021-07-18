package §9"§
{
   import §0!G§.*;
   import §2!F§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §6a§:b2DynamicTreeNode;
      
      private var §`K§:b2DynamicTreeNode;
      
      private var §8!<§:uint;
      
      private var §%y§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§6a§ = null;
         this.§`K§ = null;
         this.§8!<§ = 0;
         this.§%y§ = 0;
      }
      
      public function §case§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§4x§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§!!C§.x = param1.§!!C§.x - _loc4_;
         _loc3_.aabb.§!!C§.y = param1.§!!C§.y - _loc5_;
         _loc3_.aabb.§<0§.x = param1.§<0§.x + _loc4_;
         _loc3_.aabb.§<0§.y = param1.§<0§.y + _loc5_;
         _loc3_.§4!E§ = param2;
         this.§23§(_loc3_);
         return _loc3_;
      }
      
      public function §^<§(param1:b2DynamicTreeNode) : void
      {
         this.§%n§(param1);
         this.§>!R§(param1);
      }
      
      public function §5! §(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§,v§());
         if(param1.aabb.§&!W§(param2))
         {
            return false;
         }
         this.§%n§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§!!C§.x = param2.§!!C§.x - _loc4_;
         param1.aabb.§!!C§.y = param2.§!!C§.y - _loc5_;
         param1.aabb.§<0§.x = param2.§<0§.x + _loc4_;
         param1.aabb.§<0§.y = param2.§<0§.y + _loc5_;
         this.§23§(param1);
         return true;
      }
      
      public function §%!>§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§6a§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§6a§;
            _loc4_ = 0;
            while(_loc3_.§,v§() == false)
            {
               _loc3_ = !!(this.§8!<§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§8!<§;
            this.§%n§(_loc3_);
            this.§23§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §8!R§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§4!E§;
      }
      
      public function §<§(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this.§6a§ == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§6a§;
         while(_loc4_ > 0)
         {
            if((_loc5_ = _loc3_[--_loc4_]).aabb.§[!K§(param2))
            {
               if(_loc5_.§,v§())
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
         if(this.§6a§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§4_§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§28§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§@%§(_loc6_);
         var _loc8_:Number = param2.§7!A§;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§!!C§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§!!C§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§<0§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§<0§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§6a§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§[!K§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§2!A§();
               _loc16_ = _loc14_.aabb.§?a§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§,v§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§7!A§ = param2.§7!A§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§!!C§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§!!C§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§<0§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§<0§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §4x§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§`K§)
         {
            _loc1_ = this.§`K§;
            this.§`K§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §>!R§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§`K§;
         this.§`K§ = param1;
      }
      
      private function §23§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§%y§;
         if(this.§6a§ == null)
         {
            this.§6a§ = param1;
            this.§6a§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§2!A§();
         var _loc3_:b2DynamicTreeNode = this.§6a§;
         if(_loc3_.§,v§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§!!C§.x + _loc6_.aabb.§<0§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§!!C§.y + _loc6_.aabb.§<0§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§!!C§.x + _loc7_.aabb.§<0§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§!!C§.y + _loc7_.aabb.§<0§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§,v§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§4x§()).parent = _loc4_;
         _loc5_.§4!E§ = null;
         _loc5_.aabb.§8h§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§&!W§(_loc5_.aabb))
            {
               _loc4_.aabb.§8h§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§6a§ = _loc5_;
         }
      }
      
      private function §%n§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§6a§)
         {
            this.§6a§ = null;
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
            this.§>!R§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§8h§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§&!W§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§6a§ = _loc4_;
            _loc4_.parent = null;
            this.§>!R§(_loc2_);
         }
      }
   }
}
