package §_-qg§
{
   import §_-Ja§.*;
   import §_-lh§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §_-Me§:b2DynamicTreeNode;
      
      private var §_-1Y§:b2DynamicTreeNode;
      
      private var §_-TF§:uint;
      
      private var §_-9T§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§_-Me§ = null;
               if(!(_loc2_ && _loc1_))
               {
                  this.§_-1Y§ = null;
                  if(!(_loc2_ && this))
                  {
                     addr53:
                     this.§_-TF§ = 0;
                     if(_loc1_)
                     {
                        addr58:
                        this.§_-9T§ = 0;
                     }
                  }
                  §§goto(addr58);
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr58);
      }
      
      public function §_-mf§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§_-q1§();
         if(_loc6_ || _loc3_)
         {
            §§push(b2Settings.b2_aabbExtension);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
               if(!(_loc7_ && param1))
               {
                  _loc4_ = §§pop();
                  if(!(_loc7_ && param1))
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc6_)
                     {
                        addr61:
                        _loc5_ = §§pop();
                        §§push(_loc3_.aabb);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop().§_-N-§);
                           if(_loc6_ || this)
                           {
                              §§push(param1.§_-N-§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(_loc3_.aabb);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr129:
                                                §§push(§§pop().§_-N-§);
                                                §§push(param1.§_-N-§.y);
                                                if(_loc6_)
                                                {
                                                   §§push(_loc5_);
                                                }
                                                §§pop().y = §§pop();
                                                if(!_loc7_)
                                                {
                                                   addr132:
                                                   §§push(_loc3_.aabb);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop().§_-TE§);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(param1.§_-TE§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        addr175:
                                                                        §§push(_loc3_.aabb.§_-TE§);
                                                                        §§push(param1.§_-TE§.y);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr187:
                                                                           §§pop().y = §§pop() + _loc5_;
                                                                           _loc3_.§_-Vb§ = param2;
                                                                           addr186:
                                                                           addr178:
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     this.§_-5Z§(_loc3_);
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                              }
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr61);
         }
         addr194:
         return _loc3_;
      }
      
      public function §_-aV§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-GM§(param1);
            if(_loc3_ || _loc2_)
            {
               this.§_-dB§(param1);
            }
         }
      }
      
      public function §_-Se§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && param2))
         {
            b2Settings.b2Assert(param1.§_-dO§());
            if(!(_loc6_ && param2))
            {
               §§push(param1.aabb);
               if(!_loc6_)
               {
                  §§push(§§pop().§_-r2§(param2));
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        §§push(false);
                        if(!(_loc6_ && param2))
                        {
                           §§goto(addr53);
                        }
                     }
                     else
                     {
                        this.§_-GM§(param1);
                        §§push(b2Settings.b2_aabbExtension);
                        if(!(_loc6_ && param3))
                        {
                           §§push(b2Settings.b2_aabbMultiplier);
                           if(!(_loc6_ && param3))
                           {
                              §§push(param3.x);
                              §§push(0);
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(param3.x);
                                          if(!(_loc6_ && param3))
                                          {
                                             addr113:
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                addr116:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc6_ && param3))
                                                {
                                                   addr124:
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr128:
                                                      §§push(b2Settings.b2_aabbExtension);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(b2Settings.b2_aabbMultiplier);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr148:
                                                            if(param3.y > 0)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  addr168:
                                                                  §§push(§§pop() * param3.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr177:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc5_ = §§pop();
                                                               §§push(param1.aabb);
                                                               if(_loc7_)
                                                               {
                                                                  addr183:
                                                                  §§push(§§pop().§_-N-§);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(param2.§_-N-§);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr209:
                                                                                 §§pop().x = §§pop();
                                                                                 §§push(param1.aabb);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr217);
                                                                                 }
                                                                                 §§goto(addr227);
                                                                              }
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     addr217:
                                                                     §§goto(addr215);
                                                                  }
                                                                  addr215:
                                                                  §§goto(addr214);
                                                               }
                                                               addr214:
                                                               §§push(§§pop().§_-N-§);
                                                               §§push(param2.§_-N-§.y);
                                                               if(!_loc6_)
                                                               {
                                                                  addr220:
                                                                  §§push(§§pop() - _loc5_);
                                                               }
                                                               §§pop().y = §§pop();
                                                               §§push(param1.aabb);
                                                               if(_loc7_)
                                                               {
                                                                  addr227:
                                                                  §§push(§§pop().§_-TE§);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(param2.§_-TE§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr253);
                                                                              }
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            else
                                                            {
                                                               §§push(-param3.y);
                                                            }
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                   }
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       §§push(-param3.x);
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr124);
                     }
                     addr253:
                     §§pop().x = §§pop();
                     §§push(param1.aabb.§_-TE§);
                     §§push(param2.§_-TE§.y);
                     if(_loc7_)
                     {
                        addr269:
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().y = §§pop();
                     this.§_-5Z§(param1);
                     return true;
                  }
                  addr53:
                  return §§pop();
               }
               §§goto(addr183);
            }
            §§goto(addr217);
         }
         §§goto(addr128);
      }
      
      public function §_-pP§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_ || this)
         {
            if(this.§_-Me§ == null)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§_-Me§;
               §§push(0);
               if(_loc7_ || param1)
               {
                  §§push(uint(§§pop()));
                  if(_loc7_)
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        if(_loc3_.§_-dO§() != false)
                        {
                           var _loc5_:*;
                           var _loc6_:* = (_loc5_ = this).§_-TF§ + 1;
                           if(_loc7_ || this)
                           {
                              _loc5_.§_-TF§ = _loc6_;
                           }
                           if(!_loc8_)
                           {
                              this.§_-GM§(_loc3_);
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                           }
                           this.§_-5Z§(_loc3_);
                           if(!_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(this.§_-TF§);
                     }
                     addr144:
                     _loc2_++;
                     continue;
                     addr103:
                  }
                  while(true)
                  {
                     §§push(§§pop() >> _loc4_);
                     if(_loc7_)
                     {
                        §§push(§§pop() & 1);
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || _loc3_)
                     {
                        addr90:
                        _loc3_ = _loc3_.child2;
                        if(!_loc8_)
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              §§push(uint(§§pop() + 1 & 31));
                           }
                           _loc4_ = §§pop();
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     §§push(_loc3_.child1);
                  }
                  §§goto(addr90);
               }
            }
            return;
         }
         addr37:
      }
      
      public function §_-zV§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§_-Vb§;
      }
      
      public function §_-7a§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc10_ && _loc3_))
         {
            if(this.§_-Me§ == null)
            {
               if(_loc11_ || this)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§_-Me§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§_-pb§(param2));
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && param2))
                     {
                        §§push(_loc5_.§_-dO§());
                        if(_loc11_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(_loc11_ || this)
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                              continue;
                           }
                           if(!(_loc10_ && this))
                           {
                              §§push(Boolean(param1(_loc5_)));
                              if(!_loc10_)
                              {
                                 addr112:
                                 §§push(_loc6_ = §§pop());
                              }
                              if(!§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                  }
                  continue;
               }
               §§goto(addr112);
            }
            return;
         }
         addr37:
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!(_loc22_ && this))
         {
            if(this.§_-Me§ == null)
            {
               if(!(_loc22_ && this))
               {
                  §§goto(addr56);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§_-TD§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§_-dj§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§_-zM§(_loc6_);
            §§push(param2.§_-fa§);
            if(_loc23_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(!_loc22_)
            {
               §§push(_loc3_.x);
               if(!_loc22_)
               {
                  §§push(_loc8_);
                  if(!_loc22_)
                  {
                     §§push(_loc4_.x);
                     if(_loc23_)
                     {
                        §§push(_loc3_.x);
                        if(!_loc22_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc22_ && param2))
                           {
                              addr124:
                              §§push(§§pop() * §§pop());
                              if(!_loc22_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc23_)
                                 {
                                    addr130:
                                    §§push(Number(§§pop()));
                                    if(_loc23_ || param2)
                                    {
                                       _loc10_ = §§pop();
                                       if(!_loc22_)
                                       {
                                          §§push(_loc3_.y);
                                          if(!(_loc22_ && this))
                                          {
                                             §§push(_loc8_);
                                             if(_loc23_)
                                             {
                                                addr161:
                                                §§push(_loc4_.y);
                                                if(_loc23_)
                                                {
                                                   addr157:
                                                   §§push(§§pop() - _loc3_.y);
                                                }
                                                §§push(§§pop() + §§pop() * §§pop());
                                                if(_loc23_)
                                                {
                                                   addr164:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc11_ = §§pop();
                                                §§push(_loc9_.§_-N-§);
                                                if(!_loc22_)
                                                {
                                                   §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                   if(_loc23_)
                                                   {
                                                      addr180:
                                                      _loc9_.§_-N-§.y = Math.min(_loc3_.y,_loc11_);
                                                      addr186:
                                                      §§push(_loc9_.§_-TE§);
                                                      if(!(_loc22_ && this))
                                                      {
                                                         §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                         addr201:
                                                         §§push(_loc9_.§_-TE§);
                                                      }
                                                      §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                      var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                      var _loc13_:int = 0;
                                                      var _loc19_:*;
                                                      _loc12_[_loc19_ = _loc13_++] = this.§_-Me§;
                                                      while(_loc13_ > 0)
                                                      {
                                                         §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                         if(!_loc22_)
                                                         {
                                                            if(§§pop().§_-pb§(_loc9_) == false)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc14_.aabb);
                                                         }
                                                         _loc15_ = §§pop().§_-aW§();
                                                         _loc16_ = _loc14_.aabb.§_-Dr§();
                                                         if(!_loc22_)
                                                         {
                                                            §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                            if(_loc23_ || param1)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop() * _loc16_.y);
                                                                  if(!(_loc22_ && param2))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc23_ || _loc3_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc23_)
                                                                        {
                                                                           addr323:
                                                                           §§push(§§pop());
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              addr331:
                                                                              _loc17_ = §§pop();
                                                                           }
                                                                           addr333:
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!_loc22_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr342:
                                                                              (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                              if(_loc23_)
                                                                              {
                                                                                 _loc18_.p2 = param2.p2;
                                                                                 if(!(_loc22_ && this))
                                                                                 {
                                                                                    _loc18_.§_-fa§ = param2.§_-fa§;
                                                                                    §§push(Number(param1(_loc18_,_loc14_)));
                                                                                    §§push(Number(param1(_loc18_,_loc14_)));
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       §§push(0);
                                                                                       if(_loc23_ || param2)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             addr489:
                                                                                             _loc9_.§_-N-§.y = Math.min(_loc3_.y,_loc11_);
                                                                                             addr487:
                                                                                             §§push(_loc9_.§_-TE§);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                                                                if(_loc23_ || this)
                                                                                                {
                                                                                                   addr514:
                                                                                                   _loc9_.§_-TE§.y = Math.max(_loc3_.y,_loc11_);
                                                                                                }
                                                                                                addr520:
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr514);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc3_.x);
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc4_.x);
                                                                                                if(_loc23_ || param1)
                                                                                                {
                                                                                                   §§push(_loc3_.x);
                                                                                                   if(!(_loc22_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(!(_loc22_ && this))
                                                                                                                  {
                                                                                                                     addr451:
                                                                                                                     §§push(_loc3_.y);
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!(_loc22_ && param2))
                                                                                                                     {
                                                                                                                        addr459:
                                                                                                                        §§push(_loc4_.y);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           addr467:
                                                                                                                           _loc11_ = Number(§§pop() + §§pop() * (§§pop() - _loc3_.y));
                                                                                                                           addr466:
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              addr472:
                                                                                                                              §§push(_loc9_.§_-N-§);
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                                                                                                 §§goto(addr487);
                                                                                                                              }
                                                                                                                              §§goto(addr489);
                                                                                                                           }
                                                                                                                           §§goto(addr514);
                                                                                                                        }
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                     §§goto(addr467);
                                                                                                                  }
                                                                                                                  §§goto(addr520);
                                                                                                               }
                                                                                                               §§goto(addr451);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr467);
                                                                                             }
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 §§goto(addr472);
                                                                              }
                                                                              §§goto(addr451);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(!_loc14_.§_-dO§())
                                                                              {
                                                                                 var _loc20_:*;
                                                                                 _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    var _loc21_:*;
                                                                                    _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(_loc22_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      return;
                                                      addr178:
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr161);
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr161);
               }
               §§goto(addr130);
            }
            §§goto(addr178);
         }
         addr56:
      }
      
      private function §_-q1§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-1Y§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr30:
                  _loc1_ = this.§_-1Y§;
                  if(!(_loc3_ && this))
                  {
                     this.§_-1Y§ = _loc1_.parent;
                     if(!_loc3_)
                     {
                        _loc1_.parent = null;
                        if(!_loc3_)
                        {
                           _loc1_.child1 = null;
                           if(_loc3_)
                           {
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr74);
                     }
                     _loc1_.child2 = null;
                     if(_loc3_)
                     {
                        §§goto(addr76);
                     }
                  }
                  addr74:
                  return _loc1_;
                  addr28:
               }
               addr76:
               return new b2DynamicTreeNode();
            }
            §§goto(addr30);
         }
         §§goto(addr28);
      }
      
      private function §_-dB§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.parent = this.§_-1Y§;
            if(_loc2_)
            {
               this.§_-1Y§ = param1;
            }
         }
      }
      
      private function §_-5Z§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!_loc13_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§_-9T§);
            if(!(_loc13_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_)
            {
               _loc10_.§_-9T§ = _loc11_;
            }
            if(_loc12_ || this)
            {
               §§push(this.§_-Me§);
               if(_loc12_ || _loc3_)
               {
                  §§push(null);
                  if(!(_loc13_ && this))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc13_ && _loc2_))
                        {
                           this.§_-Me§ = param1;
                           if(_loc12_ || _loc3_)
                           {
                              addr90:
                              this.§_-Me§.parent = null;
                              if(_loc13_ && _loc2_)
                              {
                                 addr99:
                                 var _loc2_:b2Vec2 = param1.aabb.§_-aW§();
                                 var _loc3_:b2DynamicTreeNode = this.§_-Me§;
                                 if(_loc12_ || param1)
                                 {
                                    if(_loc3_.§_-dO§() == false)
                                    {
                                       addr119:
                                       do
                                       {
                                          _loc6_ = _loc3_.child1;
                                          _loc7_ = _loc3_.child2;
                                          if(_loc12_ || param1)
                                          {
                                             §§push(Number(Math.abs((_loc6_.aabb.§_-N-§.x + _loc6_.aabb.§_-TE§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§_-N-§.y + _loc6_.aabb.§_-TE§.y) / 2 - _loc2_.y)));
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                _loc8_ = §§pop();
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   §§push(Number(Math.abs((_loc7_.aabb.§_-N-§.x + _loc7_.aabb.§_-TE§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§_-N-§.y + _loc7_.aabb.§_-TE§.y) / 2 - _loc2_.y)));
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      _loc9_ = §§pop();
                                                      addr239:
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc8_);
                                                      }
                                                      _loc3_ = _loc6_;
                                                      if(!(_loc12_ || this))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr239);
                                             }
                                             if(§§pop() >= _loc9_)
                                             {
                                                _loc3_ = _loc7_;
                                                continue;
                                             }
                                          }
                                          §§goto(addr239);
                                       }
                                       while(_loc3_.§_-dO§() == false);
                                       
                                    }
                                    var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                    var _loc5_:b2DynamicTreeNode;
                                    (_loc5_ = this.§_-q1§()).parent = _loc4_;
                                    _loc5_.§_-Vb§ = null;
                                    §§push(_loc5_.aabb);
                                    if(_loc12_)
                                    {
                                       §§push(param1.aabb);
                                       if(!_loc13_)
                                       {
                                          §§push(_loc3_.aabb);
                                          if(_loc12_ || _loc3_)
                                          {
                                             §§pop().§_-ot§(§§pop(),§§pop());
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
                                                if(_loc12_)
                                                {
                                                   param1.parent = _loc5_;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.aabb);
                                                      if(!_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.aabb);
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               if(§§pop().§_-r2§(§§pop()))
                                                               {
                                                                  if(!(_loc12_ || _loc2_))
                                                                  {
                                                                     addr389:
                                                                     this.§_-Me§ = _loc5_;
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc4_.aabb);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.child1.aabb);
                                                                     addr347:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.child2.aabb);
                                                                        addr350:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§_-ot§(§§pop(),§§pop());
                                                                           _loc5_ = _loc4_;
                                                                           if(!(_loc4_ = _loc4_.parent))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr344:
                                                               }
                                                               addr392:
                                                               return;
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                         addr323:
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc5_.child1 = _loc3_;
                                                _loc5_.child2 = param1;
                                                if(!_loc13_)
                                                {
                                                   _loc3_.parent = _loc5_;
                                                   if(_loc12_ || this)
                                                   {
                                                      param1.parent = _loc5_;
                                                      §§goto(addr389);
                                                   }
                                                }
                                             }
                                             §§goto(addr389);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr323);
                                 }
                                 §§goto(addr119);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr99);
      }
      
      private function §_-GM§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && this))
         {
            if(param1 == this.§_-Me§)
            {
               if(!(_loc6_ && param1))
               {
                  this.§_-Me§ = null;
                  if(!_loc6_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            var _loc2_:b2DynamicTreeNode = param1.parent;
            var _loc3_:b2DynamicTreeNode = _loc2_.parent;
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_.child1);
               if(_loc7_)
               {
                  if(§§pop() == param1)
                  {
                     addr65:
                     _loc4_ = _loc2_.child2;
                  }
                  else
                  {
                     addr72:
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
                     this.§_-dB§(_loc2_);
                     do
                     {
                        if(_loc3_)
                        {
                           _loc5_ = _loc3_.aabb;
                           if(_loc7_)
                           {
                              _loc3_.aabb = b2AABB.§_-ot§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                              if(_loc7_ || param1)
                              {
                                 if(!_loc5_.§_-r2§(_loc3_.aabb))
                                 {
                                    continue;
                                 }
                              }
                           }
                           break;
                        }
                     }
                     while(_loc6_);
                     
                  }
                  else
                  {
                     this.§_-Me§ = _loc4_;
                     if(!(_loc6_ && this))
                     {
                        _loc4_.parent = null;
                        if(_loc7_)
                        {
                           this.§_-dB§(_loc2_);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr72);
            }
            §§goto(addr65);
         }
         addr43:
      }
   }
}
