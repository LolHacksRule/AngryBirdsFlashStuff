package §`!E§
{
   import §0!=§.*;
   import §0^§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §&!7§:b2DynamicTreeNode;
      
      private var §9Q§:b2DynamicTreeNode;
      
      private var §=!D§:uint;
      
      private var §0!U§:int;
      
      public function b2DynamicTree()
      {
         super();
         this.§&!7§ = null;
         this.§9Q§ = null;
         this.§=!D§ = 0;
         this.§0!U§ = 0;
      }
      
      public function §<R§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§]n§();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.§9!^§.x = param1.§9!^§.x - _loc4_;
         _loc3_.aabb.§9!^§.y = param1.§9!^§.y - _loc5_;
         _loc3_.aabb.§ I§.x = param1.§ I§.x + _loc4_;
         _loc3_.aabb.§ I§.y = param1.§ I§.y + _loc5_;
         _loc3_.§2=§ = param2;
         this.§`!`§(_loc3_);
         return _loc3_;
      }
      
      public function §'!F§(param1:b2DynamicTreeNode) : void
      {
         this.§5x§(param1);
         this.§#!U§(param1);
      }
      
      public function §>!8§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1.§"4§());
         if(param1.aabb.§ !F§(param2))
         {
            return false;
         }
         this.§5x§(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.§9!^§.x = param2.§9!^§.x - _loc4_;
         param1.aabb.§9!^§.y = param2.§9!^§.y - _loc5_;
         param1.aabb.§ I§.x = param2.§ I§.x + _loc4_;
         param1.aabb.§ I§.y = param2.§ I§.y + _loc5_;
         this.§`!`§(param1);
         return true;
      }
      
      public function §7O§(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this.§&!7§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§&!7§;
            _loc4_ = 0;
            while(_loc3_.§"4§() == false)
            {
               _loc3_ = !!(this.§=!D§ >> _loc4_ & 1) ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = _loc4_ + 1 & 31;
            }
            ++this.§=!D§;
            this.§5x§(_loc3_);
            this.§`!`§(_loc3_);
            _loc2_++;
         }
      }
      
      public function §?]§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§2=§;
      }
      
      public function §@!I§(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this.§&!7§ == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§&!7§;
         while(_loc4_ > 0)
         {
            if((_loc5_ = _loc3_[--_loc4_]).aabb.§&!?§(param2))
            {
               if(_loc5_.§"4§())
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
         if(this.§&!7§ == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§2V§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§39§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§5q§(_loc6_);
         var _loc8_:Number = param2.§^f§;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.§9!^§.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.§9!^§.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.§ I§.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.§ I§.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:int = 0;
         var _loc19_:*;
         _loc12_[_loc19_ = _loc13_++] = this.§&!7§;
         while(_loc13_ > 0)
         {
            if((_loc14_ = _loc12_[--_loc13_]).aabb.§&!?§(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb.§"N§();
               _loc16_ = _loc14_.aabb.§@!@§();
               if((_loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y) <= 0)
               {
                  if(_loc14_.§"4§())
                  {
                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_.§^f§ = param2.§^f§;
                     if((_loc8_ = param1(_loc18_,_loc14_)) == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.§9!^§.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.§9!^§.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.§ I§.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.§ I§.y = Math.max(_loc3_.y,_loc11_);
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
      
      private function §]n§() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.§9Q§)
         {
            _loc1_ = this.§9Q§;
            this.§9Q§ = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function §#!U§(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.§9Q§;
         this.§9Q§ = param1;
      }
      
      private function §`!`§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this.§0!U§;
         if(this.§&!7§ == null)
         {
            this.§&!7§ = param1;
            this.§&!7§.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb.§"N§();
         var _loc3_:b2DynamicTreeNode = this.§&!7§;
         if(_loc3_.§"4§() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.§9!^§.x + _loc6_.aabb.§ I§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§9!^§.y + _loc6_.aabb.§ I§.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.§9!^§.x + _loc7_.aabb.§ I§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§9!^§.y + _loc7_.aabb.§ I§.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_.§"4§() == false);
            
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode;
         (_loc5_ = this.§]n§()).parent = _loc4_;
         _loc5_.§2=§ = null;
         _loc5_.aabb.§ else§(param1.aabb,_loc3_.aabb);
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
            while(!_loc4_.aabb.§ !F§(_loc5_.aabb))
            {
               _loc4_.aabb.§ else§(_loc4_.child1.aabb,_loc4_.child2.aabb);
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
            this.§&!7§ = _loc5_;
         }
      }
      
      private function §5x§(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this.§&!7§)
         {
            this.§&!7§ = null;
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
            this.§#!U§(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB.§ else§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_.§ !F§(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this.§&!7§ = _loc4_;
            _loc4_.parent = null;
            this.§#!U§(_loc2_);
         }
      }
   }
}
