package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §9X§:b2Vec2;
      
      private var §4!1§:b2Vec2;
      
      public var §=I§:b2Mat22;
      
      public var §7"b§:Number;
      
      private var §!"w§:b2Vec2;
      
      private var §&#&§:Number;
      
      private var §'"B§:Number;
      
      private var §2J§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9X§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§4!1§ = new b2Vec2();
               while(true)
               {
                  this.§=I§ = new b2Mat22();
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§!"w§ = new b2Vec2();
                     while(true)
                     {
                        super(param1);
                        loop4:
                        while(true)
                        {
                           this.§9X§.SetV(param1.§!"4§);
                           addr120:
                           loop5:
                           while(true)
                           {
                              this.§4!1§.SetV(param1.§#"B§);
                              loop6:
                              while(true)
                              {
                                 this.§=I§.§&"Q§();
                                 addr100:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          this.§7"b§ = 0;
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        }
                        this.§'"B§ = param1.§8!i§;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr100);
                     }
                  }
               }
            }
         }
         §§goto(addr120);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§!"w§.x);
            if(!_loc3_)
            {
               addr51:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§!"w§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr51);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            return §§pop() * this.§&#&§;
         }
      }
      
      public function §#E§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'"B§ = param1;
         }
      }
      
      public function §1#2§() : Number
      {
         return this.§'"B§;
      }
      
      public function §^#N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2J§ = param1;
         }
      }
      
      public function §8"v§() : Number
      {
         return this.§2J§;
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
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         var _loc6_:b2Vec2 = _loc4_.§ #`§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§ #`§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§3#>§);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§3#>§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§3"y§);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§3"y§);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§9X§.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc26_)
            {
               addr111:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§9X§.y);
            if(!_loc26_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc27_ || this)
            {
               §§push(_loc2_.col1);
               while(true)
               {
                  §§push(§§pop().x);
                  if(!(_loc26_ && this))
                  {
                     §§push(_loc14_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc26_)
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr262:
                              addr197:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr263:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr264:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr265:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§push(_loc2_.col2);
                              if(!(_loc27_ || param1))
                              {
                                 continue;
                              }
                              §§push(§§pop().y);
                              if(_loc27_ || _loc3_)
                              {
                                 if(!(_loc26_ && this))
                                 {
                                    if(!_loc26_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr264);
                              }
                              addr239:
                              §§push(§§pop() + §§pop());
                              loop9:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop10:
                                 while(_loc27_)
                                 {
                                    _loc15_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc26_ && param1))
                                       {
                                          if(_loc27_)
                                          {
                                             continue loop9;
                                          }
                                          continue loop10;
                                       }
                                       addr154:
                                       if(_loc27_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr265);
                                    }
                                    _loc2_ = _loc5_.m_xf.R;
                                    §§push(this.§4!1§.x);
                                    if(_loc27_ || this)
                                    {
                                       §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                       if(_loc27_ || param1)
                                       {
                                          addr295:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc16_:* = §§pop();
                                       §§push(this.§4!1§.y);
                                       if(_loc27_ || _loc3_)
                                       {
                                          §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                          if(_loc27_ || this)
                                          {
                                             addr319:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc17_:* = §§pop();
                                          if(_loc27_)
                                          {
                                             §§push(_loc2_.col1);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc27_ || _loc2_)
                                                {
                                                   §§push(_loc16_);
                                                   if(_loc27_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop14:
                                                      while(true)
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
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col1);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc26_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       if(!(_loc26_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc26_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(_loc2_.col2);
                                                                                                if(!(_loc27_ || _loc3_))
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc26_ && param1))
                                                                                                {
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc27_ || this))
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc27_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc27_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr328:
                                                                                                         if(_loc27_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  while(!(_loc26_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§goto(addr328);
                                                                                                                     }
                                                                                                                     break loop23;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                                  addr430:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        break loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               addr341:
                                                                                                            }
                                                                                                            addr473:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop22;
                                                                                                         }
                                                                                                      }
                                                                                                      addr470:
                                                                                                      §§push(§§pop() - _loc7_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§goto(addr473);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr470);
                                                                                             }
                                                                                             while(!_loc26_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr470);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              var _loc19_:* = §§pop();
                                                                              §§push(this.§7"b§);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr482:
                                                                                    §§push(§§pop() * _loc19_);
                                                                                    if(!(_loc26_ && _loc3_))
                                                                                    {
                                                                                       addr491:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc20_:* = §§pop();
                                                                                    §§push(this.§&#&§);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc21_:* = §§pop();
                                                                                    if(_loc27_ || this)
                                                                                    {
                                                                                       §§push(param1.§1!O§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§2J§);
                                                                                          addr683:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   addr688:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(b2Math);
                                                                                                      §§push(this.§&#&§);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc20_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr666:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            §§push(_loc18_);
                                                                                                            if(_loc27_ || param1)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§pop().§&#&§ = §§pop().§<"X§(§§pop(),§§pop(),_loc18_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§&#&§);
                                                                                                            if(_loc27_ || param1)
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            addr693:
                                                                                                            §§push(_loc9_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr699:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr702:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr725:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr715:
                                                                                                                                 §§push(§§pop() * _loc15_);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc22_:Number = §§pop();
                                                                                                                           §§push(_loc8_.y);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr783:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                addr765:
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc27_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr774:
                                                                                                                                                   §§push(§§pop() * _loc14_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc23_:Number = §§pop();
                                                                                                                                             §§push(b2Math);
                                                                                                                                             §§push(this.§=I§);
                                                                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                                                                             §§push(_loc22_);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             if(!(_loc26_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                             var _loc24_:b2Vec2 = §§pop().§="L§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                             var _loc25_:b2Vec2 = this.§!"w§.Copy();
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§!"w§);
                                                                                                                                                loop40:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().§ true§(_loc24_);
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§1!O§);
                                                                                                                                                      addr873:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§'"B§);
                                                                                                                                                         addr875:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr876:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr877:
                                                                                                                                                               loop45:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                  loop46:
                                                                                                                                                                  while(_loc27_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     loop47:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§!"w§);
                                                                                                                                                                        if(!(_loc26_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        addr868:
                                                                                                                                                                        loop48:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().Normalize();
                                                                                                                                                                           addr869:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§!"w§);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop48;
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§?1§(_loc18_);
                                                                                                                                                                              if(_loc26_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop46;
                                                                                                                                                                              }
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                              }
                                                                                                                                                                              addr891:
                                                                                                                                                                              _loc24_ = b2Math.§8!3§(this.§!"w§,_loc25_);
                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 loop50:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(!(_loc26_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(!(_loc26_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       loop52:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          loop53:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             loop54:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc24_.y);
                                                                                                                                                                                                loop55:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc24_.x);
                                                                                                                                                                                                         loop58:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop59:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  loop61:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     loop62:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop63:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              §§push(_loc8_.x);
                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                              while(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 §§push(_loc8_.y);
                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc27_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop61;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc27_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc27_ || _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc27_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc24_.y);
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop59;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr992:
                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1000:
                                                                                                                                                                                                                                                      §§push(_loc24_.x);
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop58;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc26_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop55;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1021:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc27_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1034:
                                                                                                                                                                                                                                                         _loc9_ = Number(§§pop());
                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop52;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1034);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1000);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr992);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1021);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1034);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop60;
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
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr920);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr869);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc27_ || this)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr783);
                                                                                                                                       }
                                                                                                                                       §§goto(addr765);
                                                                                                                                    }
                                                                                                                                    §§goto(addr783);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr774);
                                                                                                                           }
                                                                                                                           §§goto(addr783);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc27_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr725);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr725);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr715);
                                                                                                            }
                                                                                                            §§goto(addr725);
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                         addr678:
                                                                                                      }
                                                                                                      §§goto(addr666);
                                                                                                   }
                                                                                                }
                                                                                                addr687:
                                                                                             }
                                                                                             §§goto(addr725);
                                                                                          }
                                                                                          if(!(_loc27_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc21_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc26_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc20_ = §§pop();
                                                                                                   loop33:
                                                                                                   while(!_loc26_)
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc27_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc12_);
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc20_);
                                                                                                               if(_loc27_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop37:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc27_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                addr532:
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc26_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                            if(!(_loc27_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.x);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop36;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr725);
                                                                                                                                                               addr564:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr678);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break loop36;
                                                                                                                                                      }
                                                                                                                                                      break loop36;
                                                                                                                                                   }
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                continue loop36;
                                                                                                                                             }
                                                                                                                                             §§goto(addr702);
                                                                                                                                          }
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr683);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr532);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           §§goto(addr725);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr693);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr715);
                                                                                                         }
                                                                                                         §§goto(addr693);
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   §§goto(addr688);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr693);
                                                                                          }
                                                                                          §§goto(addr715);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr564);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                              §§goto(addr482);
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
                                                §§goto(addr470);
                                             }
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr295);
                                 }
                                 addr266:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr267);
                                 }
                              }
                           }
                        }
                        §§goto(addr266);
                     }
                  }
                  §§goto(addr265);
               }
            }
            §§goto(addr244);
         }
         §§goto(addr111);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
