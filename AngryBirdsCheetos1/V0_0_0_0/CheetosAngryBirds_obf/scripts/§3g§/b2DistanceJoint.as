package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §=U§:b2Vec2;
      
      private var §"g§:Number;
      
      private var §6!L§:Number;
      
      private var §;!8§:Number;
      
      private var § !Z§:Number;
      
      private var §8v§:Number;
      
      private var §#!&§:Number;
      
      private var §6z§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc3_))
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(!(_loc6_ && this))
               {
                  this.§=U§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§4B§);
                        while(_loc5_)
                        {
                           this.m_localAnchor2.SetV(param1.§ !Q§);
                           loop5:
                           for(; _loc5_; if(_loc5_ || this)
                           {
                              this.§8v§ = 0;
                              loop9:
                              while(!_loc6_)
                              {
                                 this.§;!8§ = 0;
                                 do
                                 {
                                    if(_loc6_ && this)
                                    {
                                       continue loop9;
                                    }
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr73);
                                 }
                                 while(this.§ !Z§ = 0, !(_loc5_ || _loc2_));
                                 
                                 return;
                              }
                              continue loop2;
                           })
                           {
                              this.§6z§ = param1.length;
                              while(_loc5_)
                              {
                                 this.§"g§ = param1.§5X§;
                                 loop7:
                                 while(!(_loc6_ && _loc3_))
                                 {
                                    this.§6!L§ = param1.§@N§;
                                    while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(this.§8v§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc3_))
               {
                  addr53:
                  §§push(this.§=U§.x);
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr67);
               }
               §§goto(addr64);
            }
            addr64:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!_loc2_)
            {
               addr67:
               §§push(this.§8v§);
               if(_loc3_)
               {
                  §§goto(addr88);
               }
               §§push(§§pop() * §§pop());
            }
            addr88:
            §§push(§§pop() * §§pop());
            if(_loc3_)
            {
               §§push(this.§=U§.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr53);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §;!E§() : Number
      {
         return this.§6z§;
      }
      
      public function §;S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6z§ = param1;
         }
      }
      
      public function §3K§() : Number
      {
         return this.§"g§;
      }
      
      public function §?!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§"g§ = param1;
         }
      }
      
      public function §,!&§() : Number
      {
         return this.§6!L§;
      }
      
      public function §8!G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§6!L§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         _loc4_ = b2internal::2!D;
         _loc5_ = b2internal::;B;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc21_ || _loc2_)
         {
            §§push(this.m_localAnchor1.y);
            if(_loc21_)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr239:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr238:
            }
            loop2:
            while(true)
            {
               _loc7_ = §§pop();
               loop3:
               while(true)
               {
                  §§push(_loc2_.col1);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(_loc21_ || _loc3_)
                     {
                        §§push(_loc6_);
                        if(!_loc20_)
                        {
                           if(!_loc20_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc20_ && this))
                              {
                                 if(!(_loc21_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.col2);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr209:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       addr210:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    addr132:
                                    §§push(_loc2_.col2);
                                    if(_loc20_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().y);
                                    if(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc20_ && param1))
                                       {
                                          addr153:
                                          §§push(§§pop() * §§pop());
                                          if(_loc21_ || _loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc21_)
                                             {
                                                if(_loc20_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                addr167:
                                                addr94:
                                                while(true)
                                                {
                                                   if(_loc21_ || _loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   loop10:
                                                   while(_loc21_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.col1);
                                                         if(_loc20_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         while(true)
                                                         {
                                                            if(_loc21_ || this)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc21_ || _loc2_)
                                                               {
                                                                  if(_loc20_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc20_ && _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr132);
                                                               }
                                                               §§goto(addr153);
                                                            }
                                                            addr220:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop10;
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop3;
                                                }
                                                while(false)
                                                {
                                                   §§goto(addr96);
                                                }
                                                _loc2_ = _loc5_.m_xf.R;
                                                §§push(this.m_localAnchor2.x);
                                                if(!(_loc20_ && _loc2_))
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                   if(!_loc20_)
                                                   {
                                                      addr264:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(_loc21_)
                                                   {
                                                      §§push(this.m_localAnchor2.y);
                                                      if(!(_loc20_ && this))
                                                      {
                                                         §§push(_loc5_.m_sweep.localCenter.y);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.col1);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 addr535:
                                                                                 addr478:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(_loc20_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc2_.col2);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc20_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc21_ || _loc2_)
                                                                                             {
                                                                                                addr510:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr513:
                                                                                                   if(_loc20_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   addr522:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      addr436:
                                                                                                      _loc8_ = §§pop();
                                                                                                      loop100:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr369:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§=U§);
                                                                                                            loop102:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                               loop103:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
                                                                                                                  loop104:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     loop105:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                              addr382:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 addr383:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!(_loc20_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                       }
                                                                                                                                       addr392:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr380:
                                                                                                                        }
                                                                                                                        loop110:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           loop111:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc20_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 §§push(this.§=U§);
                                                                                                                                 if(!(_loc21_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop102;
                                                                                                                                 }
                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    continue loop103;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(_loc20_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop104;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       continue loop111;
                                                                                                                                    }
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       if(_loc20_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop105;
                                                                                                                                       }
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc21_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop110;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr350:
                                                                                                                                                         §§pop().y = §§pop() - _loc7_;
                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                         {
                                                                                                                                                            break loop111;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr350);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr383);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr392);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr350);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr380);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              §§goto(addr382);
                                                                                                                           }
                                                                                                                           continue loop100;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr585:
                                                                                                   var _loc10_:*;
                                                                                                   §§push(_loc10_ = §§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(b2Settings.b2_linearSlop);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(this.§=U§);
                                                                                                               if(!(_loc20_ && this))
                                                                                                               {
                                                                                                                  §§pop().§?Q§(1 / _loc10_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr614:
                                                                                                                  §§pop().§^!#§();
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc6_);
                                                                                                            if(!(_loc20_ && param1))
                                                                                                            {
                                                                                                               §§push(this.§=U§.y);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr631:
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        addr643:
                                                                                                                        §§push(§§pop() - §§pop() * this.§=U§.x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr646:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr643);
                                                                                                                  }
                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§=U§.y);
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc21_ || param1)
                                                                                                                           {
                                                                                                                              addr682:
                                                                                                                              §§push(§§pop() * this.§=U§.x);
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc20_ && this))
                                                                                                                           {
                                                                                                                              addr694:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc4_.§]m§);
                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc4_.§?0§);
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!(_loc20_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                          {
                                                                                                                                             addr741:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc21_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr749:
                                                                                                                                                §§push(_loc5_.§]m§);
                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§?0§);
                                                                                                                                                      if(!(_loc20_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr770:
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(_loc21_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               addr793:
                                                                                                                                                               addr792:
                                                                                                                                                               addr781:
                                                                                                                                                               §§push(§§pop() + §§pop() * _loc12_);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               var _loc13_:* = §§pop();
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() != 0)
                                                                                                                                                                        {
                                                                                                                                                                           addr1567:
                                                                                                                                                                           §§push(1 / _loc13_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(_loc21_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1594:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1594);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§#!&§ = §§pop();
                                                                                                                                                                     loop31:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§"g§);
                                                                                                                                                                        loop32:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop33:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop34:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    loop35:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§6z§);
                                                                                                                                                                                       loop36:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          loop37:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                loop39:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(2);
                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * Math.PI);
                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§"g§);
                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                         while(!(_loc20_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop43:
                                                                                                                                                                                                            for(; _loc21_; if(_loc20_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            },§§push(this.§=U§),if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ && _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1197);
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1483);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1197);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1225);
                                                                                                                                                                                                            },§§goto(addr1224))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                                                                  continue loop40;
                                                                                                                                                                                                                  addr1485:
                                                                                                                                                                                                                  if(_loc20_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop54:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                                                                     loop55:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(param1.§%G§);
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§%G§);
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().§;!8§ = §§pop();
                                                                                                                                                                                                                        while(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§;!8§);
                                                                                                                                                                                                                              if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() != 0)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1394:
                                                                                                                                                                                                                                    §§push(1 / this.§;!8§);
                                                                                                                                                                                                                                    if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1418:
                                                                                                                                                                                                                                          §§pop().§;!8§ = Number(§§pop());
                                                                                                                                                                                                                                          loop57:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param1.§%G§);
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1358:
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1371:
                                                                                                                                                                                                                                                            §§push(§§pop() * this.§;!8§);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1371);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§ !Z§ = §§pop();
                                                                                                                                                                                                                                                   loop58:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + this.§;!8§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().§#!&§ = §§pop();
                                                                                                                                                                                                                                                      loop59:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§#!&§);
                                                                                                                                                                                                                                                            if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() != 0)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1303:
                                                                                                                                                                                                                                                                  §§push(1 / this.§#!&§);
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1326:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1326);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§#!&§ = §§pop();
                                                                                                                                                                                                                                                            loop60:
                                                                                                                                                                                                                                                            for(; !_loc20_; while(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1119);
                                                                                                                                                                                                                                                               §§push(_loc4_.§%=§);
                                                                                                                                                                                                                                                            })
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!param1.§%!+§)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§8v§ = 0;
                                                                                                                                                                                                                                                                     if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop91:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1257:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                                                                       §§push(this.§8v§);
                                                                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * param1.§#b§);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().§8v§ = §§pop();
                                                                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop89:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop60;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1047:
                                                                                                                                                                                                                                                                                       §§push(_loc5_.§%=§);
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr893:
                                                                                                                                                                                                                                                                                          §§push(_loc5_.§%=§);
                                                                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc5_.§]m§);
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr909:
                                                                                                                                                                                                                                                                                                   if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr932:
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr941:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr944:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                 loop90:
                                                                                                                                                                                                                                                                                                                                 while(!_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       loop73:
                                                                                                                                                                                                                                                                                                                                       while(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_.§%=§);
                                                                                                                                                                                                                                                                                                                                          while(_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_.§%=§);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                addr987:
                                                                                                                                                                                                                                                                                                                                                while(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                      loop85:
                                                                                                                                                                                                                                                                                                                                                      while(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc5_.§]m§);
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                            while(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  break loop89;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1125:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr1126:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                     break loop85;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr932);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               addr1113:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr1114:
                                                                                                                                                                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     addr1115:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.§?0§);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1083:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1080:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       break loop90;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1080);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                                                                        continue loop80;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1112:
                                                                                                                                                                                                                                                                                                                                                            addr1014:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         break loop89;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                         continue loop73;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr997:
                                                                                                                                                                                                                                                                                                                                                      addr1127:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                         addr1122:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc4_.§]m§);
                                                                                                                                                                                                                                                                                                                                                            addr1124:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1121:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1121);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc5_.§?0§);
                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                             if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr868:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr865:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                   continue loop91;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr868);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr865);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr868);
                                                                                                                                                                                                                                                                                                                                    continue loop91;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop58;
                                                                                                                                                                                                                                                                                                                                 addr968:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§]m§);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1112);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr997);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop89;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1030:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1111);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1014);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1124);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1126);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1113);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr941);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr944);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr987);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr987);
                                                                                                                                                                                                                                                                                                §§push(_loc5_.§%=§);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                             §§goto(addr1047);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1097);
                                                                                                                                                                                                                                                                                          addr983:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr987);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1516);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1030);
                                                                                                                                                                                                                                                                                    §§goto(addr909);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr968);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr801:
                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr801);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        loop64:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(this.§8v§);
                                                                                                                                                                                                                                                                           if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1146:
                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1153:
                                                                                                                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1507:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§6!L§);
                                                                                                                                                                                                                                                                                    addr1509:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       addr1510:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                          addr1511:
                                                                                                                                                                                                                                                                                          while(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             loop50:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr1515:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                   addr1516:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§#!&§);
                                                                                                                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1153);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          addr1483:
                                                                                                                                                                                                                                                                                          while(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1485);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1510);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1482:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1482);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                 §§goto(addr1146);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1514);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1197:
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc21_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                       continue loop60;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop54;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1222:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§=U§);
                                                                                                                                                                                                                                                                                 addr1224:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                    addr1225:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc20_ && this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop64;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1515);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1509);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1511);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1482);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1115);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1257);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop57;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1303);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1371);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1358);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1418);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1418);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1418);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1394);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop37;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1253);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1567);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1287);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr793);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr792);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr793);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr793);
                                                                                                                                    }
                                                                                                                                    §§goto(addr781);
                                                                                                                                 }
                                                                                                                                 §§goto(addr793);
                                                                                                                              }
                                                                                                                              §§goto(addr741);
                                                                                                                           }
                                                                                                                           §§goto(addr749);
                                                                                                                        }
                                                                                                                        §§goto(addr694);
                                                                                                                     }
                                                                                                                     §§goto(addr682);
                                                                                                                  }
                                                                                                                  §§goto(addr694);
                                                                                                               }
                                                                                                               §§goto(addr643);
                                                                                                            }
                                                                                                            §§goto(addr631);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§=U§);
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      §§goto(addr643);
                                                                                                   }
                                                                                                   §§goto(addr646);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr585);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr545:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                             addr544:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr547:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                          addr546:
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                    §§goto(addr585);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr535);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr545);
                                                                           }
                                                                        }
                                                                        §§goto(addr546);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr585);
                                                   }
                                                   §§goto(addr522);
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc20_ && _loc2_))
                                             {
                                                addr219:
                                                while(true)
                                                {
                                                }
                                                addr219:
                                             }
                                             §§goto(addr220);
                                          }
                                          addr211:
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              §§goto(addr219);
                           }
                           else
                           {
                              §§goto(addr238);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr239);
               }
            }
         }
         §§goto(addr94);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::2!D;
         var _loc4_:b2Body = b2internal::;B;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc18_ && _loc2_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc18_ && param1))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(_loc19_ || _loc2_)
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!_loc18_)
            {
               §§push(_loc5_);
               if(_loc19_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc18_ && _loc3_))
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc19_)
                     {
                        addr107:
                        §§push(§§pop() + §§pop() * _loc6_);
                        if(_loc18_ && _loc2_)
                        {
                        }
                        var _loc7_:* = §§pop();
                        if(_loc19_ || param1)
                        {
                           §§push(_loc2_.col1.y);
                           if(!(_loc18_ && this))
                           {
                              §§push(_loc5_);
                              if(!(_loc18_ && this))
                              {
                                 addr160:
                                 §§push(§§pop() * §§pop());
                                 if(_loc19_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc19_ || _loc3_)
                                 {
                                    addr168:
                                    _loc6_ = §§pop();
                                    addr181:
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
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(_loc19_)
                                       {
                                          addr198:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(_loc19_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       if(_loc19_)
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc18_ && this)
                                             {
                                                break;
                                             }
                                             §§push(_loc8_);
                                             if(_loc19_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc18_ && this))
                                                {
                                                   §§push(_loc2_.col2);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr375:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr376:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr377:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr374:
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr379:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr380:
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                addr378:
                                             }
                                             §§goto(addr375);
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(_loc3_.§%=§.y);
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             §§push(_loc3_.m_angularVelocity);
                                             if(_loc19_ || param1)
                                             {
                                                §§push(§§pop() * _loc5_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc19_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc11_:* = §§pop();
                                          §§push(_loc4_.§%=§.x);
                                          if(_loc19_)
                                          {
                                             §§push(_loc4_.m_angularVelocity);
                                             if(_loc19_ || param1)
                                             {
                                                §§push(-§§pop());
                                                if(_loc19_ || this)
                                                {
                                                   §§push(§§pop() * _loc9_);
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc19_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc12_:* = §§pop();
                                          §§push(_loc4_.§%=§.y);
                                          if(!_loc18_)
                                          {
                                             §§push(_loc4_.m_angularVelocity);
                                             if(_loc19_ || this)
                                             {
                                                §§push(§§pop() * _loc8_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc18_)
                                             {
                                                addr514:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc13_:* = §§pop();
                                             §§push(this.§=U§.x);
                                             if(_loc19_ || _loc2_)
                                             {
                                                §§push(_loc12_);
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc10_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_ || _loc2_)
                                                         {
                                                            §§push(this.§=U§.y);
                                                            if(_loc19_)
                                                            {
                                                               addr548:
                                                               §§push(_loc13_);
                                                               if(_loc19_)
                                                               {
                                                                  addr553:
                                                                  §§push(§§pop() * (§§pop() - _loc11_));
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc18_ && this))
                                                            {
                                                               addr562:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc14_:* = §§pop();
                                                         §§push(this.§#!&§);
                                                         if(_loc19_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               addr576:
                                                               §§push(_loc14_);
                                                               if(_loc19_ || param1)
                                                               {
                                                                  §§push(this.§ !Z§);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr604:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(this.§;!8§);
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() * this.§8v§);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        addr608:
                                                                        var _loc15_:Number = §§pop();
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§8v§);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() + _loc15_);
                                                                           }
                                                                           §§pop().§8v§ = §§pop();
                                                                        }
                                                                        §§push(_loc15_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop() * this.§=U§.x);
                                                                           if(_loc19_)
                                                                           {
                                                                              addr633:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           §§push(_loc15_);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              §§push(§§pop() * this.§=U§.y);
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc17_:* = §§pop();
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              §§push(_loc3_.§%=§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§%=§);
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc19_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc3_.§]m§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          addr904:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr905:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr903:
                                                                                    }
                                                                                    addr906:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.§%=§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.§%=§);
                                                                                             loop15:
                                                                                             while(_loc19_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§]m§);
                                                                                                   addr872:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr874:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr875:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               addr876:
                                                                                                               while(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§?0§);
                                                                                                                     if(_loc19_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr853:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc16_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                              loop22:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§%=§);
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§%=§);
                                                                                                                                    addr792:
                                                                                                                                    while(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§]m§);
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             while(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             continue loop18;
                                                                                                                                             addr805:
                                                                                                                                          }
                                                                                                                                          addr813:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr814:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                addr815:
                                                                                                                                                while(_loc19_)
                                                                                                                                                {
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr856:
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr853);
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(_loc18_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc4_.§%=§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(_loc19_ || _loc3_)
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   §§push(_loc4_.§]m§);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr764:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           addr781:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              for(; _loc19_; §§pop().m_angularVelocity = §§pop(),if(_loc18_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },if(!_loc18_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              },§§goto(addr815))
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc4_.§?0§);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr682:
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr692:
                                                                                                                                                §§push(§§pop() - §§pop() * _loc16_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr692);
                                                                                                                                          }
                                                                                                                                          addr694:
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr692);
                                                                                                                                    }
                                                                                                                                    §§goto(addr682);
                                                                                                                                 }
                                                                                                                                 §§goto(addr694);
                                                                                                                              }
                                                                                                                              §§goto(addr876);
                                                                                                                           }
                                                                                                                           §§goto(addr795);
                                                                                                                        }
                                                                                                                        §§goto(addr905);
                                                                                                                     }
                                                                                                                     §§goto(addr872);
                                                                                                                  }
                                                                                                                  §§goto(addr813);
                                                                                                               }
                                                                                                               §§goto(addr904);
                                                                                                            }
                                                                                                            §§goto(addr805);
                                                                                                         }
                                                                                                         §§goto(addr903);
                                                                                                      }
                                                                                                      §§goto(addr874);
                                                                                                   }
                                                                                                   §§goto(addr764);
                                                                                                }
                                                                                                §§goto(addr906);
                                                                                             }
                                                                                             §§goto(addr870);
                                                                                          }
                                                                                          §§goto(addr875);
                                                                                       }
                                                                                       §§goto(addr814);
                                                                                    }
                                                                                    §§goto(addr781);
                                                                                 }
                                                                                 §§goto(addr792);
                                                                              }
                                                                           }
                                                                           §§goto(addr856);
                                                                        }
                                                                        §§goto(addr633);
                                                                     }
                                                                     §§goto(addr608);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                            §§goto(addr608);
                                                         }
                                                         §§goto(addr576);
                                                      }
                                                      §§goto(addr548);
                                                   }
                                                   §§goto(addr553);
                                                }
                                                §§goto(addr548);
                                             }
                                             §§goto(addr562);
                                          }
                                          §§goto(addr514);
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr198);
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr181);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc18_ && _loc3_))
                              {
                                 §§goto(addr160);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr107);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr107);
         }
         §§goto(addr77);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(_loc17_)
         {
            if(this.§"g§ > 0)
            {
               if(!_loc18_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:b2Body = b2internal::2!D;
            var _loc4_:b2Body = b2internal::;B;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(_loc17_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(!(_loc18_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc17_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc17_ || _loc2_)
               {
                  addr76:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc17_)
               {
                  §§push(_loc5_);
                  if(_loc17_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc17_)
                     {
                        addr89:
                        §§push(_loc2_.col2.x);
                        if(!_loc18_)
                        {
                           addr94:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc18_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc17_ || param1)
                        {
                           §§push(_loc5_);
                           if(_loc17_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || this)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc17_ || param1)
                                 {
                                    addr139:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_)
                                    {
                                    }
                                    addr159:
                                    _loc5_ = §§pop();
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(_loc17_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc17_ || this)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(!(_loc18_ && _loc2_))
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
                                             if(!_loc18_)
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
                                                      if(!_loc18_)
                                                      {
                                                         §§push(_loc9_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc17_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr220:
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 if(_loc18_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_ && param1)
                                                                                    {
                                                                                       addr371:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc4_.m_sweep.c.y);
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(_loc3_.m_sweep.c.y);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc17_ || _loc3_)
                                                                                                   {
                                                                                                      addr412:
                                                                                                      §§push(§§pop() - _loc6_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc17_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(_loc17_ || this)
                                                                                                               {
                                                                                                                  addr454:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr475:
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr478:
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              addr481:
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr487:
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       addr496:
                                                                                                                                       §§push(§§pop() - this.§6z§);
                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Math);
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().§?!&§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             addr536:
                                                                                                                                             §§push(this.§#!&§);
                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr545:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr548:
                                                                                                                                                   §§push(§§pop() * _loc13_);
                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                this.§=U§.Set(_loc10_,_loc11_);
                                                                                                                                             }
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§=U§.x);
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc15_:* = §§pop();
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§=U§.y);
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc16_:* = §§pop();
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                loop15:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   loop16:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                      loop17:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         loop18:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            loop19:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.§]m§);
                                                                                                                                                               loop20:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  loop21:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop22:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop23:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           loop24:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                                                                              loop25:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.m_sweep);
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       loop28:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          loop29:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.§]m§);
                                                                                                                                                                                             loop30:
                                                                                                                                                                                             while(!(_loc18_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                loop31:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      loop33:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         loop34:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                                                                            loop35:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                                                                                                                               loop36:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                                                                  loop37:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_.§?0§);
                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr887:
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr886:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           addr888:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              addr889:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr890:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    addr891:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr887:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop44:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        loop45:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                           loop46:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                              loop47:
                                                                                                                                                                                                                              while(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                                                                 loop48:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                    loop49:
                                                                                                                                                                                                                                    while(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                                                                       loop50:
                                                                                                                                                                                                                                       while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             loop51:
                                                                                                                                                                                                                                             while(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_.§]m§);
                                                                                                                                                                                                                                                loop52:
                                                                                                                                                                                                                                                while(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   loop53:
                                                                                                                                                                                                                                                   while(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      loop54:
                                                                                                                                                                                                                                                      while(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               loop56:
                                                                                                                                                                                                                                                               while(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                  while(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                                                                                                                       if(_loc18_ && this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr765);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr807);
                                                                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                     continue loop35;
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop25;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop().a);
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc4_.§?0§);
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop44;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr696:
                                                                                                                                                                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr706:
                                                                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr710:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr714:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc3_.§,M§();
                                                                                                                                                                                                                                                                                                               do
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc4_.§,M§();
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(!_loc17_);
                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                               if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr824);
                                                                                                                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr891);
                                                                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            return b2Math.§>8§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                                                                            addr723:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr887);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr889);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr710);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr891);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr710);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr886);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr888);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr890);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr706);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr696);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr714);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                                                                            addr765:
                                                                                                                                                                                                                                                            if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc4_.§]m§);
                                                                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop31;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc17_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  §§goto(addr817);
                                                                                                                                                                                                                                                                  continue loop51;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop15;
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
                                                                                                                                                                                             continue loop22;
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
                                                                                                                                             §§goto(addr723);
                                                                                                                                          }
                                                                                                                                          §§goto(addr548);
                                                                                                                                       }
                                                                                                                                       §§goto(addr545);
                                                                                                                                    }
                                                                                                                                    §§goto(addr536);
                                                                                                                                 }
                                                                                                                                 §§goto(addr496);
                                                                                                                              }
                                                                                                                              §§goto(addr487);
                                                                                                                           }
                                                                                                                           §§goto(addr496);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr487);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr478);
                                                                                                            }
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         §§goto(addr454);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                 }
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc17_ || _loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    while(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       continue loop13;
                                                                                       if(!(_loc17_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       addr269:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        break loop4;
                                                                     }
                                                                  }
                                                                  §§push(_loc8_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        §§goto(addr360);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  break loop4;
                                                               }
                                                               addr337:
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                }
                                             }
                                             §§goto(addr371);
                                          }
                                       }
                                    }
                                    §§goto(addr256);
                                 }
                              }
                              _loc6_ = §§pop();
                              if(!(_loc18_ && param1))
                              {
                                 addr155:
                                 §§push(_loc7_);
                                 if(_loc17_)
                                 {
                                    §§goto(addr159);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr94);
               }
               §§goto(addr89);
            }
            §§goto(addr76);
         }
         addr27:
         return true;
      }
   }
}
