package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Mat33;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   import §6Z§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §7"+§:b2Vec2;
      
      private var §6" §:b2Vec2;
      
      private var §!!3§:Number;
      
      private var §0!F§:b2Vec3;
      
      private var §6!L§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7"+§ = new b2Vec2();
            while(true)
            {
               this.§6" § = new b2Vec2();
               while(true)
               {
                  this.§0!F§ = new b2Vec3();
                  addr116:
                  while(!_loc3_)
                  {
                  }
               }
            }
            addr139:
         }
         while(true)
         {
            this.§6!L§ = new b2Mat33();
            loop4:
            while(true)
            {
               super(param1);
               loop5:
               while(true)
               {
                  this.§7"+§.SetV(param1.§0O§);
                  loop6:
                  while(true)
                  {
                     this.§6" §.SetV(param1.§ @§);
                     loop7:
                     for(; _loc2_; if(_loc3_ && param1)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        return;
                     },§§goto(addr139))
                     {
                        this.§!!3§ = param1.§<!b§;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           continue loop6;
                           addr83:
                           this.§0!F§.§5!H§();
                           do
                           {
                              this.§6!L§ = new b2Mat33();
                           }
                           while(_loc3_);
                           
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop7;
                           }
                        }
                        §§goto(addr116);
                     }
                     continue loop4;
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.§7"+§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.§6" §);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§0!F§.x);
            if(_loc2_)
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_)
         {
            addr49:
            §§push(§§pop() * this.§0!F§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§0!F§.z;
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
         var _loc4_:b2Body = b2internal::[Z;
         var _loc5_:b2Body = b2internal::8!F;
         var _loc6_:b2Vec2 = _loc4_.§?!^§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc22_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§?!^§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc22_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§4!&§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§4!&§);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§`!`§);
         if(!(_loc22_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§`!`§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7"+§.x);
         if(!(_loc22_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc22_ && _loc2_))
            {
               addr119:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§7"+§.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc23_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!_loc22_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc23_)
                  {
                     §§push(_loc14_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc23_ || _loc3_)
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr260:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr261:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr262:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr263:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                           addr259:
                        }
                     }
                     addr249:
                  }
                  loop7:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(_loc2_.col1);
                           if(!_loc23_)
                           {
                              break;
                           }
                           §§push(§§pop().y);
                           loop10:
                           while(true)
                           {
                              if(!_loc23_)
                              {
                                 continue loop7;
                              }
                              §§push(_loc14_);
                              if(_loc23_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc23_)
                                 {
                                    §§push(_loc2_.col2);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc23_ || param1)
                                       {
                                          if(_loc23_ || this)
                                          {
                                             §§push(_loc15_);
                                             if(_loc23_ || _loc3_)
                                             {
                                                addr228:
                                                §§push(§§pop() * §§pop());
                                                if(_loc23_ || this)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(_loc23_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr242:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc22_ && this))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               addr174:
                                                               _loc14_ = §§pop();
                                                               if(!_loc22_)
                                                               {
                                                                  if(_loc23_ || _loc3_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.§6" §.x);
                                                            if(!(_loc22_ && _loc2_))
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(!(_loc22_ && this))
                                                               {
                                                                  addr293:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc16_:* = §§pop();
                                                               §§push(this.§6" §.y);
                                                               if(_loc23_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                  if(_loc23_ || _loc2_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc17_:* = §§pop();
                                                               if(_loc23_)
                                                               {
                                                                  §§push(_loc2_.col1);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc22_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc16_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr432:
                                                                        addr381:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.col2);
                                                                           addr434:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr435:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 addr436:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr437:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr438:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr449:
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
                                                                        if(_loc22_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc17_);
                                                                        if(!_loc22_)
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    if(!(_loc22_ && param1))
                                                                                    {
                                                                                       if(_loc23_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc17_ = §§pop();
                                                                                                while(_loc23_ || _loc2_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            if(!(_loc22_ && param1))
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr499:
                                                                                                               §§push(_loc8_.x);
                                                                                                               if(!(_loc22_ && param1))
                                                                                                               {
                                                                                                                  break loop14;
                                                                                                               }
                                                                                                               addr499:
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc23_ || param1)
                                                                                                               {
                                                                                                                  addr507:
                                                                                                                  §§push(§§pop() * _loc15_);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr512:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc18_:* = §§pop();
                                                                                                               §§push(_loc8_.y);
                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(_loc23_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc22_ && param1))
                                                                                                                           {
                                                                                                                              addr550:
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc22_ && this))
                                                                                                                                 {
                                                                                                                                    addr562:
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       addr567:
                                                                                                                                       §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          addr570:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc19_:* = §§pop();
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!(_loc22_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - _loc7_);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc20_:* = §§pop();
                                                                                                                                       var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§6!L§);
                                                                                                                                          §§push(_loc21_);
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          if(!(_loc22_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                       }
                                                                                                                                       loop23:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§0!F§.§-!r§(_loc21_);
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc21_.x);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             loop25:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(!(_loc22_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc21_.y);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                loop26:
                                                                                                                                                for(; !_loc22_; while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc22_ && this))
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                   §§goto(addr619);
                                                                                                                                                },continue loop24)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   loop27:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      loop28:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_.y);
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               addr809:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr810:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr811:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr812:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                           addr813:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              §§push(_loc8_.x);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc21_.x);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr809:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_.x);
                                                                                                                                                               addr802:
                                                                                                                                                               addr687:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr803:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_.z);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr808:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr687:
                                                                                                                                                               if(_loc22_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr704:
                                                                                                                                                                  §§push(_loc21_.z);
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     addr708:
                                                                                                                                                                     §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!(_loc22_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr718:
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        loop40:
                                                                                                                                                                        do
                                                                                                                                                                        {
                                                                                                                                                                           _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                           addr619:
                                                                                                                                                                           while(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop40;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc22_);
                                                                                                                                                                        
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc22_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_.y);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc22_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc22_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc21_.x);
                                                                                                                                                                                                               if(!(_loc22_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!(_loc22_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr687);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr802);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr808);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr704);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr809);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr704);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr687);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr704);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr810);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr708);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr812);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr718);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr813);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr803);
                                                                                                                                                                           addr749:
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr811);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr803);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr708);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr809);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             if(_loc22_ && param1)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(!(_loc22_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc21_.y);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             §§goto(addr749);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr567);
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                              §§goto(addr567);
                                                                                                                           }
                                                                                                                           §§goto(addr562);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr567);
                                                                                                               }
                                                                                                               §§goto(addr550);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr432);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.col2);
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc23_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§goto(addr381);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr435);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                               §§goto(addr435);
                                                                                                            }
                                                                                                            addr479:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(_loc6_.x);
                                                                                                               if(_loc23_ || _loc3_)
                                                                                                               {
                                                                                                                  addr491:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc22_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr499);
                                                                                                                  }
                                                                                                                  §§goto(addr512);
                                                                                                               }
                                                                                                               §§goto(addr507);
                                                                                                            }
                                                                                                            §§goto(addr499);
                                                                                                            addr365:
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   break loop14;
                                                                                                }
                                                                                                addr450:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             addr416:
                                                                                          }
                                                                                          break loop14;
                                                                                       }
                                                                                       §§goto(addr438);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 §§goto(addr499);
                                                                              }
                                                                              §§goto(addr479);
                                                                           }
                                                                           §§goto(addr436);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc22_)
                                                                        {
                                                                           §§goto(addr479);
                                                                        }
                                                                        §§goto(addr491);
                                                                     }
                                                                  }
                                                                  §§push(_loc9_);
                                                                  if(!(_loc22_ && _loc2_))
                                                                  {
                                                                     §§push(_loc17_);
                                                                     if(_loc23_ || this)
                                                                     {
                                                                        §§goto(addr476);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         if(!(_loc22_ && _loc3_))
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                      addr238:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr249);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr262);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr242);
         }
         §§goto(addr119);
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
