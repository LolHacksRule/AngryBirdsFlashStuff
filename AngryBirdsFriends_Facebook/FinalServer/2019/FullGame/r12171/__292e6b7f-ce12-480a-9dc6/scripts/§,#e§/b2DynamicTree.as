package §,#E§
{
   import §&$+§.*;
   import §04§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §"!M§:b2DynamicTreeNode;
      
      private var §1!T§:b2DynamicTreeNode;
      
      private var § #c§:uint;
      
      private var §&p§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§"!M§ = null;
         this.§1!T§ = null;
         this.§ #c§ = 0;
         this.§&p§ = 0;
      }
      
      public function §7#0§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§0V§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§##N§.x = param1.§##N§.x - _loc4_;
         _loc3_.aabb.§##N§.y = param1.§##N§.y - _loc5_;
         _loc3_.aabb.§#r§.x = param1.§#r§.x + _loc4_;
         _loc3_.aabb.§#r§.y = param1.§#r§.y + _loc5_;
         _loc3_.§9!6§ = param2;
         this.§`C§(_loc3_);
         return _loc3_;
      }
      
      public function §,7§(param1:b2DynamicTreeNode) : void
      {
         this.§=<§(param1);
         this.§`m§(param1);
      }
      
      public function §2"4§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§,Z§());
         if(param1.aabb.§0;§(param2))
         {
            return false;
         }
         this.§=<§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§##N§.x = param2.§##N§.x - _loc4_;
         param1.aabb.§##N§.y = param2.§##N§.y - _loc5_;
         param1.aabb.§#r§.x = param2.§#r§.x + _loc4_;
         param1.aabb.§#r§.y = param2.§#r§.y + _loc5_;
         this.§`C§(param1);
         return true;
      }
      
      public function §7!L§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§"!M§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§"!M§;
            _loc4_ = 0;
            while(_loc3_.§,Z§() == false)
            {
               _loc3_ = !!(this.§ #c§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§ #c§;
            this.§=<§(_loc3_);
            this.§`C§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §;$1§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§9!6§;
      }
      
      public function §0$&§(param1:Function, param2:b2AABB, param3:b2DynamicTreeNode = null) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:Boolean = false;
         if(this.§"!M§ == null)
         {
            return;
         }
         var _loc4_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc5_:int = 0;
         var _loc8_:*;
         _loc4_[_loc8_ = _loc5_++] = this.§"!M§;
         while(_loc5_ > 0)
         {
            if((_loc6_ = _loc4_[--_loc5_]).aabb.§2#%§(param2))
            {
               if(_loc6_.§,Z§())
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
         if(this.§"!M§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§7q§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§+"Y§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§ !"§(_loc6_);
         var _loc8_:Number = param2.§]!V§;
         var _loc9_:b2AABB = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§##N§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§##N§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§#r§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§#r§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§"!M§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§2#%§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§9!f§();
               _loc16_ = _loc14_.aabb.§2!1§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§,Z§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§]!V§ = param2.§]!V§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§##N§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§##N§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§#r§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§#r§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §0V§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§1!T§)
         {
            _loc1_ = this.§1!T§;
            this.§1!T§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §`m§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§1!T§;
         this.§1!T§ = param1;
      }
      
      private function §`C§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§&p§;
         if(this.§"!M§ == null)
         {
            this.§"!M§ = param1;
            this.§"!M§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§9!f§();
         var _loc3_:b2DynamicTreeNode = this.§"!M§;
         if(_loc3_.§,Z§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§##N§.x + _loc6_.aabb.§#r§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§##N§.y + _loc6_.aabb.§#r§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§##N§.x + _loc7_.aabb.§#r§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§##N§.y + _loc7_.aabb.§#r§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§,Z§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§0V§()).parent = _loc4_;
         _loc5_.§9!6§ = null;
         _loc5_.aabb.§!!+§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§0;§(_loc5_.aabb))
            {
               _loc4_.aabb.§!!+§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§"!M§ = _loc5_;
         }
      }
      
      private function §=<§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§"!M§)
         {
            this.§"!M§ = null;
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
            this.§`m§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§!!+§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§0;§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§"!M§ = _loc4_;
            _loc4_.parent = null;
            this.§`m§(_loc2_);
         }
      }
   }
}
