package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Mat33;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<!a§.b2Vec3;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §1!e§:b2Vec2;
      
      private var §3!p§:b2Vec2;
      
      private var §"e§:Number;
      
      private var §5!i§:b2Vec3;
      
      private var §?j§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1!e§ = new b2Vec2();
            while(true)
            {
               this.§3!p§ = new b2Vec2();
            }
            addr149:
         }
         loop1:
         while(true)
         {
            this.§5!i§ = new b2Vec3();
            loop2:
            while(true)
            {
               this.§?j§ = new b2Mat33();
               loop3:
               while(true)
               {
                  super(param1);
                  loop4:
                  while(true)
                  {
                     this.§1!e§.SetV(param1.§3!&§);
                     while(true)
                     {
                        this.§3!p§.SetV(param1.§2!P§);
                        loop6:
                        while(_loc2_)
                        {
                           this.§"e§ = param1.§ "2§;
                           loop7:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              addr45:
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop7;
                                 addr61:
                                 this.§?j§ = new b2Mat33();
                                 if(!(_loc3_ && param1))
                                 {
                                    return;
                                 }
                              }
                              continue loop6;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.§1!e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§3!p§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§5!i§.x);
            if(_loc3_ || this)
            {
               §§goto(addr47);
            }
            §§goto(addr65);
         }
         addr47:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || param1)
         {
            addr65:
            §§push(§§pop() * this.§5!i§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            return §§pop() * this.§5!i§.z;
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
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc6_:b2Vec2 = _loc4_.§]!g§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§]!g§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§@"!§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§@"!§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§=!N§);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§=!N§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§1!e§.x);
         if(!_loc23_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               addr103:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§1!e§.y);
            if(!_loc23_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && param1))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc14_);
                     if(!_loc23_)
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr216:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc23_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr220:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr219:
                              }
                              addr221:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr222:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr223:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr224:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           addr193:
                           if(!(_loc22_ || param1))
                           {
                              continue;
                           }
                           if(!_loc22_)
                           {
                              continue loop1;
                           }
                           §§push(Number(§§pop()));
                           loop13:
                           while(true)
                           {
                              _loc15_ = §§pop();
                              while(_loc22_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc23_)
                                 {
                                    if(_loc22_ || this)
                                    {
                                       if(_loc22_)
                                       {
                                          addr141:
                                          §§push(Number(§§pop()));
                                          if(_loc23_)
                                          {
                                             continue loop13;
                                          }
                                          _loc14_ = §§pop();
                                          if(_loc23_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             continue loop0;
                                          }
                                          _loc2_ = _loc5_.m_xf.R;
                                          §§push(this.§3!p§.x);
                                          if(_loc22_)
                                          {
                                             §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                             if(!_loc23_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc16_:* = §§pop();
                                          §§push(this.§3!p§.y);
                                          if(_loc22_)
                                          {
                                             §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                             if(_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc17_:* = §§pop();
                                          if(_loc22_)
                                          {
                                             addr365:
                                             §§push(_loc2_.col1.x);
                                             if(!(_loc23_ && _loc3_))
                                             {
                                                addr375:
                                                §§push(§§pop() * _loc16_);
                                                §§push(_loc2_.col2.x);
                                                if(_loc22_)
                                                {
                                                   addr381:
                                                   §§push(§§pop() * _loc17_);
                                                   if(!(_loc23_ && _loc3_))
                                                   {
                                                      addr390:
                                                      §§push(Number(§§pop() + §§pop()));
                                                      if(_loc22_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr287:
                                                         addr404:
                                                         §§push(_loc2_.col1);
                                                         if(_loc22_ || _loc3_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc22_)
                                                            {
                                                               §§push(_loc16_);
                                                               if(_loc22_)
                                                               {
                                                                  if(_loc22_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc22_ || _loc3_)
                                                                     {
                                                                        addr318:
                                                                        §§push(_loc2_.col2);
                                                                        if(_loc22_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc22_ || this)
                                                                           {
                                                                              §§push(_loc17_);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 if(!(_loc23_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc22_ || param1)
                                                                                    {
                                                                                       addr357:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          addr360:
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(_loc22_ || _loc2_)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr287);
                                                                                                            }
                                                                                                            §§push(_loc8_.x);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               addr409:
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     addr415:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        addr418:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           addr421:
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(_loc22_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr430:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 addr433:
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc22_ || this)
                                                                                                                                 {
                                                                                                                                    addr441:
                                                                                                                                    §§push(§§pop() * _loc15_);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr447:
                                                                                                                                 var _loc18_:* = §§pop();
                                                                                                                                 §§push(_loc8_.y);
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(_loc22_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr478:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr486:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr494:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc19_:* = §§pop();
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc22_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - _loc7_);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr508:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         var _loc20_:* = §§pop();
                                                                                                                                                         var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§?j§);
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                            if(_loc22_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                            this.§5!i§.§<!n§(_loc21_);
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(_loc22_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc21_.x);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr775:
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(_loc22_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc21_.y);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               addr692:
                                                                                                                                                               addr726:
                                                                                                                                                               addr693:
                                                                                                                                                               addr721:
                                                                                                                                                               addr722:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(_loc22_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr703:
                                                                                                                                                                  §§push(§§pop() * _loc21_.y);
                                                                                                                                                                  if(_loc22_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr718:
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr716:
                                                                                                                                                                        §§push(§§pop() * _loc21_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop() + _loc21_.z);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               §§push(_loc8_.x);
                                                                                                                                                               if(_loc22_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc21_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr747:
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  §§push(_loc8_.y);
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc21_.y);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr663:
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                 if(_loc22_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc21_.y);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_.x);
                                                                                                                                                                                                      if(_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc22_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr602:
                                                                                                                                                                                                            if(_loc22_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc22_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr617:
                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr622:
                                                                                                                                                                                                                     §§push(§§pop() * (§§pop() + _loc21_.z));
                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr633:
                                                                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr638:
                                                                                                                                                                                                                                 _loc9_ = Number(§§pop());
                                                                                                                                                                                                                                 addr639:
                                                                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                       _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr747);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                             addr536:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr639);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr541:
                                                                                                                                                                                                                                       §§goto(addr541);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr747);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr692);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr726);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr638);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr718);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr622);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr718);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr622);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr716);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr718);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr602);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr622);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr703);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr602);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr721);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr617);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr622);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr633);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr775);
                                                                                                                                                               }
                                                                                                                                                               addr727:
                                                                                                                                                               §§goto(addr727);
                                                                                                                                                            }
                                                                                                                                                            addr807:
                                                                                                                                                            §§goto(addr807);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr536);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr508);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr494);
                                                                                                                                                }
                                                                                                                                                addr485:
                                                                                                                                                §§push(§§pop() * _loc14_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr494);
                                                                                                                                          }
                                                                                                                                          §§goto(addr486);
                                                                                                                                       }
                                                                                                                                       §§goto(addr485);
                                                                                                                                    }
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 §§goto(addr494);
                                                                                                                              }
                                                                                                                              §§goto(addr447);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr441);
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                            §§goto(addr433);
                                                                                                         }
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr433);
                                                                                             }
                                                                                             §§goto(addr421);
                                                                                             addr362:
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr415);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr433);
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr365);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr441);
                                             }
                                             §§goto(addr433);
                                          }
                                          §§goto(addr362);
                                       }
                                       else
                                       {
                                          §§goto(addr222);
                                       }
                                    }
                                    else
                                    {
                                       addr175:
                                       while(true)
                                       {
                                          §§push(_loc2_.col2);
                                          if(_loc23_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().y);
                                          if(_loc22_)
                                          {
                                             while(_loc22_)
                                             {
                                                §§push(_loc15_);
                                                if(_loc22_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc22_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc23_)
                                                      {
                                                         §§goto(addr193);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                   }
                                                   addr188:
                                                }
                                                else
                                                {
                                                   §§goto(addr220);
                                                }
                                             }
                                             §§goto(addr221);
                                             addr182:
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr216);
                                       addr175:
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                     §§goto(addr219);
                  }
               }
            }
            §§goto(addr224);
         }
         §§goto(addr103);
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
