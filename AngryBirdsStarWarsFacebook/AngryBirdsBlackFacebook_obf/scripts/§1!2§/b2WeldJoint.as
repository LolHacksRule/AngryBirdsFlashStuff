package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Mat33;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   import §[R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §9X§:b2Vec2;
      
      private var §4!1§:b2Vec2;
      
      private var §^!#§:Number;
      
      private var §##,§:b2Vec3;
      
      private var §9#6§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§9X§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§4!1§ = new b2Vec2();
               while(true)
               {
                  this.§##,§ = new b2Vec3();
                  while(_loc2_)
                  {
                     this.§9#6§ = new b2Mat33();
                     while(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            loop5:
            while(true)
            {
               this.§9X§.SetV(param1.§!"4§);
               addr93:
               while(!_loc3_)
               {
                  this.§4!1§.SetV(param1.§#"B§);
                  continue loop5;
               }
               §§goto(addr106);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.§9X§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.§4!1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§##,§.x);
            if(!_loc2_)
            {
               §§goto(addr37);
            }
            §§goto(addr55);
         }
         addr37:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc2_ && _loc3_))
         {
            addr55:
            §§push(§§pop() * this.§##,§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && this))
         {
            return §§pop() * this.§##,§.z;
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
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         var _loc6_:b2Vec2 = _loc4_.§ #`§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc23_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§ #`§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc22_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§3#>§);
         if(!(_loc22_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§3#>§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§3"y§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§3"y§);
         if(!(_loc22_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§9X§.x);
         if(_loc23_ || param1)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr114:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§9X§.y);
            if(!(_loc22_ && param1))
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc23_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc23_ || _loc2_)
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
                     if(_loc23_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!(_loc22_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr256:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr255:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc2_.col1);
                                             if(!_loc23_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc23_)
                                             {
                                                if(_loc22_ && _loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc22_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc22_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc14_);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   if(_loc22_ && _loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc22_)
                                                   {
                                                      addr206:
                                                      §§push(_loc2_.col2);
                                                      if(_loc22_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!_loc22_)
                                                      {
                                                         addr213:
                                                         §§push(_loc15_);
                                                         if(_loc22_ && this)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc22_ && param1))
                                                      {
                                                         addr230:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(Number(§§pop()));
                                                            }
                                                            if(!_loc23_)
                                                            {
                                                               break;
                                                            }
                                                            _loc14_ = §§pop();
                                                            if(!(_loc23_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc22_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            while(false)
                                                            {
                                                               continue loop8;
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.§4!1§.x);
                                                            if(!_loc22_)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(!_loc22_)
                                                               {
                                                                  addr278:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc16_:* = §§pop();
                                                               §§push(this.§4!1§.y);
                                                               if(!(_loc22_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr297:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc17_:* = §§pop();
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     §§push(_loc2_.col1);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           §§push(_loc16_);
                                                                           if(_loc23_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc23_ || this)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc17_);
                                                                                       addr446:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr447:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr448:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr449:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   addr450:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr328:
                                                                                                      addr503:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_.col1);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(!(_loc23_ || _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop() * _loc15_);
                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr502:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr492:
                                                                                                               }
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc22_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                               continue loop15;
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      var _loc18_:* = §§pop();
                                                                                                      §§push(_loc8_.y);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc23_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           addr532:
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              addr537:
                                                                                                                              §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 addr540:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr537);
                                                                                                                        }
                                                                                                                        var _loc19_:* = §§pop();
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - _loc7_);
                                                                                                                           if(!(_loc22_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc20_:* = §§pop();
                                                                                                                        var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(this.§9#6§);
                                                                                                                           §§push(_loc21_);
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§##,§.§ true§(_loc21_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc21_.x);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 while(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc21_.y);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop30:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       addr767:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          addr768:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             addr769:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc21_.y);
                                                                                                                                                addr771:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr772:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc21_.x);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr782:
                                                                                                                                                      }
                                                                                                                                                      addr783:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         addr784:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_.z);
                                                                                                                                                            addr786:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               addr787:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr788:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr789:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr790:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(!(_loc22_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       return;
                                                                                                                                       addr592:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop46:
                                                                                                                              for(; _loc23_ || param1; for(; _loc23_ || _loc3_; _loc4_.m_angularVelocity = _loc7_,do
                                                                                                                              {
                                                                                                                                 _loc5_.m_angularVelocity = _loc9_;
                                                                                                                              }
                                                                                                                              while(_loc22_ && _loc3_);
                                                                                                                              ,if(!_loc23_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },§§goto(addr585))
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr791);
                                                                                                                                 }
                                                                                                                                 §§goto(addr764);
                                                                                                                              })
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             if(_loc23_ || this)
                                                                                                                                             {
                                                                                                                                                if(!(_loc22_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc22_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_.y);
                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc22_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_.x);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr673:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr676:
                                                                                                                                                                                          if(!_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr681:
                                                                                                                                                                                             §§push(§§pop() * (§§pop() + _loc21_.z));
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr700:
                                                                                                                                                                                                      _loc9_ = Number(§§pop());
                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr789);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr700);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr768);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr784);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr681);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr782);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr673);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr772);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr676);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr771);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr783);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr786);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr681);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr769);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr787);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr676);
                                                                                                                                                }
                                                                                                                                                §§goto(addr788);
                                                                                                                                             }
                                                                                                                                             §§goto(addr681);
                                                                                                                                          }
                                                                                                                                          §§goto(addr767);
                                                                                                                                       }
                                                                                                                                       §§goto(addr790);
                                                                                                                                    }
                                                                                                                                    §§goto(addr700);
                                                                                                                                 }
                                                                                                                                 §§goto(addr592);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr749);
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr540);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      §§goto(addr532);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           §§goto(addr458);
                                                                        }
                                                                        §§goto(addr503);
                                                                     }
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr256);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr255);
                  }
               }
            }
            §§goto(addr167);
         }
         §§goto(addr114);
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
