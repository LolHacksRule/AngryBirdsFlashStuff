package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §&+§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §@!C§:b2Vec2;
      
      private var §'!§:b2Vec2;
      
      private var §<<§:b2Vec2;
      
      private var § ,§:b2Mat22;
      
      private var §2!U§:b2Vec2;
      
      private var §-!K§:Number;
      
      private var §^Z§:Number;
      
      private var §`!"§:Number;
      
      private var §#!§:Number;
      
      private var §'!h§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.§&+§ = new b2Mat22();
         }
         loop0:
         while(true)
         {
            this.K1 = new b2Mat22();
            while(true)
            {
               this.K2 = new b2Mat22();
               loop2:
               while(_loc5_)
               {
                  this.§@!C§ = new b2Vec2();
                  loop3:
                  while(true)
                  {
                     this.§'!§ = new b2Vec2();
                     loop4:
                     while(true)
                     {
                        this.§<<§ = new b2Vec2();
                        loop5:
                        while(true)
                        {
                           this.§ ,§ = new b2Mat22();
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    this.§2!U§ = new b2Vec2();
                                    while(_loc5_)
                                    {
                                       super(param1);
                                       loop8:
                                       while(!(_loc6_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§'!§);
                                             addr61:
                                             while(true)
                                             {
                                                §§pop().SetV(param1.target);
                                                while(true)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(this.§'!§);
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() - b2internal::[=.m_xf.position.x);
                                                               if(!_loc6_)
                                                               {
                                                                  addr46:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc5_)
                                                                  {
                                                                     addr49:
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr54);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr49);
                                                            }
                                                            §§goto(addr46);
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                      break;
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr143);
                                                continue loop8;
                                             }
                                             addr54:
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr143:
                                             §§push(this.§'!§.y);
                                             if(!_loc6_)
                                             {
                                                addr169:
                                                §§push(§§pop() - b2internal::[=.m_xf.position.y);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   addr168:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc3_:* = §§pop();
                                                _loc4_ = b2internal::[=.m_xf.R;
                                                if(_loc5_)
                                                {
                                                   addr305:
                                                   §§push(this.§@!C§);
                                                   §§push(_loc2_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_.col1.x);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr332:
                                                         addr331:
                                                         addr319:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc3_);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr330:
                                                            §§push(§§pop() * _loc4_.col1.y);
                                                         }
                                                         §§pop().x = §§pop() + §§pop();
                                                         addr333:
                                                         §§push(this.§@!C§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(_loc4_.col2.x);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr270:
                                                                           §§push(_loc4_.col2.y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr276:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 addr284:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    this.§-!K§ = param1.§2A§;
                                                                                    this.§<<§.§&!K§();
                                                                                    this.§^Z§ = param1.§4p§;
                                                                                    this.§`!"§ = param1.§2=§;
                                                                                    addr232:
                                                                                    addr292:
                                                                                    addr237:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       this.§#!§ = 0;
                                                                                       addr195:
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   this.§'!h§ = 0;
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr232);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr237);
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    addr243:
                                                                                    §§goto(addr243);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr330);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr168);
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§'!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.§@!C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§<<§.x);
            if(!_loc3_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§<<§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5§() : b2Vec2
      {
         return this.§'!§;
      }
      
      public function §+!z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(b2internal::[=.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::[=.SetAwake(true);
                  addr49:
                  while(true)
                  {
                  }
               }
               addr46:
            }
            while(true)
            {
               this.§'!§ = param1;
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr46);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §9D§() : Number
      {
         return this.§-!K§;
      }
      
      public function §>T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!K§ = param1;
         }
      }
      
      public function §8!V§() : Number
      {
         return this.§^Z§;
      }
      
      public function §,!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^Z§ = param1;
         }
      }
      
      public function §,2§() : Number
      {
         return this.§`!"§;
      }
      
      public function §-!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!"§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::[=;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_)
         {
            §§push(§§pop() * this.§^Z§);
            if(!_loc14_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc13_)
            {
               §§push(this.§`!"§);
               if(!_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && _loc3_))
                  {
                     addr63:
                     §§push(§§pop() * _loc4_);
                     if(_loc13_ || _loc2_)
                     {
                        addr71:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!(_loc14_ && _loc3_))
                  {
                     §§push(_loc4_);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc13_ || this)
                        {
                           addr93:
                           §§push(§§pop() * _loc4_);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(_loc13_ || param1)
                        {
                           §§push(this);
                           §§push(param1.§&!'§);
                           if(_loc13_)
                           {
                              §§push(_loc5_);
                              if(_loc13_)
                              {
                                 §§push(param1.§&!'§);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§'!h§ = §§pop();
                        }
                        loop0:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(!_loc14_)
                              {
                                 §§push(this.§'!h§);
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr161:
                                       §§push(1 / this.§'!h§);
                                       if(_loc13_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc14_ && param1))
                                          {
                                             addr185:
                                             §§pop().§'!h§ = §§pop();
                                             do
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(this);
                                                §§push(param1.§&!'§);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc14_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      addr133:
                                                      §§push(this.§'!h§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   continue;
                                                }
                                                §§goto(addr133);
                                             }
                                             while(§§pop().§#!§ = §§pop(), _loc14_ && param1);
                                             
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue;
                                             addr180:
                                          }
                                          §§goto(addr185);
                                       }
                                       addr184:
                                       §§push(Number(§§pop()));
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§goto(addr184);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr161);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§@!C§.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(_loc13_ || param1)
                              {
                                 addr234:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§@!C§.y);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(_loc13_ || this)
                                 {
                                    addr258:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(_loc7_.col1.x);
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc14_ && this))
                                       {
                                          §§push(_loc7_.col2.x);
                                          if(_loc13_)
                                          {
                                             addr291:
                                             §§push(§§pop() * _loc9_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc13_ || param1)
                                          {
                                             addr301:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc10_:* = §§pop();
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§push(_loc7_.col1);
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc14_)
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_)
                                                   {
                                                      addr1078:
                                                      §§push(_loc7_.col2.y);
                                                      if(!_loc14_)
                                                      {
                                                         addr1085:
                                                         §§push(§§pop() + §§pop() * _loc9_);
                                                      }
                                                      §§goto(addr1085);
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop5:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop8:
                                                               while(!_loc14_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§-7§);
                                                                     loop10:
                                                                     while(_loc13_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop11:
                                                                        while(!_loc14_)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§,!o§);
                                                                              if(!(_loc14_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc13_ || param1))
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§goto(addr1031);
                                                                                 §§push(Number(§§pop()));
                                                                                 continue loop10;
                                                                              }
                                                                              addr1031:
                                                                              if(_loc14_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              _loc12_ = §§pop();
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.K1);
                                                                                 addr1007:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().col1);
                                                                                    addr1008:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       addr1009:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr1010:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.K1);
                                                                                             addr993:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().col2);
                                                                                                addr994:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr995:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              loop76:
                                                                              for(; !(_loc14_ && _loc2_); while(true)
                                                                              {
                                                                                 if(!(_loc13_ || this))
                                                                                 {
                                                                                    continue loop76;
                                                                                 }
                                                                                 §§goto(addr548);
                                                                              },§§goto(addr540))
                                                                              {
                                                                                 §§push(this.§<<§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<<§);
                                                                                    addr534:
                                                                                    addr548:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§push(param1.§ !o§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr507:
                                                                                             §§push(param1.§ !o§);
                                                                                             if(_loc14_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§pop().y = §§pop() * §§pop();
                                                                                             loop82:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§%!V§);
                                                                                                loop83:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.§%!V§);
                                                                                                   addr466:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr467:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         addr468:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§<<§);
                                                                                                            addr470:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr471:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr472:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr473:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        addr474:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              continue loop82;
                                                                                                                           }
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              continue loop76;
                                                                                                                           }
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop83;
                                                                                                                           }
                                                                                                                           §§goto(addr660);
                                                                                                                        }
                                                                                                                        continue loop9;
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
                                                                                       addr540:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          continue loop76;
                                                                                       }
                                                                                    }
                                                                                    §§push(this.§<<§);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(this.§<<§);
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             §§goto(addr507);
                                                                                          }
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                       §§goto(addr517);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr534);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr1085);
                                             }
                                             §§goto(addr1078);
                                             while(!(_loc14_ && this))
                                             {
                                                §§goto(addr952);
                                                §§push(_loc12_);
                                             }
                                          }
                                       }
                                       §§goto(addr791);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr234);
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr63);
            }
            §§goto(addr71);
         }
         §§goto(addr43);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::[=;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§@!C§.x);
         if(!(_loc15_ && _loc3_))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§@!C§.y);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_ || param1)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc16_)
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
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc15_)
                              {
                                 §§push(_loc7_);
                                 do
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 while(_loc16_ || _loc2_);
                                 
                                 addr256:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc15_)
                                 {
                                    addr259:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(_loc2_.§%!V§.y);
                                 if(_loc16_)
                                 {
                                    §§push(_loc2_.m_angularVelocity);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc9_:* = §§pop();
                                 _loc3_ = this.§ ,§;
                                 if(_loc16_)
                                 {
                                    §§push(_loc8_);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(this.§#!§);
                                       if(_loc16_)
                                       {
                                          §§push(this.§2!U§);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc16_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc15_)
                                                   {
                                                      §§push(this.§'!h§);
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(this.§<<§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc16_)
                                                            {
                                                               addr344:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc16_ || _loc2_)
                                                                        {
                                                                           addr366:
                                                                           §§push(_loc9_);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr374:
                                                                              §§push(this.§#!§);
                                                                              if(!(_loc15_ && _loc2_))
                                                                              {
                                                                                 addr385:
                                                                                 §§push(this.§2!U§.y);
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       addr401:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr404:
                                                                                          §§push(this.§'!h§);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(this.§<<§.y);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr423:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc16_ || _loc3_)
                                                                                                {
                                                                                                   addr431:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      addr434:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         addr438:
                                                                                                         §§push(_loc3_.col1.x);
                                                                                                         if(_loc16_ || _loc2_)
                                                                                                         {
                                                                                                            addr448:
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  addr459:
                                                                                                                  §§push(_loc3_.col2.x);
                                                                                                                  if(!(_loc15_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr471:
                                                                                                                     §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr474:
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc16_ || this)
                                                                                                                        {
                                                                                                                           addr482:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc10_:* = §§pop();
                                                                                                                        §§push(_loc3_.col1.y);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc16_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2.y);
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                    addr510:
                                                                                                                                    §§push(§§pop() * _loc5_);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                 {
                                                                                                                                    addr520:
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       addr523:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc11_:* = §§pop();
                                                                                                                                    §§push(this.§<<§.x);
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    §§push(this.§<<§.y);
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<<§);
                                                                                                                                       if(_loc16_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§<<§);
                                                                                                                                          if(!(_loc15_ && _loc3_))
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
                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr590:
                                                                                                                                                         §§push(this.§<<§);
                                                                                                                                                         §§push(this.§<<§.y);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr593:
                                                                                                                                                            §§push(§§pop() + _loc11_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§&!'§);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * this.§-!K§);
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr605:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         var _loc14_:* = §§pop();
                                                                                                                                                         if(_loc16_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§<<§);
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§#-§());
                                                                                                                                                               addr827:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                                                                  }
                                                                                                                                                                  addr832:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§<<§);
                                                                                                                                                                           addr835:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              if(_loc16_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / this.§<<§.§-D§());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§%G§(§§pop());
                                                                                                                                                                              addr848:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr833:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<<§);
                                                                                                                                                                        loop20:
                                                                                                                                                                        for(; _loc16_; §§push(this.§<<§),if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        })
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              addr806:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 addr820:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    addr821:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr848);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr835);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc16_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        if(_loc16_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr789:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc16_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc2_.§%!V§);
                                                                                                                                                                                    loop26:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc2_.§%!V§);
                                                                                                                                                                                       addr744:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          addr745:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§-7§);
                                                                                                                                                                                             addr747:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                addr748:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr749:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr750:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr820);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr832);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr806);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr827);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr805);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr789);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr738);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr605);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr593);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                                 §§goto(addr523);
                                                                                                                              }
                                                                                                                              §§goto(addr520);
                                                                                                                           }
                                                                                                                           §§goto(addr510);
                                                                                                                        }
                                                                                                                        §§goto(addr520);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr471);
                                                                                                               }
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            §§goto(addr471);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr471);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr438);
                                                                     }
                                                                     §§goto(addr474);
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr423);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      §§goto(addr431);
                                                   }
                                                   §§goto(addr448);
                                                }
                                                §§goto(addr471);
                                             }
                                             §§goto(addr344);
                                          }
                                          §§goto(addr385);
                                       }
                                       §§goto(addr471);
                                    }
                                    §§goto(addr374);
                                 }
                                 §§goto(addr366);
                                 addr220:
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr230:
                                    addr129:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr231:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc15_ && param1)
                                       {
                                          continue loop7;
                                       }
                                       §§push(_loc6_);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_ || this)
                                          {
                                             if(!(_loc16_ || this))
                                             {
                                                break;
                                             }
                                             §§push(_loc3_.col2);
                                             if(!(_loc16_ || _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop().y);
                                             if(!_loc15_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc15_ && param1))
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         if(_loc15_ && this)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               addr207:
                                                               _loc7_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        if(_loc16_ || _loc2_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              addr106:
                                                                              _loc6_ = §§pop();
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc15_ && _loc2_))
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc2_.§%!V§.x);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       addr242:
                                                                                       §§push(_loc2_.m_angularVelocity);
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          addr251:
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             addr255:
                                                                                             §§goto(addr256);
                                                                                             §§push(§§pop() * _loc7_);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                                 break;
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr230);
                                                                     §§goto(addr231);
                                                                  }
                                                                  §§goto(addr106);
                                                               }
                                                               §§goto(addr256);
                                                               addr208:
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr220);
                                                   }
                                                }
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr256);
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
            §§goto(addr208);
         }
         §§goto(addr68);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
