package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §2#§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §!v§:b2Vec2;
      
      private var §>j§:b2Vec2;
      
      private var § !6§:b2Vec2;
      
      private var §3!7§:b2Mat22;
      
      private var §%![§:b2Vec2;
      
      private var §!6§:Number;
      
      private var §^!C§:Number;
      
      private var §-s§:Number;
      
      private var §<k§:Number;
      
      private var §6G§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§2#§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§!v§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§>j§ = new b2Vec2();
                        addr158:
                        while(true)
                        {
                           this.§ !6§ = new b2Vec2();
                           while(true)
                           {
                              this.§3!7§ = new b2Mat22();
                              addr139:
                              while(!(_loc5_ && _loc3_))
                              {
                                 this.§%![§ = new b2Vec2();
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           §§push(this.§>j§);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() - b2internal::%^.m_xf.position.x);
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr61);
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr187);
                           }
                           break;
                        }
                        continue loop2;
                     }
                     §§goto(addr205);
                  }
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     super(param1);
                     §§goto(addr102);
                  }
               }
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr133);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§>j§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.§!v§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§ !6§.x);
            if(_loc3_)
            {
               addr52:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§ !6§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!w§() : b2Vec2
      {
         return this.§>j§;
      }
      
      public function §<7§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(b2internal::%^.IsAwake() == false)
            {
               if(_loc3_ || _loc3_)
               {
                  b2internal::%^.SetAwake(true);
               }
               while(true)
               {
               }
               addr65:
            }
            while(true)
            {
               this.§>j§ = param1;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr65);
            }
         }
      }
      
      public function §=!]§() : Number
      {
         return this.§!6§;
      }
      
      public function §^!!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§!6§ = param1;
         }
      }
      
      public function §]#§() : Number
      {
         return this.§^!C§;
      }
      
      public function §6W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^!C§ = param1;
         }
      }
      
      public function §0!4§() : Number
      {
         return this.§-s§;
      }
      
      public function §,!I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-s§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::%^;
         §§push(_loc2_.GetMass());
         if(_loc14_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!_loc13_)
         {
            §§push(§§pop() * this.§^!C§);
            if(!(_loc13_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(_loc14_ || _loc2_)
         {
            §§push(this.§-s§);
            if(_loc14_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc14_ || _loc3_)
               {
                  addr84:
                  §§push(§§pop() * _loc4_);
                  if(_loc13_)
                  {
                  }
                  addr88:
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(_loc14_)
                  {
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc14_ || _loc3_)
                        {
                           addr104:
                           addr103:
                           §§push(§§pop() * _loc4_);
                           if(!(_loc13_ && param1))
                           {
                              addr112:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!(_loc13_ && _loc2_))
                           {
                              §§push(this);
                              §§push(param1.§7!?§);
                              if(!_loc13_)
                              {
                                 §§push(_loc5_);
                                 if(_loc14_)
                                 {
                                    §§push(param1.§7!?§);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§6G§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr152:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§push(this.§6G§);
                                       if(!_loc13_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr167:
                                             §§push(1 / this.§6G§);
                                             if(_loc14_ || param1)
                                             {
                                                addr178:
                                                §§push(Number(§§pop()));
                                                if(!_loc14_)
                                                {
                                                }
                                                addr186:
                                                §§pop().§6G§ = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr167);
                                 }
                              }
                           }
                           while(false)
                           {
                              §§goto(addr152);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§!v§.x);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(_loc14_)
                              {
                                 addr230:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§!v§.y);
                              if(_loc14_ || param1)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(!_loc13_)
                                 {
                                    addr249:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(_loc7_.col1.x);
                                 if(_loc14_)
                                 {
                                    §§push(_loc8_);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc14_ || this)
                                       {
                                          §§push(_loc7_.col2.x);
                                          if(_loc14_ || _loc2_)
                                          {
                                             addr279:
                                             §§push(§§pop() + §§pop() * _loc9_);
                                             if(_loc13_)
                                             {
                                             }
                                             var _loc10_:* = §§pop();
                                             if(_loc14_)
                                             {
                                                §§push(_loc7_.col1);
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc14_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc7_.col2.y);
                                                            if(_loc14_)
                                                            {
                                                               §§push(§§pop() * _loc9_);
                                                            }
                                                            addr1053:
                                                            if(!(_loc14_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            loop12:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               addr1062:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§?8§);
                                                                  if(!(_loc13_ && _loc2_))
                                                                  {
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop12;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr1103);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr499);
                                          }
                                       }
                                       §§goto(addr279);
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr103);
               }
               §§goto(addr88);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr84);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::%^;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§!v§.x);
         if(_loc16_ || _loc3_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§!v§.y);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc16_ || _loc2_)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc6_);
                  if(!(_loc15_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc15_)
                     {
                        §§push(_loc3_.col2);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop3:
                           while(true)
                           {
                              §§push(_loc7_);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(_loc15_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || param1)
                                                      {
                                                         addr125:
                                                         §§push(_loc3_.col2);
                                                         if(!_loc16_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               if(_loc15_ && _loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc16_)
                                                               {
                                                                  addr150:
                                                                  if(_loc15_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     addr160:
                                                                     §§push(Number(§§pop()));
                                                                     loop9:
                                                                     while(_loc16_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop10:
                                                                        while(_loc16_ || _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc15_ && this)
                                                                                    {
                                                                                    }
                                                                                    addr207:
                                                                                    §§push(_loc2_.m_angularVelocity);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr211:
                                                                                       §§push(-§§pop());
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          addr225:
                                                                                          var _loc8_:Number = §§pop();
                                                                                          §§push(_loc2_.§,?§.y);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc2_.m_angularVelocity);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc6_);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc9_:* = §§pop();
                                                                                          _loc3_ = this.§3!7§;
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(this.§<k§);
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   §§push(this.§%![§);
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(this.§6G§);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr277:
                                                                                                                  §§push(this.§ !6§);
                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc16_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc15_ && param1))
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr311:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<k§);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr320:
                                                                                                                                          §§push(this.§%![§.y);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             addr323:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr331:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr334:
                                                                                                                                                   §§push(this.§6G§);
                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr343:
                                                                                                                                                      §§push(this.§ !6§.y);
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr348:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr351:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr354:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc15_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                  addr363:
                                                                                                                                                                  §§push(_loc3_.col1.x);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr368:
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(!(_loc15_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr376:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.col2.x);
                                                                                                                                                                           if(_loc16_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr401:
                                                                                                                                                                              addr400:
                                                                                                                                                                              addr399:
                                                                                                                                                                              §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              var _loc10_:* = Number(§§pop());
                                                                                                                                                                              §§push(_loc3_.col1.y);
                                                                                                                                                                              if(!(_loc15_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr453:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.col2.y);
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc5_);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc11_:Number = §§pop();
                                                                                                                                                                                    §§push(this.§ !6§.x);
                                                                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                                                                    §§push(this.§ !6§.y);
                                                                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§ !6§);
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§ !6§);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr505:
                                                                                                                                                                                                         addr503:
                                                                                                                                                                                                         §§push(this.§ !6§);
                                                                                                                                                                                                         §§push(this.§ !6§.y);
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr510:
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         addr511:
                                                                                                                                                                                                         §§push(param1.§7!?§);
                                                                                                                                                                                                         if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * this.§!6§);
                                                                                                                                                                                                            if(!(_loc15_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr530:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§ !6§);
                                                                                                                                                                                                               loop12:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§27§());
                                                                                                                                                                                                                  loop13:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                     if(!(_loc15_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop14:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr753:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§ !6§);
                                                                                                                                                                                                                              addr755:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() / this.§ !6§.§!Y§());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§@-§(§§pop());
                                                                                                                                                                                                                                 addr778:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr753:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§ !6§);
                                                                                                                                                                                                                           loop16:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 loop17:
                                                                                                                                                                                                                                 while(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    loop18:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       addr709:
                                                                                                                                                                                                                                       if(!(_loc16_ || _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr717:
                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                       loop21:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc2_.§,?§);
                                                                                                                                                                                                                                          loop22:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_.§,?§);
                                                                                                                                                                                                                                             addr672:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc2_.§#!D§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                      addr678:
                                                                                                                                                                                                                                                      addr646:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         addr679:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc16_ || _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr663:
                                                                                                                                                                                                                                                         §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                         addr662:
                                                                                                                                                                                                                                                         while(!_loc15_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_.§?8§);
                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                     if(!(_loc15_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr584:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc16_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                           if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop20:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§ !6§);
                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop12;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr707:
                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(_loc16_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                                                                             addr730:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr709);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr717);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr707);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr755);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr778);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr680:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr753);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr681:
                                                                                                                                                                                                                                                                           addr680:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr755);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr584);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr678);
                                                                                                                                                                                                                                                      §§goto(addr680);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr680);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop14;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr730);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr753);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr530);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr511);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr510);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr505);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr503);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr505);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc16_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr453);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr453);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr401);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr401);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr401);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr401);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr400);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr401);
                                                                                                                                                }
                                                                                                                                                §§goto(addr354);
                                                                                                                                             }
                                                                                                                                             §§goto(addr399);
                                                                                                                                          }
                                                                                                                                          §§goto(addr401);
                                                                                                                                       }
                                                                                                                                       §§goto(addr376);
                                                                                                                                    }
                                                                                                                                    §§goto(addr354);
                                                                                                                                 }
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                              §§goto(addr354);
                                                                                                                           }
                                                                                                                           §§goto(addr401);
                                                                                                                        }
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     §§goto(addr323);
                                                                                                                  }
                                                                                                                  §§goto(addr343);
                                                                                                               }
                                                                                                               §§goto(addr331);
                                                                                                            }
                                                                                                            §§goto(addr334);
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr348);
                                                                                                   }
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              _loc6_ = §§pop();
                                                                              if(!_loc16_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(_loc2_.§,?§.x);
                                                                              if(_loc15_ && _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr225);
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            addr215:
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr125);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr215);
                           }
                        }
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr211);
               }
            }
         }
         §§goto(addr171);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
