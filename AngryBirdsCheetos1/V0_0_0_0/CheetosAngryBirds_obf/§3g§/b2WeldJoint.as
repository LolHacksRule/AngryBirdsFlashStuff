package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Mat33;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §9"§.b2Vec3;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var § get§:b2Vec2;
      
      private var §2>§:b2Vec2;
      
      private var §^!O§:Number;
      
      private var §8v§:b2Vec3;
      
      private var §#!&§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ get§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2>§ = new b2Vec2();
               while(true)
               {
                  this.§8v§ = new b2Vec3();
                  loop2:
                  while(_loc2_)
                  {
                     this.§#!&§ = new b2Mat33();
                     loop3:
                     while(true)
                     {
                        super(param1);
                        addr99:
                        while(true)
                        {
                           this.§ get§.SetV(param1.§4B§);
                           while(true)
                           {
                              this.§2>§.SetV(param1.§ !Q§);
                              addr78:
                              while(!(_loc3_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    this.§^!O§ = param1.§72§;
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
                  addr41:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  this.§#!&§ = new b2Mat33();
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr54);
                     }
                     return;
                     addr32:
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr41);
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                     break;
                     §§goto(addr48);
                  }
                  addr48:
                  §§goto(addr78);
               }
            }
         }
         while(true)
         {
            this.§8v§.§^!#§();
            §§goto(addr37);
         }
         §§goto(addr32);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.§ get§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§2>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§8v§.x);
            if(!_loc3_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * this.§8v§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§8v§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         var _loc6_:b2Vec2 = _loc4_.§%=§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%=§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§]m§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§]m§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§?0§);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§?0§);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ get§.x);
         if(!(_loc23_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               addr108:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§ get§.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc22_ || param1)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr242:
                  while(true)
                  {
                     §§push(_loc14_);
                     addr243:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr244:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr246:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc23_)
                              {
                                 §§push(_loc15_);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr250:
                              }
                              addr251:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr252:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr253:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  loop10:
                  while(true)
                  {
                     §§push(_loc2_.col1);
                     if(_loc23_ && _loc3_)
                     {
                        continue loop0;
                     }
                     §§push(§§pop().y);
                     loop11:
                     for(; !(_loc23_ && _loc2_); if(_loc23_ && _loc2_)
                     {
                        continue;
                     },if(!_loc23_)
                     {
                        §§goto(addr153);
                        §§push(Number(§§pop()));
                     },§§goto(addr252))
                     {
                        if(!(_loc23_ && _loc3_))
                        {
                           if(!(_loc23_ && param1))
                           {
                              §§push(_loc14_);
                              if(_loc22_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop12:
                                 while(true)
                                 {
                                    §§push(_loc2_.col2);
                                    if(_loc22_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc22_)
                                       {
                                          while(true)
                                          {
                                             if(!_loc23_)
                                             {
                                                §§push(_loc15_);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      if(!(_loc23_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc15_ = §§pop();
                                                               while(_loc22_ || _loc2_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr153:
                                                                  if(!_loc22_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc23_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  _loc14_ = §§pop();
                                                                  if(!(_loc22_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  _loc2_ = _loc5_.m_xf.R;
                                                                  §§push(this.§2>§.x);
                                                                  if(_loc22_ || param1)
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  §§push(this.§2>§.y);
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                     if(_loc22_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc17_:* = §§pop();
                                                                  if(!(_loc23_ && _loc2_))
                                                                  {
                                                                     addr410:
                                                                     §§push(_loc2_.col1.x);
                                                                     if(_loc22_)
                                                                     {
                                                                        addr409:
                                                                        §§push(§§pop() * _loc16_);
                                                                     }
                                                                     §§push(_loc2_.col2.x);
                                                                     if(!(_loc23_ && _loc3_))
                                                                     {
                                                                        addr431:
                                                                        §§push(§§pop() * _loc17_);
                                                                        if(!_loc23_)
                                                                        {
                                                                           addr435:
                                                                           §§push(Number(§§pop() + §§pop()));
                                                                           if(!_loc23_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr341:
                                                                              addr439:
                                                                              §§push(_loc2_.col1);
                                                                              if(_loc22_ || param1)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       addr358:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       §§push(_loc2_.col2);
                                                                                       if(_loc22_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc22_ || param1)
                                                                                          {
                                                                                             if(_loc22_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc17_);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            addr394:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc23_ && param1))
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               addr402:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        if(_loc22_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(_loc22_ || this)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr341);
                                                                                                                                    }
                                                                                                                                    §§push(_loc8_.x);
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr447:
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             addr455:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc22_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                {
                                                                                                                                                   addr471:
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr475:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr478:
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr483:
                                                                                                                                                            addr481:
                                                                                                                                                            addr482:
                                                                                                                                                            §§push(§§pop() + §§pop() * _loc15_);
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            var _loc18_:* = §§pop();
                                                                                                                                                            §§push(_loc8_.y);
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc22_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr513:
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr516:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(_loc22_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr526:
                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr529:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr526);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc19_:* = §§pop();
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(_loc22_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - _loc7_);
                                                                                                                                                                                 if(_loc22_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr548:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                                                                 var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§#!&§);
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(_loc22_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                    this.§8v§.§`!§(_loc21_);
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(_loc22_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc21_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc21_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr815:
                                                                                                                                                                                    addr847:
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr762:
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             §§push(_loc14_ * _loc21_.y);
                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr750:
                                                                                                                                                                                                §§push(§§pop() * _loc21_.x);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr754:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   §§push(_loc21_.z);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                          if(_loc22_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             §§push(_loc8_.x);
                                                                                                                                                                                             if(_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * _loc21_.x);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             addr733:
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                §§push(_loc8_.y);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(_loc22_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * _loc21_.y);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr716:
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc22_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(_loc22_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc22_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc21_.y);
                                                                                                                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc22_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr636:
                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr639:
                                                                                                                                                                                                                                    §§push(_loc21_.x);
                                                                                                                                                                                                                                    if(_loc22_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc22_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(_loc22_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr664:
                                                                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr674:
                                                                                                                                                                                                                                                §§push(§§pop() + _loc21_.z);
                                                                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr689:
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr694:
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                                                                         _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc22_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr572);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr716);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr696:
                                                                                                                                                                                                                                                         §§goto(addr696);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr741);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr754);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr674);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr750);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr674);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr664);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr741);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr639);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr741);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr636);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr741);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr689);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr762);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr694);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr762);
                                                                                                                                                                                                addr735:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr815);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr847);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr809:
                                                                                                                                                                                    §§goto(addr809);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr735);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr548);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr526);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr529);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr513);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr526);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr513);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr516);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr483);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr483);
                                                                                                                                                }
                                                                                                                                                §§goto(addr478);
                                                                                                                                             }
                                                                                                                                             §§goto(addr481);
                                                                                                                                          }
                                                                                                                                          §§goto(addr482);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                                 §§goto(addr439);
                                                                                                                              }
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                           §§goto(addr358);
                                                                                                                        }
                                                                                                                        §§goto(addr394);
                                                                                                                     }
                                                                                                                     §§goto(addr483);
                                                                                                                  }
                                                                                                                  §§goto(addr435);
                                                                                                               }
                                                                                                               §§goto(addr483);
                                                                                                            }
                                                                                                            §§goto(addr410);
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr410);
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               addr254:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr221:
                                                }
                                                else
                                                {
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr251);
                                             }
                                             else
                                             {
                                                §§goto(addr243);
                                             }
                                          }
                                          addr215:
                                       }
                                       §§goto(addr221);
                                    }
                                    break;
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr215);
                           }
                           else
                           {
                              §§goto(addr242);
                           }
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr253);
                  }
               }
            }
            §§goto(addr254);
         }
         §§goto(addr108);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
