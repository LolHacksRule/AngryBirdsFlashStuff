package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §^"N§:b2Vec2;
      
      private var §&j§:Number;
      
      private var §6!A§:Number;
      
      private var §3'§:Number;
      
      private var §@>§:Number;
      
      private var §2!_§:Number;
      
      private var §,!v§:Number;
      
      private var §+!A§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§^"N§ = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§-!,§);
                        loop4:
                        while(true)
                        {
                           this.m_localAnchor2.SetV(param1.§["9§);
                           while(true)
                           {
                              this.§+!A§ = param1.length;
                              addr130:
                              while(true)
                              {
                                 this.§&j§ = param1.§0c§;
                              }
                              loop10:
                              while(_loc6_)
                              {
                                 continue loop4;
                                 this.§@>§ = 0;
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 addr47:
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr130);
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          this.§2!_§ = 0;
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§6!A§ = param1.§6!i§;
                                             continue loop8;
                                          }
                                          addr124:
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§3'§ = 0;
                                    continue loop10;
                                    §§goto(addr47);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§2!_§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§^"N§.x);
                  if(_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr73);
         }
         addr53:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§2!_§);
            if(_loc2_)
            {
               §§goto(addr77);
            }
            §§push(§§pop() * §§pop());
         }
         addr77:
         §§push(§§pop() * §§pop());
         if(!(_loc3_ && this))
         {
            addr73:
            §§push(this.§^"N§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%x§() : Number
      {
         return this.§+!A§;
      }
      
      public function §?"%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!A§ = param1;
         }
      }
      
      public function §-!o§() : Number
      {
         return this.§&j§;
      }
      
      public function § !x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&j§ = param1;
         }
      }
      
      public function §%g§() : Number
      {
         return this.§6!A§;
      }
      
      public function §^!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!A§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::3"X;
         _loc5_ = b2internal::5!;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc21_ && param1))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc20_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc20_ || this)
         {
            §§push(this.m_localAnchor1.y);
            loop0:
            while(true)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               loop1:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc7_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_.col1);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr215:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc2_.col2);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop12:
                                                while(_loc20_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop13:
                                                   while(_loc20_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(_loc20_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr97:
                                                         if(!(_loc20_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc20_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr106:
                                                         _loc6_ = §§pop();
                                                         if(_loc21_ && param1)
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(_loc21_ && this)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc20_ || _loc3_)
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr193:
                                                                     while(!(_loc21_ && this))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        continue loop22;
                                                                     }
                                                                     continue loop8;
                                                                     addr193:
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               if(_loc21_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc20_)
                                                               {
                                                                  while(!_loc21_)
                                                                  {
                                                                     §§push(_loc2_.col2);
                                                                     if(_loc21_ && _loc2_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(_loc20_ || param1)
                                                                     {
                                                                        while(_loc20_ || _loc3_)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(_loc7_);
                                                                           if(_loc21_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        continue loop12;
                                                                        addr164:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           break loop22;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  addr145:
                                                               }
                                                               §§goto(addr97);
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(!_loc21_)
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.m_localAnchor2.x);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(_loc20_ || this)
                                                            {
                                                               §§push(this.m_localAnchor2.y);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.m_sweep.localCenter.y);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc20_ || this)
                                                                                 {
                                                                                    if(!(_loc20_ || _loc2_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc8_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc20_ || _loc2_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       addr584:
                                                                                       addr550:
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr491:
                                                                                          if(_loc21_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          loop37:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             addr500:
                                                                                             while(!(_loc21_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc21_ && this)
                                                                                                   {
                                                                                                      break loop34;
                                                                                                   }
                                                                                                }
                                                                                                continue loop37;
                                                                                             }
                                                                                             continue loop28;
                                                                                          }
                                                                                       }
                                                                                       var _loc10_:*;
                                                                                       §§push(_loc10_ = §§pop());
                                                                                       addr434:
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(this.§^"N§);
                                                                                                   if(_loc20_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop().§!!L§(1 / _loc10_);
                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                      {
                                                                                                         addr615:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr618:
                                                                                                      §§pop().§%y§();
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   if(!(_loc21_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§^"N§.y);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                            {
                                                                                                               addr648:
                                                                                                               §§push(§§pop() * this.§^"N§.x);
                                                                                                            }
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr656:
                                                                                                            var _loc11_:* = §§pop();
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.§^"N§.y);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc20_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr690:
                                                                                                                        §§push(§§pop() - §§pop() * this.§^"N§.x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        §§push(_loc4_.§-@§);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§,H§);
                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc20_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.§-@§);
                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr752:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.§,H§);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr764:
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr772:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr777:
                                                                                                                                                            addr776:
                                                                                                                                                            addr775:
                                                                                                                                                            §§push(§§pop() + §§pop() * _loc12_);
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            var _loc13_:* = §§pop();
                                                                                                                                                            if(_loc20_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() != 0)
                                                                                                                                                                     {
                                                                                                                                                                        addr1491:
                                                                                                                                                                        §§push(1 / _loc13_);
                                                                                                                                                                        if(!(_loc21_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc20_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§,!v§ = §§pop();
                                                                                                                                                                  loop52:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§&j§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§+!A§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1469:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr1471:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1470:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                 loop59:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * Math.PI);
                                                                                                                                                                                    addr1449:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§&j§);
                                                                                                                                                                                       addr1451:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr1452:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr1453:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                continue loop59;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1186);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop52;
                                                                                                                                                                        if(_loc21_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1431);
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1491);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1162);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr777);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr776);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr777);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr764);
                                                                                                                                          }
                                                                                                                                          §§goto(addr777);
                                                                                                                                       }
                                                                                                                                       §§goto(addr775);
                                                                                                                                    }
                                                                                                                                    §§goto(addr772);
                                                                                                                                 }
                                                                                                                                 §§goto(addr752);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr777);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr690);
                                                                                                         }
                                                                                                         §§goto(addr656);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   §§goto(addr656);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§^"N§);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          §§goto(addr648);
                                                                                       }
                                                                                       §§goto(addr656);
                                                                                       if(_loc21_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          if(_loc21_ && _loc2_)
                                                                                          {
                                                                                             continue loop27;
                                                                                          }
                                                                                          addr451:
                                                                                          §§push(_loc2_.col2);
                                                                                          if(!(_loc21_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr463:
                                                                                                if(!(_loc20_ || _loc2_))
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                §§push(_loc9_);
                                                                                                if(!(_loc21_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§goto(addr491);
                                                                                                         }
                                                                                                         §§goto(addr584);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            addr546:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         addr545:
                                                                                                      }
                                                                                                      §§goto(addr550);
                                                                                                   }
                                                                                                   §§goto(addr584);
                                                                                                }
                                                                                                §§goto(addr546);
                                                                                             }
                                                                                             §§goto(addr584);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr451);
                                                                                             }
                                                                                             addr544:
                                                                                          }
                                                                                          §§goto(addr545);
                                                                                       }
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    continue loop29;
                                                                                 }
                                                                              }
                                                                              continue loop26;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr386);
                                                            addr116:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr234);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop1;
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
         §§goto(addr116);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::3"X;
         var _loc4_:b2Body = b2internal::5!;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!(_loc18_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc18_ && _loc3_))
         {
            §§push(_loc5_);
            if(!_loc18_)
            {
               §§push(§§pop() * §§pop());
               if(_loc19_)
               {
                  addr95:
                  §§push(_loc2_.col2.x);
                  if(_loc19_)
                  {
                     addr102:
                     §§push(§§pop() + §§pop() * _loc6_);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr102);
               }
               var _loc7_:* = §§pop();
               if(!_loc18_)
               {
                  §§push(_loc2_.col1.y);
                  if(!_loc18_)
                  {
                     §§push(_loc5_);
                     if(!_loc18_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc18_)
                        {
                           §§push(_loc2_.col2.y);
                           if(!(_loc18_ && this))
                           {
                              addr130:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc19_)
                           {
                              addr135:
                              §§push(Number(§§pop()));
                              if(!(_loc18_ && this))
                              {
                                 addr143:
                                 _loc6_ = §§pop();
                                 addr156:
                                 if(!(_loc18_ && param1))
                                 {
                                    §§push(_loc7_);
                                    if(!_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc2_ = _loc4_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(_loc19_ || _loc2_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                    if(_loc19_ || _loc2_)
                                    {
                                       addr183:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          addr202:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc18_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_ || _loc2_)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        addr340:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(_loc18_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc18_ && _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   while(_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc19_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc18_ && param1)
                                                                                                         {
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               while(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                               addr259:
                                                                                                            }
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(false)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr368:
                                                                                                            §§push(_loc3_.§"!_§.x);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr346:
                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                               if(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               §§push(§§pop() * _loc6_);
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            var _loc10_:Number = §§pop();
                                                                                                            §§push(_loc3_.§"!_§.y);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc5_);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc19_ || _loc2_)
                                                                                                               {
                                                                                                                  addr394:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc11_:* = §§pop();
                                                                                                               §§push(_loc4_.§"!_§.x);
                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc4_.m_angularVelocity);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr413:
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr434:
                                                                                                                        var _loc12_:Number = §§pop();
                                                                                                                        §§push(_loc4_.§"!_§.y);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.m_angularVelocity);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc8_);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        §§push(this.§^"N§.x);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                 {
                                                                                                                                    addr480:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(this.§^"N§.y);
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr503:
                                                                                                                                             §§push(§§pop() * (§§pop() - _loc11_));
                                                                                                                                          }
                                                                                                                                          §§goto(addr503);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr513:
                                                                                                                                    var _loc14_:Number = §§pop();
                                                                                                                                    addr512:
                                                                                                                                    §§push(this.§,!v§);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(this.§@>§);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr549:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§3'§);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§2!_§);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr553:
                                                                                                                                                   var _loc15_:Number = §§pop();
                                                                                                                                                   addr552:
                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§2!_§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + _loc15_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().§2!_§ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§^"N§.x);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   var _loc16_:* = §§pop();
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§^"N§.y);
                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr599:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc17_:* = §§pop();
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr871:
                                                                                                                                                         §§push(_loc3_.§"!_§);
                                                                                                                                                         §§push(_loc3_.§"!_§.x);
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr868:
                                                                                                                                                            §§push(§§pop() - _loc3_.§-@§ * _loc16_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                      }
                                                                                                                                                      addr816:
                                                                                                                                                      addr872:
                                                                                                                                                      §§push(_loc3_.§"!_§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr821:
                                                                                                                                                         §§push(_loc3_.§"!_§.y);
                                                                                                                                                         §§push(_loc3_.§-@§);
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(_loc19_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr832:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr845:
                                                                                                                                                               §§pop().y = §§pop() - §§pop();
                                                                                                                                                               addr846:
                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.§,H§);
                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr810:
                                                                                                                                                                              addr811:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr798:
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr806:
                                                                                                                                                                                    §§push(§§pop() * _loc16_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                              addr812:
                                                                                                                                                                              §§push(_loc4_.§"!_§);
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr744:
                                                                                                                                                                                 §§push(_loc4_.§"!_§);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr759:
                                                                                                                                                                                          §§push(_loc4_.§-@§);
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr762:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr767:
                                                                                                                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                   addr768:
                                                                                                                                                                                                   §§push(_loc4_.§"!_§);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§"!_§);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            if(!(_loc18_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§-@§);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr709:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr712:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       addr722:
                                                                                                                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_.§,H§);
                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr643:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc16_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr846);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            return;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr722);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr643);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr812);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr768);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr871);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr767);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr868);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr759);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr762);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr709);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr821);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr712);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr821);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr744);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr812);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr821);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr832);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr821);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr767);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr810);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr811);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr872);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr868);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr871);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr599);
                                                                                                                                                }
                                                                                                                                                §§goto(addr553);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr549);
                                                                                                                                       }
                                                                                                                                       §§goto(addr552);
                                                                                                                                    }
                                                                                                                                    §§goto(addr553);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr512);
                                                                                                                                 }
                                                                                                                                 §§goto(addr513);
                                                                                                                              }
                                                                                                                              §§goto(addr503);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     §§goto(addr434);
                                                                                                                  }
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            §§goto(addr394);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    continue loop4;
                                                                                    addr278:
                                                                                 }
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§goto(addr259);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         break;
                                                      }
                                                      addr365:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr368);
                                                      }
                                                   }
                                                   §§goto(addr368);
                                                }
                                                break;
                                             }
                                             §§push(-§§pop());
                                             if(_loc19_ || _loc3_)
                                             {
                                                §§goto(addr346);
                                             }
                                             §§goto(addr365);
                                          }
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           _loc5_ = §§pop();
                           §§goto(addr156);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr135);
               }
               §§goto(addr143);
            }
            §§goto(addr102);
         }
         §§goto(addr95);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(!(_loc17_ && _loc3_))
         {
            if(this.§&j§ > 0)
            {
               if(_loc18_)
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:b2Body = b2internal::3"X;
            var _loc4_:b2Body = b2internal::5!;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(_loc18_ || param1)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(_loc18_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.m_localAnchor1.y);
               if(_loc18_)
               {
                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                  if(!(_loc17_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc18_ || _loc2_)
               {
                  §§push(_loc5_);
                  if(_loc18_)
                  {
                     addr120:
                     §§push(§§pop() * §§pop());
                     if(_loc18_)
                     {
                        §§push(_loc2_.col2.x);
                        if(!(_loc17_ && _loc3_))
                        {
                           §§push(§§pop() * _loc6_);
                        }
                     }
                     var _loc7_:* = Number(§§pop());
                     if(!_loc17_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc18_)
                        {
                           §§push(_loc5_);
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc17_ && _loc2_))
                                 {
                                    addr150:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc17_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_ || this)
                                    {
                                       _loc6_ = §§pop();
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(_loc7_);
                                          if(_loc17_ && _loc3_)
                                          {
                                          }
                                          addr185:
                                          _loc5_ = §§pop();
                                          addr186:
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(_loc18_ || this)
                                             {
                                                addr208:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc18_ || this)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                if(_loc18_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                §§push(_loc2_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr342:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc17_ && _loc2_))
                                                         {
                                                            §§push(_loc2_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr361:
                                                               addr292:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr362:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr363:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr364:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc17_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr401:
                                                                        §§push(_loc3_.m_sweep.c.x);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr415:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc17_)
                                                                           {
                                                                              addr411:
                                                                              §§push(§§pop() - _loc5_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr414:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc4_.m_sweep.c.y);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc17_ && param1))
                                                                                 {
                                                                                    §§push(_loc3_.m_sweep.c.y);
                                                                                    if(!(_loc17_ && this))
                                                                                    {
                                                                                       addr462:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                       }
                                                                                       var _loc11_:* = §§pop();
                                                                                       var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr508:
                                                                                                      _loc10_ = §§pop();
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr514:
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr528:
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        addr534:
                                                                                                                        §§push(§§pop() - this.§+!A§);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           addr542:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr542);
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc13_:* = §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(b2Math);
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                  }
                                                                                                                  §§push(§§pop().§1"T§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr571:
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        §§push(this.§,!v§);
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc13_);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr593:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc14_:* = §§pop();
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 this.§^"N§.Set(_loc10_,_loc11_);
                                                                                                                              }
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§^"N§.x);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§^"N§.y);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr622:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc16_:* = §§pop();
                                                                                                                                 if(!(_loc17_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.m_sweep);
                                                                                                                                    loop12:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       addr1003:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          addr1005:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             addr1006:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr1007:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§-@§);
                                                                                                                                                   addr1009:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      addr1010:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr1011:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            addr1012:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       loop45:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().c);
                                                                                                                                          loop46:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             loop47:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   loop48:
                                                                                                                                                   for(; !(_loc17_ && param1); §§push(§§pop().c),if(!(_loc18_ || param1))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   },§§push(§§pop().y),if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr833);
                                                                                                                                                   },§§goto(addr867))
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!(_loc17_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§-@§);
                                                                                                                                                            loop49:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop50:
                                                                                                                                                               while(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop51:
                                                                                                                                                                  while(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 loop53:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr792:
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr799:
                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().c);
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                   break loop48;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr974:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc17_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr974);
                                                                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1003);
                                                                                                                                                                                             addr965:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr965);
                                                                                                                                                                                             §§goto(addr799);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr964:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                                                                          addr940:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().a);
                                                                                                                                                                                             addr941:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.§,H§);
                                                                                                                                                                                                if(_loc18_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                      addr952:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr953:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            addr954:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                               addr955:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr956:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     addr957:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr951:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr958:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   addr959:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().a = §§pop();
                                                                                                                                                                                                      addr960:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr792);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr874:
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       if(!(_loc18_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§,H§);
                                                                                                                                                                                             if(!(_loc17_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                           if(!(_loc17_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr750:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr760:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().a = §§pop();
                                                                                                                                                                                                                                          loop56:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_.§+!q§();
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr938);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr999:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr872:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr874);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr958);
                                                                                                                                                                                                                                             §§goto(addr940);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr960);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr941);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr959);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr952);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr956);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr955);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr750);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr953);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr760);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr954);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr750);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr951);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr957);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr760);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr958);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr760);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr940);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop51;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           addr986:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.§-@§);
                                                                                                                                                                              addr988:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                 break loop50;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr833:
                                                                                                                                                                           if(!(_loc18_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc4_.§-@§);
                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr849:
                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr862:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop51;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          §§goto(addr872);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1007);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       §§goto(addr999);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr998:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr988);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr998);
                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                              }
                                                                                                                                                                              addr997:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr862);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1012);
                                                                                                                                                                        addr924:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1009);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1011);
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc17_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr997);
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1010);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr924);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1006);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr986);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1005);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1013);
                                                                                                                              }
                                                                                                                              §§goto(addr622);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr593);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr571);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr528);
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                §§goto(addr508);
                                                                                             }
                                                                                             §§goto(addr534);
                                                                                          }
                                                                                          §§goto(addr542);
                                                                                       }
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr462);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                  }
                                                               }
                                                               §§push(_loc2_.col2);
                                                               if(!(_loc18_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(_loc18_ || _loc2_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc17_ && _loc3_))
                                                                        {
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop9:
                                                                              for(; !_loc17_; if(_loc17_ && param1)
                                                                              {
                                                                                 continue;
                                                                              },§§push(Number(§§pop())),if(_loc18_)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(_loc4_.m_sweep.c.x);
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    addr385:
                                                                                    §§push(_loc8_);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          §§goto(addr401);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              },§§goto(addr411))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    while(!_loc17_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc17_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                    addr336:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr362);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr361);
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr411);
                                                            }
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                }
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                              }
                              §§goto(addr185);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr150);
                        }
                     }
                     §§goto(addr185);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ && _loc2_)
                  {
                  }
               }
               §§goto(addr120);
            }
            §§goto(addr63);
         }
         addr33:
         return true;
      }
   }
}
