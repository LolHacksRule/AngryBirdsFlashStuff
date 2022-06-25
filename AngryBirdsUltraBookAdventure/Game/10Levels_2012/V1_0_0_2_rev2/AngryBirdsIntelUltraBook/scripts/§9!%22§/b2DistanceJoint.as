package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §'2§:b2Vec2;
      
      private var §7! §:Number;
      
      private var §`!H§:Number;
      
      private var §=R§:Number;
      
      private var §6!Z§:Number;
      
      private var §,!2§:Number;
      
      private var §,0§:Number;
      
      private var §?!D§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§'2§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§<?§);
                        while(_loc5_)
                        {
                           while(!(_loc6_ && _loc2_))
                           {
                              this.§,!2§ = 0;
                              loop10:
                              while(!_loc6_)
                              {
                                 this.§=R§ = 0;
                                 while(true)
                                 {
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue loop10;
                                    }
                                    addr60:
                                    if(_loc5_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr120:
                                    addr86:
                                    while(true)
                                    {
                                       this.§7! § = param1.§ y§;
                                       do
                                       {
                                          if(!_loc6_)
                                          {
                                             this.§`!H§ = param1.§`!X§;
                                             break loop10;
                                          }
                                          continue loop0;
                                       }
                                       while(_loc6_ && param1);
                                       
                                       return;
                                       §§goto(addr60);
                                    }
                                    this.§6!Z§ = 0;
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr41);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.m_localAnchor2.SetV(param1.§%!e§);
            §§goto(addr127);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§,!2§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr58);
         }
         addr52:
         §§push(this.§'2§.x);
         if(!_loc3_)
         {
            addr58:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(_loc2_)
            {
               §§push(this.§,!2§);
               if(!(_loc3_ && this))
               {
                  §§goto(addr77);
               }
               §§push(§§pop() * §§pop());
            }
         }
         addr77:
         §§push(§§pop() * §§pop());
         if(!_loc3_)
         {
            §§push(this.§'2§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!T§() : Number
      {
         return this.§?!D§;
      }
      
      public function §[! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!D§ = param1;
         }
      }
      
      public function §8!?§() : Number
      {
         return this.§7! §;
      }
      
      public function §3!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7! § = param1;
         }
      }
      
      public function §-!8§() : Number
      {
         return this.§`!H§;
      }
      
      public function §1!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!H§ = param1;
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
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         _loc4_ = b2internal::6!G;
         _loc5_ = b2internal::0!w;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc20_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc21_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(!_loc21_)
         {
            §§push(this.m_localAnchor1.y);
            while(true)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               addr242:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr243:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr244:
                     while(true)
                     {
                        _loc7_ = §§pop();
                     }
                  }
               }
               addr96:
               if(!(_loc20_ || param1))
               {
                  continue;
               }
               addr104:
               §§push(Number(§§pop()));
               if(_loc20_)
               {
                  if(!(_loc21_ && _loc2_))
                  {
                     _loc6_ = §§pop();
                     if(_loc20_ || _loc3_)
                     {
                        if(_loc20_)
                        {
                           if(false)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(_loc2_.col1);
                                 if(!_loc21_)
                                 {
                                    §§push(§§pop().y);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(_loc20_ || this)
                                       {
                                          if(_loc20_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc2_.col2);
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         addr168:
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop12:
                                                               for(; !_loc21_; if(_loc21_ && _loc2_)
                                                               {
                                                                  continue;
                                                               },if(!_loc20_)
                                                               {
                                                                  continue loop9;
                                                               },§§goto(addr96))
                                                               {
                                                                  if(!(_loc21_ && _loc2_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        addr182:
                                                                        addr232:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc21_ && _loc3_))
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr104);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col1);
                                                                                 break loop8;
                                                                              }
                                                                              addr245:
                                                                           }
                                                                        }
                                                                        addr232:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           break loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr234:
                                                                  while(true)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               addr233:
                                                            }
                                                            addr231:
                                                            while(true)
                                                            {
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                         addr168:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr168);
                                                }
                                                addr228:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   break loop9;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr231);
                                             }
                                             addr230:
                                             addr147:
                                          }
                                          break;
                                       }
                                       §§goto(addr168);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr230);
                                    }
                                    addr229:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc20_ || _loc2_)
                                 {
                                    if(_loc20_ || _loc3_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc20_ || this)
                                       {
                                          if(_loc20_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc20_ || param1)
                                             {
                                                addr226:
                                                §§goto(addr228);
                                                §§push(_loc2_.col2);
                                             }
                                             §§goto(addr233);
                                          }
                                          else
                                          {
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                    break;
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr244);
                           }
                           _loc2_ = _loc5_.m_xf.R;
                           §§push(this.m_localAnchor2.x);
                           if(_loc20_)
                           {
                              §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                              if(!(_loc21_ && _loc2_))
                              {
                                 addr268:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              if(!_loc21_)
                              {
                                 addr549:
                                 _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
                                 addr550:
                                 addr543:
                                 addr548:
                                 addr547:
                                 §§push(_loc2_.col1.x);
                                 if(!(_loc21_ && _loc3_))
                                 {
                                    addr519:
                                    §§push(§§pop() * _loc8_);
                                    if(_loc20_)
                                    {
                                       addr526:
                                       §§push(_loc2_.col2.x * _loc9_);
                                       if(_loc20_ || this)
                                       {
                                          addr535:
                                          §§push(Number(§§pop() + §§pop()));
                                          if(_loc20_)
                                          {
                                             _loc3_ = §§pop();
                                             addr539:
                                             §§push(_loc2_.col1);
                                             if(!(_loc21_ && param1))
                                             {
                                                addr454:
                                                §§push(§§pop().y);
                                                §§push(_loc8_);
                                                if(!_loc21_)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc20_ || this)
                                                            {
                                                               if(_loc20_ || _loc2_)
                                                               {
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§push(_loc2_.col2);
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr505:
                                                                                 _loc9_ = §§pop() + §§pop();
                                                                                 addr506:
                                                                                 addr504:
                                                                                 §§push(_loc3_);
                                                                                 if(_loc20_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc21_ && this))
                                                                                    {
                                                                                       if(_loc20_ || _loc2_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                             addr430:
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr364:
                                                                                                      addr442:
                                                                                                      §§push(this.§'2§);
                                                                                                      §§push(_loc5_.m_sweep.c.x);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         addr374:
                                                                                                         §§push(§§pop() + _loc8_);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            addr380:
                                                                                                            addr379:
                                                                                                            addr391:
                                                                                                            addr381:
                                                                                                            addr377:
                                                                                                            §§push(§§pop() - _loc4_.m_sweep.c.x);
                                                                                                            if(_loc20_ || _loc2_)
                                                                                                            {
                                                                                                               addr390:
                                                                                                               §§push(§§pop() - _loc6_);
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr392:
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(this.§'2§);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!(_loc21_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(!(_loc21_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc20_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr352:
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr348:
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr364);
                                                                                                                                                               }
                                                                                                                                                               addr569:
                                                                                                                                                               var _loc10_:Number;
                                                                                                                                                               §§push(_loc10_ = Math.sqrt(this.§'2§.x * this.§'2§.x + this.§'2§.y * this.§'2§.y));
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§'2§);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§^$§(1 / _loc10_);
                                                                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr600:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr603:
                                                                                                                                                                              §§pop().§`!5§();
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§'2§.y);
                                                                                                                                                                              if(_loc20_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr617:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr620:
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr632:
                                                                                                                                                                                       §§push(§§pop() - §§pop() * this.§'2§.x);
                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr635:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr632);
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc11_:* = §§pop();
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§'2§.y);
                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr674:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * this.§'2§.x);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                                                                       §§push(_loc4_.§7n§);
                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.§;5§);
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc21_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr699:
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr702:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc20_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr718:
                                                                                                                                                                                                            §§push(_loc5_.§7n§);
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr740:
                                                                                                                                                                                                                  §§push(_loc5_.§;5§);
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr744:
                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr752:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr750:
                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr755:
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() != 0)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1486:
                                                                                                                                                                                                                                    §§push(1 / _loc13_);
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1499:
                                                                                                                                                                                                                                          §§pop().§,0§ = §§pop();
                                                                                                                                                                                                                                          addr1460:
                                                                                                                                                                                                                                          addr1500:
                                                                                                                                                                                                                                          if(this.§7! § > 0)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1476:
                                                                                                                                                                                                                                             _loc14_ = _loc10_ - this.§?!D§;
                                                                                                                                                                                                                                             addr1461:
                                                                                                                                                                                                                                             addr1475:
                                                                                                                                                                                                                                             addr1477:
                                                                                                                                                                                                                                             addr1472:
                                                                                                                                                                                                                                             §§push(2 * Math.PI);
                                                                                                                                                                                                                                             §§push(this.§7! §);
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1454:
                                                                                                                                                                                                                                                _loc15_ = §§pop() * §§pop();
                                                                                                                                                                                                                                                addr1455:
                                                                                                                                                                                                                                                addr1453:
                                                                                                                                                                                                                                                §§push(2);
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1413:
                                                                                                                                                                                                                                                   §§push(§§pop() * this.§,0§);
                                                                                                                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1423:
                                                                                                                                                                                                                                                      §§push(§§pop() * this.§`!H§ * _loc15_);
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1430:
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                                                                  addr1435:
                                                                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§,0§);
                                                                                                                                                                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1392:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1397:
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                                                                    §§push(param1.§^Z§);
                                                                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                       if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(param1.§^Z§);
                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().§=R§ = §§pop();
                                                                                                                                                                                                                                                                                    addr1405:
                                                                                                                                                                                                                                                                                    addr1365:
                                                                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§=R§);
                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() != 0)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1304:
                                                                                                                                                                                                                                                                                             §§push(1 / this.§=R§);
                                                                                                                                                                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1323:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1328:
                                                                                                                                                                                                                                                                                                §§pop().§=R§ = §§pop();
                                                                                                                                                                                                                                                                                                addr1329:
                                                                                                                                                                                                                                                                                                if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                   if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(param1.§^Z§);
                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1292:
                                                                                                                                                                                                                                                                                                               §§pop().§6!Z§ = §§pop();
                                                                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + this.§=R§);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().§,0§ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1293:
                                                                                                                                                                                                                                                                                                               addr1255:
                                                                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§,0§);
                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1218:
                                                                                                                                                                                                                                                                                                                        §§push(1 / this.§,0§);
                                                                                                                                                                                                                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1229:
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1232:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1237:
                                                                                                                                                                                                                                                                                                                           §§pop().§,0§ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr1238:
                                                                                                                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1182:
                                                                                                                                                                                                                                                                                                                              if(param1.§[8§)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1186:
                                                                                                                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                                                                                                                 §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * param1.§87§);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().§,!2§ = §§pop();
                                                                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1148:
                                                                                                                                                                                                                                                                                                                                    §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1159:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * this.§'2§.x);
                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1167:
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr1172:
                                                                                                                                                                                                                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§'2§);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1132:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                addr1135:
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1064:
                                                                                                                                                                                                                                                                                                                                                                                                      _loc4_.§^O§.x -= _loc4_.§7n§ * _loc18_;
                                                                                                                                                                                                                                                                                                                                                                                                      addr1065:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1062:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1059:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1061:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1063:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1058:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1056:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1027:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc4_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1031:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc4_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1044:
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop().y - _loc4_.§7n§ * _loc19_;
                                                                                                                                                                                                                                                                                                                                                                                                               addr1045:
                                                                                                                                                                                                                                                                                                                                                                                                               addr1039:
                                                                                                                                                                                                                                                                                                                                                                                                               addr1041:
                                                                                                                                                                                                                                                                                                                                                                                                               addr1043:
                                                                                                                                                                                                                                                                                                                                                                                                               addr1042:
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_.§;5§);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr999:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1000:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1001:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1002:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr923:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc5_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr927:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc5_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr930:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_.§7n§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr951:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr960:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr961:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr959:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc5_.§^O§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_.§7n§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr892:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr902:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr912:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§;5§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr811:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr812:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr804:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr807:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1045);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr760);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1002);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr961);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr912);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr807);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr804);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr811);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr812);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1065);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1039);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr930);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1041);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1062);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr951);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr959);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr892);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1059);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr960);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr902);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr927);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr923);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1042);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1061);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr960);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1044);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1405);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1238);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr999);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1000);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1186);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1058);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1056);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1293);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1172);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1423);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1132);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1423);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1430);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1132);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1365);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1454);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1423);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              this.§,!2§ = 0;
                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1135);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr760:
                                                                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr811);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1232);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1237);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1229);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1218);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1291:
                                                                                                                                                                                                                                                                                                            §§goto(addr1292);
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(this.§=R§);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1291);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1292);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1477);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1327:
                                                                                                                                                                                                                                                                                             §§goto(addr1328);
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1327);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1328);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1323);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1304);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1413);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1460);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1461);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1392);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1397);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1500);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1460);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1461);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1472);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1476);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1453);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1476);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1474:
                                                                                                                                                                                                                                             §§goto(addr1474);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1182);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1499);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1498:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1498);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1499);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1486);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1454);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr752);
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr752);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr755);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr752);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr740);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr744);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr752);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr750);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr702);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr699);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr718);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr674);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr632);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr620);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr600);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§'2§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr603);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr617);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr635);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr442);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr392);
                                                                                                                                                      }
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr352);
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr390);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr380);
                                                                                                                                                }
                                                                                                                                                §§goto(addr379);
                                                                                                                                             }
                                                                                                                                             §§goto(addr391);
                                                                                                                                          }
                                                                                                                                          §§goto(addr352);
                                                                                                                                       }
                                                                                                                                       §§goto(addr374);
                                                                                                                                    }
                                                                                                                                    §§goto(addr381);
                                                                                                                                 }
                                                                                                                                 §§goto(addr352);
                                                                                                                              }
                                                                                                                              §§goto(addr348);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr364);
                                                                                                                     addr398:
                                                                                                                  }
                                                                                                                  §§goto(addr550);
                                                                                                               }
                                                                                                               §§goto(addr539);
                                                                                                            }
                                                                                                            §§goto(addr506);
                                                                                                         }
                                                                                                         §§goto(addr390);
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§goto(addr549);
                                                                                             }
                                                                                             §§goto(addr504);
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr454);
                                                                                    }
                                                                                    §§goto(addr505);
                                                                                 }
                                                                                 §§goto(addr430);
                                                                              }
                                                                              §§goto(addr569);
                                                                           }
                                                                           §§goto(addr526);
                                                                        }
                                                                        §§goto(addr569);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  §§goto(addr548);
                                                               }
                                                               §§goto(addr535);
                                                            }
                                                            §§goto(addr505);
                                                         }
                                                         §§goto(addr547);
                                                      }
                                                      §§goto(addr519);
                                                   }
                                                   §§goto(addr526);
                                                }
                                                §§goto(addr569);
                                             }
                                             §§goto(addr549);
                                          }
                                       }
                                    }
                                    §§goto(addr569);
                                 }
                                 §§goto(addr526);
                              }
                              §§goto(addr398);
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr232);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr245);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc19_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc19_ && _loc3_))
         {
            §§push(_loc5_);
            if(!_loc19_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc19_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc18_ || _loc3_)
                  {
                     addr106:
                     §§push(§§pop() + §§pop() * _loc6_);
                     if(_loc19_ && _loc3_)
                     {
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc19_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc18_ || param1)
                        {
                           §§push(_loc5_);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc18_ || _loc2_)
                              {
                                 addr139:
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc19_ && _loc2_))
                                 {
                                    addr149:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc19_)
                                 {
                                    addr154:
                                    §§push(Number(§§pop()));
                                    if(!_loc19_)
                                    {
                                       addr157:
                                       _loc6_ = §§pop();
                                       if(_loc18_)
                                       {
                                          addr160:
                                          §§push(_loc7_);
                                          if(_loc18_ || _loc2_)
                                          {
                                             addr168:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc5_ = §§pop();
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc18_ || _loc3_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(_loc18_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc18_ || this)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(!_loc19_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!(_loc19_ && _loc2_))
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc19_ && _loc2_))
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
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(_loc9_);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_ || _loc3_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc19_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc18_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.col2);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!(_loc18_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(_loc9_);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                break;
                                                                                             }
                                                                                             addr388:
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop3;
                                                                                          addr240:
                                                                                          if(!(_loc18_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr247:
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc19_ && _loc2_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc18_ || param1))
                                                                                                   {
                                                                                                      addr370:
                                                                                                      §§push(_loc3_.m_angularVelocity);
                                                                                                      if(!(_loc19_ && _loc2_))
                                                                                                      {
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      break loop7;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr240);
                                                                                                §§goto(addr247);
                                                                                             }
                                                                                             addr320:
                                                                                          }
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(_loc3_.§^O§.x);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§goto(addr370);
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr392:
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                       addr389:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr393:
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc3_.§^O§.y);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * _loc5_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc4_.§^O§.x);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc4_.m_angularVelocity);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr422:
                                                                                    §§push(§§pop() * _loc9_);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr438:
                                                                                    var _loc12_:Number = §§pop();
                                                                                    §§push(_loc4_.§^O§.y);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc19_ && _loc3_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(this.§'2§.x);
                                                                                    if(_loc18_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(this.§'2§.y);
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                      addr492:
                                                                                                      §§push(_loc13_);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr497:
                                                                                                         §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr501:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                §§push(this.§,0§);
                                                                                                if(_loc18_ || _loc3_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         §§push(this.§6!Z§);
                                                                                                         if(_loc18_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               addr553:
                                                                                                               §§push(this.§=R§);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr549:
                                                                                                                  §§push(§§pop() * this.§,!2§);
                                                                                                               }
                                                                                                               §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  addr561:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§,!2§);
                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc15_);
                                                                                                                  }
                                                                                                                  §§pop().§,!2§ = §§pop();
                                                                                                               }
                                                                                                               §§push(_loc15_);
                                                                                                               if(_loc18_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * this.§'2§.x);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr597:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc16_:* = §§pop();
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§'2§.y);
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc17_:* = §§pop();
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§^O§);
                                                                                                                     loop10:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§^O§);
                                                                                                                        loop11:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§7n§);
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 addr878:
                                                                                                                              }
                                                                                                                              loop14:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 loop15:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§^O§);
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§^O§);
                                                                                                                                          loop18:
                                                                                                                                          while(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             loop19:
                                                                                                                                             while(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§7n§);
                                                                                                                                                loop20:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   loop21:
                                                                                                                                                   while(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         loop23:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.§;5§);
                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr821:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr809:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr817:
                                                                                                                                                                                 §§push(§§pop() * _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                           loop25:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§^O§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc4_.§^O§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    addr740:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§7n§);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr769:
                                                                                                                                                                                 §§push(_loc4_.§^O§);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc4_.§^O§);
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.§7n§);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc18_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr769);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                         addr754:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr745);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr740);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr715);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr739);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr817);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr809);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr821);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr878);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr671);
                                                                                                               }
                                                                                                               §§goto(addr597);
                                                                                                            }
                                                                                                            §§goto(addr553);
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr561);
                                                                                             }
                                                                                             §§goto(addr492);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr497);
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 §§goto(addr438);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§push(-§§pop());
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§goto(addr388);
                                                         §§push(_loc6_);
                                                      }
                                                   }
                                                }
                                                §§goto(addr389);
                                             }
                                          }
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr106);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr106);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(!(_loc17_ && param1))
         {
            if(this.§7! § > 0)
            {
               if(!_loc17_)
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc18_)
               {
                  addr72:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc18_)
               {
                  §§push(_loc5_);
                  if(!_loc17_)
                  {
                     addr105:
                     §§push(§§pop() * §§pop());
                     if(!(_loc17_ && _loc2_))
                     {
                        §§push(_loc2_.col2.x);
                        if(!_loc17_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                     }
                     var _loc7_:* = Number(§§pop());
                     if(_loc18_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!_loc17_)
                        {
                           §§push(_loc5_);
                           if(!(_loc17_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc17_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc18_)
                                 {
                                    addr130:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc18_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_ || this)
                                    {
                                       addr148:
                                       _loc6_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          addr151:
                                          §§push(_loc7_);
                                          if(_loc18_ || _loc2_)
                                          {
                                             addr160:
                                             _loc5_ = Number(§§pop());
                                          }
                                          §§goto(addr160);
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(!(_loc17_ && param1))
                                          {
                                             addr183:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!(_loc17_ && _loc3_))
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(_loc18_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          if(_loc18_)
                                          {
                                             §§push(_loc2_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc17_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(_loc8_);
                                                if(_loc18_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc17_)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr339:
                                                         addr267:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            addr340:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr353:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  addr352:
                                                               }
                                                               else
                                                               {
                                                                  addr368:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     addr371:
                                                                     §§push(_loc3_.m_sweep.c.x);
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        addr400:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(_loc5_);
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc4_.m_sweep.c.y);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 addr418:
                                                                                 §§push(_loc3_.m_sweep.c.y);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr424:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       addr428:
                                                                                       §§push(§§pop() - _loc6_);
                                                                                       if(!(_loc17_ && _loc2_))
                                                                                       {
                                                                                          addr436:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc11_:* = §§pop();
                                                                                       var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      _loc10_ = §§pop();
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         addr466:
                                                                                                         §§push(_loc11_);
                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                         {
                                                                                                            addr474:
                                                                                                            §§push(_loc12_);
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr495:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr498:
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     addr499:
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        addr502:
                                                                                                                        addr504:
                                                                                                                        §§push(§§pop() - this.§?!D§);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr508:
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(b2Math);
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(§§pop().§]#§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 addr537:
                                                                                                                                 §§push(this.§,0§);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr554:
                                                                                                                                 var _loc14_:* = §§pop();
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    this.§'2§.Set(_loc10_,_loc11_);
                                                                                                                                 }
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * this.§'2§.x);
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr581:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc15_:* = §§pop();
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc17_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§'2§.y);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc16_:* = §§pop();
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.m_sweep);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().c);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                loop12:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§7n§);
                                                                                                                                                      loop14:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop16:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               loop17:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.m_sweep);
                                                                                                                                                                     loop19:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        addr955:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                                                                           loop21:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 loop23:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.§7n§);
                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          loop43:
                                                                                                                                                                                          while(!(_loc17_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop44:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                loop45:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   loop46:
                                                                                                                                                                                                   while(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      loop47:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr852:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            addr853:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                                                                               addr855:
                                                                                                                                                                                                               while(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc17_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           addr873:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        while(_loc18_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_.§7n§);
                                                                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                        addr779:
                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                        if(_loc17_ && this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_.§7n§);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop44;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr814:
                                                                                                                                                                                                                           if(!(_loc18_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(_loc18_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                              addr980:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr822:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc17_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc17_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop17;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr873);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              break loop46;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr822);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                                                                         addr910:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().a);
                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.§;5§);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr934:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr943:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr934:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        addr945:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr946:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              addr947:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                                                                 §§goto(addr948);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr944:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr934);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr946);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr947);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr908);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr980);
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
                                                                                                                                          if(_loc17_ && param1)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().a);
                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§;5§);
                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr711:
                                                                                                                                                                           §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr720:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr723:
                                                                                                                                                                                 §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                 §§goto(addr724);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr946);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr945);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr943);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr711);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr934);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr711);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr944);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr711);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr720);
                                                                                                                                                }
                                                                                                                                                §§goto(addr947);
                                                                                                                                             }
                                                                                                                                             §§goto(addr723);
                                                                                                                                          }
                                                                                                                                          §§goto(addr910);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr950);
                                                                                                                                 }
                                                                                                                                 §§goto(addr581);
                                                                                                                              }
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(!(_loc17_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc13_);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        §§goto(addr537);
                                                                                                                     }
                                                                                                                     §§goto(addr508);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr502);
                                                                                                            }
                                                                                                            §§goto(addr504);
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                      }
                                                                                                      §§goto(addr499);
                                                                                                   }
                                                                                                   §§goto(addr495);
                                                                                                }
                                                                                                §§goto(addr474);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    §§goto(addr436);
                                                                                 }
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                        §§goto(addr418);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc17_ && _loc2_)
                                                                     {
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  addr399:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         §§push(_loc2_.col2);
                                                         if(!(_loc18_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  if(!(_loc17_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc18_ || _loc3_)
                                                                     {
                                                                        addr305:
                                                                        §§push(Number(§§pop()));
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           loop8:
                                                                           while(!(_loc17_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc17_ && _loc2_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr399);
                                                                                 }
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(_loc4_.m_sweep.c.x);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr352);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr371);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                   }
                                                   §§goto(addr400);
                                                }
                                                §§goto(addr368);
                                             }
                                             §§push(_loc8_);
                                             if(_loc18_ || this)
                                             {
                                                §§goto(addr368);
                                             }
                                             §§goto(addr400);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr151);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ && _loc2_)
                  {
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr72);
         }
         §§goto(addr58);
      }
   }
}
