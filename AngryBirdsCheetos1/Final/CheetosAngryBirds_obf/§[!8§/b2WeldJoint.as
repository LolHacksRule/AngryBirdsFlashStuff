package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Mat33;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §0!G§.b2Vec3;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §1@§:b2Vec2;
      
      private var §8!%§:b2Vec2;
      
      private var §@4§:Number;
      
      private var § !6§:b2Vec3;
      
      private var §3!7§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1@§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§8!%§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.§ !6§ = new b2Vec3();
               loop2:
               while(true)
               {
                  this.§3!7§ = new b2Mat33();
                  while(true)
                  {
                     super(param1);
                     continue loop2;
                     addr98:
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§@4§ = param1.§;=§;
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           addr91:
                           addr91:
                           while(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr98);
                           }
                           addr45:
                           continue loop2;
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr52:
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop7;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.§1@§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.§8!%§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§ !6§.x);
            if(!(_loc2_ && this))
            {
               addr42:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * this.§ !6§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§ !6§.z;
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
         var _loc4_:b2Body = b2internal::`p;
         var _loc5_:b2Body = b2internal::%^;
         var _loc6_:b2Vec2 = _loc4_.§,?§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§,?§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§#!D§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§#!D§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§?8§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§?8§);
         if(!(_loc23_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§1@§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc22_ || _loc2_)
            {
               addr108:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§1@§.y);
            if(!_loc23_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc23_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && _loc3_))
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
                     if(!(_loc23_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr268:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr267:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc22_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr279:
                                    addr209:
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                    loop15:
                                    while(!(_loc23_ && this))
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc22_)
                                       {
                                          addr220:
                                          §§push(§§pop().y);
                                          if(!(_loc23_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc15_);
                                                if(!_loc22_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                §§goto(addr220);
                                             }
                                             §§goto(addr268);
                                             addr228:
                                          }
                                          while(!(_loc23_ && this))
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc15_ = §§pop();
                                                   while(!(_loc23_ && param1))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc23_ && param1))
                                                      {
                                                         if(_loc23_ && this)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc23_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(_loc23_ && this)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(!_loc22_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      _loc14_ = §§pop();
                                                      if(_loc23_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc2_ = _loc5_.m_xf.R;
                                                      §§push(this.§8!%§.x);
                                                      if(_loc22_ || this)
                                                      {
                                                         §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                         if(_loc22_ || param1)
                                                         {
                                                            addr307:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc16_:* = §§pop();
                                                         §§push(this.§8!%§.y);
                                                         if(_loc22_)
                                                         {
                                                            §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                            if(!_loc23_)
                                                            {
                                                               addr321:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc17_:* = §§pop();
                                                            if(!(_loc23_ && param1))
                                                            {
                                                               addr421:
                                                               §§push(_loc2_.col1.x);
                                                               §§push(_loc16_);
                                                               if(!(_loc23_ && _loc3_))
                                                               {
                                                                  addr430:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc2_.col2.x);
                                                                  §§push(_loc17_);
                                                                  if(!(_loc23_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           addr458:
                                                                           _loc3_ = Number(§§pop());
                                                                           addr364:
                                                                           addr459:
                                                                           §§push(_loc2_.col1);
                                                                           if(_loc22_ || this)
                                                                           {
                                                                              addr375:
                                                                              §§push(§§pop().y);
                                                                              §§push(_loc16_);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          addr393:
                                                                                          §§push(_loc17_);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc22_ || _loc3_)
                                                                                                         {
                                                                                                            addr414:
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               addr417:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        if(_loc22_ || param1)
                                                                                                                        {
                                                                                                                           _loc16_ = §§pop();
                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr364);
                                                                                                                                 }
                                                                                                                                 §§push(_loc8_.x);
                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                 {
                                                                                                                                    addr469:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       if(_loc22_ || param1)
                                                                                                                                       {
                                                                                                                                          addr480:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr488:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                             {
                                                                                                                                                addr496:
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr513:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr517:
                                                                                                                                                   var _loc18_:Number = §§pop();
                                                                                                                                                   §§push(_loc8_.y);
                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr585:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        if(_loc22_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr575:
                                                                                                                                                                           §§push(§§pop() * _loc14_);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     var _loc19_:* = §§pop();
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - _loc7_);
                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr603:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        var _loc20_:* = §§pop();
                                                                                                                                                                        var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§3!7§);
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                           this.§ !6§.§-i§(_loc21_);
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc21_.x);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           addr865:
                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc21_.y);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              addr830:
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr812:
                                                                                                                                                                                 addr811:
                                                                                                                                                                                 addr810:
                                                                                                                                                                                 addr785:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr808:
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    §§push(_loc21_.y);
                                                                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr806:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr804:
                                                                                                                                                                                          §§push(§§pop() - _loc15_ * _loc21_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc21_.z);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc7_ = Number(§§pop() - §§pop());
                                                                                                                                                                                 addr813:
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    §§push(_loc8_.x);
                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc21_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    §§push(_loc8_.y);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc21_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr767:
                                                                                                                                                                                    addr782:
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc21_.y);
                                                                                                                                                                                                         if(_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc22_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr698:
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc21_.x);
                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr720:
                                                                                                                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr730:
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr735:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * (§§pop() + _loc21_.z));
                                                                                                                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr744:
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr747:
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                addr750:
                                                                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                   addr646:
                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc22_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                         if(_loc22_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc22_ || _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr830);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               return;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr767);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr646);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr782);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr750);
                                                                                                                                                                                                                                                   addr752:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr813);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr812);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr811);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr747);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr735);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr808);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr735);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr730);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr804);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr720);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr808);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr698);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr810);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr735);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr785);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr744);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr865);
                                                                                                                                                                           }
                                                                                                                                                                           addr902:
                                                                                                                                                                           §§goto(addr902);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr752);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr603);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc22_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr575);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr585);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr517);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc22_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                addr512:
                                                                                                                                                §§goto(addr513);
                                                                                                                                                §§push(§§pop() * _loc15_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr513);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    §§goto(addr513);
                                                                                                                                 }
                                                                                                                                 §§goto(addr517);
                                                                                                                              }
                                                                                                                              §§goto(addr459);
                                                                                                                           }
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                        §§goto(addr375);
                                                                                                                     }
                                                                                                                     §§goto(addr517);
                                                                                                                  }
                                                                                                                  §§goto(addr430);
                                                                                                               }
                                                                                                               §§goto(addr496);
                                                                                                            }
                                                                                                            §§goto(addr421);
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr430);
                                                                                             }
                                                                                             §§goto(addr496);
                                                                                          }
                                                                                          §§goto(addr512);
                                                                                       }
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr496);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§goto(addr480);
                                                               }
                                                               §§goto(addr512);
                                                            }
                                                            §§goto(addr458);
                                                         }
                                                         §§goto(addr321);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr279);
                                                }
                                             }
                                             §§goto(addr220);
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr193:
                           if(_loc23_ && this)
                           {
                              continue;
                           }
                           §§push(_loc14_);
                           if(!(_loc23_ && _loc3_))
                           {
                              §§goto(addr209);
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr228);
                        }
                     }
                     §§goto(addr267);
                  }
               }
            }
            §§goto(addr279);
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
