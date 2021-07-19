package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §#C§:b2Vec2;
      
      private var §3-§:Number;
      
      private var §&9§:Number;
      
      private var §,! §:Number;
      
      private var §super§:Number;
      
      private var §0!F§:Number;
      
      private var §6!L§:Number;
      
      private var §=1§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(true)
               {
                  this.§#C§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§0O§);
                        loop4:
                        while(true)
                        {
                           this.m_localAnchor2.SetV(param1.§ @§);
                           while(true)
                           {
                              this.§=1§ = param1.length;
                              addr63:
                              loop9:
                              while(_loc6_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§,! § = 0;
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr51:
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr88:
                                          while(_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                       continue loop9;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       addr130:
                                       while(true)
                                       {
                                          this.§3-§ = param1.§;l§;
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  this.§&9§ = param1.§,8§;
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr130);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§0!F§);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && this))
               {
                  §§goto(addr43);
               }
            }
            §§goto(addr54);
         }
         addr43:
         §§push(this.§#C§.x);
         if(!(_loc2_ && _loc2_))
         {
            addr54:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§0!F§);
               if(_loc3_)
               {
                  §§goto(addr83);
               }
               §§push(§§pop() * §§pop());
            }
         }
         addr83:
         §§push(§§pop() * §§pop());
         if(!_loc2_)
         {
            §§push(this.§#C§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §6!7§() : Number
      {
         return this.§=1§;
      }
      
      public function §'!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=1§ = param1;
         }
      }
      
      public function §-3§() : Number
      {
         return this.§3-§;
      }
      
      public function §1n§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3-§ = param1;
         }
      }
      
      public function §3i§() : Number
      {
         return this.§&9§;
      }
      
      public function § R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§&9§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::[Z;
         _loc5_ = b2internal::8!F;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc21_ && this))
            {
               §§push(this.m_localAnchor1.y);
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
                           while(true)
                           {
                              §§push(_loc2_.col1);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc20_)
                                       {
                                          §§push(_loc2_.col2);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr188:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr189:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr190:
                                                   while(!(_loc21_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(_loc20_)
                                                      {
                                                         if(!(_loc20_ || _loc2_))
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.col1);
                                    if(!(_loc20_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr122);
                                    §§push(§§pop().y);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr66);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::[Z;
         var _loc4_:b2Body = b2internal::8!F;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc19_ || this)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!(_loc18_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc19_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!(_loc18_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc19_ || _loc2_)
         {
            §§push(_loc5_);
            if(!_loc18_)
            {
               §§push(§§pop() * §§pop());
               if(_loc19_ || this)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc19_ || _loc2_)
                  {
                     addr107:
                     §§push(§§pop() + §§pop() * _loc6_);
                     if(_loc19_)
                     {
                        addr110:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr107);
               }
               var _loc7_:* = §§pop();
               if(!_loc18_)
               {
                  §§push(_loc2_.col1.y);
                  if(!(_loc18_ && param1))
                  {
                     §§push(_loc5_);
                     if(!(_loc18_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc18_ && _loc2_))
                        {
                           §§push(_loc2_.col2.y);
                           if(!(_loc18_ && param1))
                           {
                              addr150:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc19_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc18_)
                              {
                                 addr163:
                                 _loc6_ = §§pop();
                                 if(_loc19_ || _loc2_)
                                 {
                                    addr171:
                                    §§push(_loc7_);
                                    if(_loc19_)
                                    {
                                       addr175:
                                       _loc5_ = Number(§§pop());
                                    }
                                    §§goto(addr175);
                                 }
                                 _loc2_ = _loc4_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                    if(_loc19_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(!(_loc18_ && _loc2_))
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(!(_loc18_ && param1))
                                    {
                                       addr217:
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
                                          if(_loc19_)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc19_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!_loc18_)
                                             {
                                                §§push(_loc2_.col2);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!(_loc19_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr363:
                                                         addr298:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr364:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr365:
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr298:
                                                         if(_loc19_ || _loc3_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!(_loc18_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  if(_loc18_ && _loc2_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        addr331:
                                                                        while(!_loc18_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              continue loop35;
                                                                           }
                                                                           addr403:
                                                                           addr403:
                                                                           var _loc10_:Number = §§pop();
                                                                           §§push(_loc3_.§?!^§.y);
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * _loc5_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 addr434:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc4_.§?!^§.x);
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr463:
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc19_ || this)
                                                                                    {
                                                                                       addr473:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc4_.§?!^§.y);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr499:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(this.§#C§.x);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc19_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr528:
                                                                                                      §§push(this.§#C§.y);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr538:
                                                                                                            §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               addr547:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc14_:* = §§pop();
                                                                                                            §§push(this.§6!L§);
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  addr566:
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(this.§super§);
                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr586:
                                                                                                                           §§push(this.§,! §);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr590:
                                                                                                                              §§push(§§pop() * this.§0!F§);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           addr597:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc15_:* = §§pop();
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§0!F§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc15_);
                                                                                                                           }
                                                                                                                           §§pop().§0!F§ = §§pop();
                                                                                                                        }
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc19_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§#C§.x);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§#C§.y);
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              addr644:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc17_:* = §§pop();
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§?!^§);
                                                                                                                              loop6:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§?!^§);
                                                                                                                                 loop7:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§4!&§);
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          addr899:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr900:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr760:
                                                                                                                                          if(!(_loc19_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr768:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                loop30:
                                                                                                                                                for(; _loc19_; §§pop().m_angularVelocity = §§pop(),if(!(_loc19_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },if(_loc18_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.§?!^§);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§?!^§);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr722:
                                                                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§4!&§);
                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr747:
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr758:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr760);
                                                                                                                                                                                    }
                                                                                                                                                                                    loop25:
                                                                                                                                                                                    while(!(_loc18_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       loop26:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                   §§goto(addr722);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                break loop26;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr900);
                                                                                                                                                                                             addr823:
                                                                                                                                                                                             addr870:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          §§goto(addr747);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          break loop25;
                                                                                                                                                                                          §§goto(addr815);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr815:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       addr875:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          break loop30;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr807:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr899);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr823);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr758);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr870);
                                                                                                                                                                     }
                                                                                                                                                                     addr868:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr826);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr768);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr868);
                                                                                                                                                            }
                                                                                                                                                            addr867:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               while(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr807);
                                                                                                                                                                  §§push(_loc4_.§4!&§);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr902:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.§?!^§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr867);
                                                                                                                                                                        §§push(_loc3_.§?!^§);
                                                                                                                                                                        addr784:
                                                                                                                                                                        while(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr800:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr803);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop8;
                                                                                                                                                },addr695:,if(_loc19_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                },while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§?!^§);
                                                                                                                                                   §§goto(addr695);
                                                                                                                                                },addr861:,§§goto(addr784))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   §§push(_loc4_.m_angularVelocity);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc4_.§`!`§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr672:
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr677:
                                                                                                                                                                  §§push(§§pop() - §§pop() * _loc16_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr677);
                                                                                                                                                            }
                                                                                                                                                            addr679:
                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr677);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr672);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr679);
                                                                                                                                                }
                                                                                                                                                while(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   §§push(_loc3_.m_angularVelocity);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§`!`§);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                            if(_loc19_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr858:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc16_);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                               §§goto(addr861);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr858);
                                                                                                                                                }
                                                                                                                                                §§goto(addr902);
                                                                                                                                             }
                                                                                                                                             §§goto(addr875);
                                                                                                                                          }
                                                                                                                                          §§goto(addr803);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr901);
                                                                                                                                 }
                                                                                                                                 if(!(_loc19_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr800);
                                                                                                                                 §§push(_loc4_.§?!^§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr902);
                                                                                                                        }
                                                                                                                        §§goto(addr644);
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                                  §§goto(addr586);
                                                                                                               }
                                                                                                               §§goto(addr597);
                                                                                                            }
                                                                                                            §§goto(addr566);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr538);
                                                                                                   }
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                    §§goto(addr499);
                                                                                 }
                                                                                 §§goto(addr463);
                                                                              }
                                                                              §§goto(addr473);
                                                                           }
                                                                           §§goto(addr434);
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            break loop2;
                                                         }
                                                      }
                                                   }
                                                   addr394:
                                                   §§goto(addr376);
                                                   §§push(§§pop() * §§pop());
                                                   §§push(_loc2_.col2);
                                                   if(_loc18_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!(_loc18_ && this))
                                                   {
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr376);
                                                }
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr363);
                                       }
                                       §§goto(addr394);
                                       §§push(_loc6_);
                                    }
                                    §§goto(addr365);
                                 }
                                 §§goto(addr217);
                              }
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr163);
               }
               §§goto(addr171);
            }
            §§goto(addr107);
         }
         §§goto(addr110);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(!(_loc18_ && _loc2_))
         {
            if(this.§3-§ > 0)
            {
               if(_loc17_ || _loc3_)
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::[Z;
         var _loc4_:b2Body = b2internal::8!F;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc17_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc18_ && this))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!_loc18_)
         {
            §§push(_loc5_);
            if(_loc17_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc17_)
               {
                  addr104:
                  §§push(_loc2_.col2.x);
                  if(_loc17_ || param1)
                  {
                     addr114:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc18_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               if(_loc17_)
               {
                  §§push(_loc2_.col1.y);
                  if(!_loc18_)
                  {
                     §§push(_loc5_);
                     if(_loc17_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc18_ && _loc2_))
                        {
                           §§push(_loc2_.col2.y);
                           if(_loc17_)
                           {
                              addr149:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc18_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc17_ || param1)
                              {
                                 addr167:
                                 _loc6_ = §§pop();
                                 if(_loc17_ || _loc3_)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc17_)
                                    {
                                    }
                                    addr179:
                                    _loc5_ = §§pop();
                                    addr180:
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!(_loc18_ && param1))
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(_loc17_ || _loc3_)
                                       {
                                          addr207:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(!_loc18_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       if(_loc17_)
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc18_ && _loc3_))
                                             {
                                                §§push(_loc8_);
                                                if(_loc17_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc18_ && _loc3_))
                                                   {
                                                      §§push(_loc2_.col2);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(_loc9_);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(_loc2_.col2);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr367:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                             }
                                                                                             break loop3;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                addr298:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                             }
                                                                                             addr297:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr375:
                                                                                             §§push(_loc3_.m_sweep.c.x);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                addr393:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc10_:* = §§pop();
                                                                                          §§push(_loc4_.m_sweep.c.y);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(_loc3_.m_sweep.c.y);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr425:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                      }
                                                                                                      var _loc11_:* = Number(§§pop());
                                                                                                      var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc17_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr489:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    addr493:
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       addr498:
                                                                                                                                       §§push(§§pop() - this.§=1§);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr501:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(b2Math);
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().§&a§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                addr531:
                                                                                                                                                §§push(this.§6!L§);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr543:
                                                                                                                                                      var _loc14_:* = §§pop();
                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                      {
                                                                                                                                                         this.§#C§.Set(_loc10_,_loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * this.§#C§.x);
                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr570:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         var _loc15_:* = §§pop();
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * this.§#C§.y);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr586:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc16_:* = §§pop();
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                                                                               loop9:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  addr947:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.m_sweep);
                                                                                                                                                                     addr959:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        addr960:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr961:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.§4!&§);
                                                                                                                                                                              addr963:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 addr964:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr965:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       addr966:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          addr967:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.m_sweep);
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
                                                                                                                                                            §§goto(addr943);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr586);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr570);
                                                                                                                                                   }
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr543);
                                                                                                                                          }
                                                                                                                                          §§goto(addr535);
                                                                                                                                       }
                                                                                                                                       §§goto(addr531);
                                                                                                                                    }
                                                                                                                                    §§goto(addr501);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr498);
                                                                                                                        }
                                                                                                                        §§goto(addr489);
                                                                                                                     }
                                                                                                                     §§goto(addr493);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr489);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         §§goto(addr489);
                                                                                                      }
                                                                                                      §§goto(addr493);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              §§goto(addr394);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                   }
                                                   §§goto(addr375);
                                                   §§push(_loc5_);
                                                }
                                                §§goto(addr367);
                                             }
                                             break;
                                          }
                                          §§push(_loc8_);
                                          if(_loc17_ || param1)
                                          {
                                             §§goto(addr367);
                                          }
                                          §§goto(addr375);
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr179);
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr149);
                  }
               }
               §§goto(addr179);
            }
            §§goto(addr114);
         }
         §§goto(addr104);
      }
   }
}
