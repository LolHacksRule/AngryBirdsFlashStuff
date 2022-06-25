package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-Mz§:b2Vec2;
      
      private var §_-FO§:Number;
      
      private var §_-x6§:Number;
      
      private var §_-v-§:Number;
      
      private var §_-D5§:Number;
      
      private var §_-MK§:Number;
      
      private var §_-5W§:Number;
      
      private var §_-63§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(_loc5_)
               {
                  this.§_-Mz§ = new b2Vec2();
                  loop8:
                  for(; !(_loc6_ && _loc2_); if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr50))
                  {
                     this.§_-MK§ = 0;
                     loop9:
                     for(; !_loc6_; this.§_-v-§ = 0,do
                     {
                        this.§_-D5§ = 0;
                     }
                     while(!_loc5_);
                     ,if(_loc5_ || param1)
                     {
                        continue loop8;
                     })
                     {
                        addr69:
                        if(!_loc6_)
                        {
                           continue;
                        }
                        addr122:
                        while(true)
                        {
                           this.§_-63§ = param1.length;
                           break loop9;
                           §§goto(addr69);
                        }
                     }
                     loop6:
                     while(_loc5_ || this)
                     {
                        if(!_loc6_)
                        {
                           this.§_-FO§ = param1.§true §;
                           do
                           {
                              this.§_-x6§ = param1.§_-9r§;
                              continue loop8;
                           }
                           while(!(_loc5_ || param1));
                           
                           return;
                        }
                        addr157:
                        while(true)
                        {
                           super(param1);
                           addr151:
                           while(true)
                           {
                              this.m_localAnchor1.SetV(param1.§_-F6§);
                              break loop6;
                           }
                        }
                     }
                     while(_loc5_ || _loc2_)
                     {
                        this.m_localAnchor2.SetV(param1.§_-0Bf§);
                        §§goto(addr122);
                        §§goto(addr106);
                     }
                     addr106:
                     §§goto(addr151);
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§_-MK§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr37:
                  §§push(this.§_-Mz§.x);
                  if(_loc2_ || _loc3_)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_ && param1)
                     {
                     }
                     §§goto(addr77);
                  }
                  §§push(this.§_-MK§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_)
                     {
                        §§push(this.§_-Mz§.y);
                     }
                     §§goto(addr77);
                  }
                  addr77:
                  return new §§pop().b2Vec2(§§pop(),§§pop());
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr58);
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-8C§() : Number
      {
         return this.§_-63§;
      }
      
      public function §_-6z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-63§ = param1;
         }
      }
      
      public function §_-Am§() : Number
      {
         return this.§_-FO§;
      }
      
      public function §_-9W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-FO§ = param1;
         }
      }
      
      public function §_-U8§() : Number
      {
         return this.§_-x6§;
      }
      
      public function §_-6H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-x6§ = param1;
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
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::_-0FB;
         _loc5_ = b2internal::_-c9;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc20_ && this))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_ || param1)
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc20_)
            {
               §§push(this.m_localAnchor1.y);
               loop0:
               while(true)
               {
                  §§push(_loc4_.m_sweep.localCenter.y);
                  addr238:
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
                           addr241:
                           while(true)
                           {
                              §§push(_loc2_.col1);
                              addr189:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr190:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc20_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(_loc2_.col2);
                                          addr201:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr202:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr203:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                          }
                                       }
                                       addr199:
                                    }
                                    addr204:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_)
                                       {
                                          continue loop0;
                                       }
                                       addr215:
                                       while(_loc21_ || this)
                                       {
                                          if(_loc20_ && this)
                                          {
                                             continue loop2;
                                          }
                                          _loc3_ = §§pop();
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            loop13:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.col1);
                  if(!_loc20_)
                  {
                     §§push(§§pop().y);
                     loop15:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc20_)
                        {
                           if(_loc21_ || this)
                           {
                              if(_loc21_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc21_ || param1)
                                 {
                                    §§push(_loc2_.col2);
                                    if(_loc21_ || _loc3_)
                                    {
                                       §§push(§§pop().y);
                                       if(!_loc20_)
                                       {
                                          addr156:
                                          §§push(_loc7_);
                                          if(!_loc20_)
                                          {
                                             addr160:
                                             §§push(§§pop() * §§pop());
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc21_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      addr168:
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            if(_loc21_ || _loc2_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               continue loop13;
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§push(_loc3_);
                                                         addr185:
                                                         break;
                                                         if(!(_loc20_ && _loc2_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         if(_loc21_)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                      §§goto(addr215);
                                                      addr168:
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr238);
                                          }
                                          break;
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr203);
                  }
                  break;
               }
               §§goto(addr189);
            }
         }
         §§goto(addr77);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-0FB;
         var _loc4_:b2Body = b2internal::_-c9;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc19_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc18_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc18_)
            {
               §§push(_loc5_);
               if(_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc19_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc19_)
                     {
                        addr84:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc18_ || param1)
                     {
                        addr94:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc18_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!(_loc19_ && _loc3_))
                        {
                           §§push(_loc5_);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc19_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc18_ || _loc2_)
                                 {
                                    addr126:
                                    §§push(§§pop() + §§pop() * _loc6_);
                                    if(!(_loc19_ && _loc2_))
                                    {
                                       addr134:
                                       §§push(Number(§§pop()));
                                       if(_loc18_)
                                       {
                                          addr137:
                                          _loc6_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                addr148:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc5_ = §§pop();
                                             addr150:
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(_loc18_ || _loc3_)
                                                {
                                                   addr172:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                   if(_loc18_)
                                                   {
                                                      addr186:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && _loc2_))
                                                               {
                                                                  addr290:
                                                                  §§push(_loc2_.col2);
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    addr308:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr309:
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.col1);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc18_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc19_ && _loc3_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!(_loc19_ && this))
                                                                                                   {
                                                                                                      addr327:
                                                                                                      §§goto(addr328);
                                                                                                      §§push(_loc6_);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.col2);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc9_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr266:
                                                                                                                  }
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  while(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           break loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               addr333:
                                                                                                               var _loc10_:* = §§pop();
                                                                                                               §§push(_loc3_.§_-kZ§.y);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc5_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     addr358:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                  §§push(_loc4_.§_-kZ§.x);
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.m_angularVelocity);
                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc4_.§_-kZ§.y);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.m_angularVelocity);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc8_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc13_:* = §§pop();
                                                                                                                  §§push(this.§_-Mz§.x);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(this.§_-Mz§.y);
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr472:
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr477:
                                                                                                                                       §§push(§§pop() * (§§pop() - _loc11_));
                                                                                                                                    }
                                                                                                                                    §§goto(addr477);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr481:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc14_:* = §§pop();
                                                                                                                              §§push(this.§_-5W§);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-D5§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr515:
                                                                                                                                             §§push(this.§_-v-§);
                                                                                                                                             if(!(_loc19_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr524:
                                                                                                                                                §§push(§§pop() * this.§_-MK§);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr532:
                                                                                                                                             var _loc15_:Number = §§pop();
                                                                                                                                             addr531:
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§_-MK§);
                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + _loc15_);
                                                                                                                                                }
                                                                                                                                                §§pop().§_-MK§ = §§pop();
                                                                                                                                             }
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§_-Mz§.x);
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc16_:* = §§pop();
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§_-Mz§.y);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr573:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc17_:* = §§pop();
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§_-kZ§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§_-kZ§);
                                                                                                                                                      addr849:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         addr850:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§_-03A§);
                                                                                                                                                            addr852:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               addr853:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr854:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr855:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr714:
                                                                                                                                                      if(_loc19_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc4_.§_-kZ§);
                                                                                                                                                      loop27:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            loop28:
                                                                                                                                                            for(; !_loc19_; if(!(_loc18_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },§§pop().y = §§pop(),do
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               §§push(_loc4_.m_angularVelocity);
                                                                                                                                                               if(_loc19_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc4_.§_-Dz§);
                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!(_loc19_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr621:
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr626:
                                                                                                                                                                              §§push(§§pop() - §§pop() * _loc16_);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr626);
                                                                                                                                                                        }
                                                                                                                                                                        addr628:
                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr626);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr621);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr628);
                                                                                                                                                            }
                                                                                                                                                            while(§§pop().m_angularVelocity = §§pop(), _loc19_);
                                                                                                                                                            ,if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr751);
                                                                                                                                                            },if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                            },addr856:,while(!(_loc19_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                               §§push(_loc4_.§_-kZ§);
                                                                                                                                                            },while(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.§_-Dz§);
                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr803:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr796:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr799:
                                                                                                                                                                                 §§push(§§pop() * _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                           §§goto(addr805);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr799);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr796);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr803);
                                                                                                                                                            },addr805:,while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr816);
                                                                                                                                                            },addr837:)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.§_-03A§);
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           loop30:
                                                                                                                                                                           while(_loc18_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    loop32:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr751:
                                                                                                                                                                                       loop33:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.§_-kZ§);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§_-kZ§);
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.§_-03A§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                      break loop30;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr833:
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr828:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr707:
                                                                                                                                                                                          addr816:
                                                                                                                                                                                          while(!(_loc19_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr714);
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr828);
                                                                                                                                                                                             §§goto(addr707);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr854);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr852);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc18_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc19_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr694);
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr854);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr853);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              break loop29;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr833);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        break loop28;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr850);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr852);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr855);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               §§goto(addr837);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr849);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr850);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr856);
                                                                                                                                             }
                                                                                                                                             §§goto(addr573);
                                                                                                                                          }
                                                                                                                                          §§goto(addr532);
                                                                                                                                       }
                                                                                                                                       §§goto(addr524);
                                                                                                                                    }
                                                                                                                                    §§goto(addr515);
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              §§goto(addr532);
                                                                                                                           }
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                        §§goto(addr477);
                                                                                                                     }
                                                                                                                     §§goto(addr472);
                                                                                                                  }
                                                                                                                  §§goto(addr481);
                                                                                                               }
                                                                                                               §§goto(addr358);
                                                                                                               addr262:
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr328:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop3;
                                                                                                addr319:
                                                                                                break loop2;
                                                                                             }
                                                                                             §§goto(addr262);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    addr308:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§push(_loc3_.m_angularVelocity);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr94);
               }
               §§goto(addr84);
            }
            §§goto(addr94);
         }
         §§goto(addr47);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(_loc18_)
         {
            if(this.§_-FO§ > 0)
            {
               if(!(_loc17_ && _loc3_))
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:b2Body = b2internal::_-0FB;
            var _loc4_:b2Body = b2internal::_-c9;
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
                  if(!_loc17_)
                  {
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc2_.col1.x);
                  if(_loc18_)
                  {
                     §§push(_loc5_);
                     if(!(_loc17_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_)
                        {
                           §§push(_loc2_.col2.x);
                           if(_loc18_ || this)
                           {
                              addr100:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc18_ || _loc3_)
                           {
                           }
                           addr111:
                           var _loc7_:* = §§pop();
                           if(_loc18_)
                           {
                              §§push(_loc2_.col1.y);
                              if(_loc18_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_ || param1)
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(!_loc17_)
                                       {
                                          addr135:
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc17_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                             addr143:
                                             _loc6_ = §§pop();
                                             addr161:
                                             if(!(_loc17_ && this))
                                             {
                                                §§push(_loc7_);
                                                if(_loc18_ || this)
                                                {
                                                   addr159:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc18_ || this)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(!_loc17_)
                                                {
                                                   addr183:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                   if(!(_loc17_ && param1))
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
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc17_ && this))
                                                            {
                                                               §§push(_loc2_.col2);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr319:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     addr320:
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 addr243:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col1);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc17_ && _loc2_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          break loop3;
                                                                                       }
                                                                                       addr375:
                                                                                       addr375:
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc18_ || _loc2_))
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr234:
                                                                                 continue loop4;
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(_loc4_.m_sweep.c.x);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             break loop4;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr243);
                                                                                    }
                                                                                    addr356:
                                                                                    §§push(_loc3_.m_sweep.c.x);
                                                                                    if(!(_loc17_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                       addr385:
                                                                                       var _loc10_:* = Number(§§pop());
                                                                                       addr384:
                                                                                       §§push(_loc4_.m_sweep.c.y);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!(_loc17_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(_loc3_.m_sweep.c.y);
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   addr432:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_ || _loc3_)
                                                                                                   {
                                                                                                      addr427:
                                                                                                      §§push(_loc6_);
                                                                                                   }
                                                                                                   var _loc11_:* = §§pop();
                                                                                                   var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                   if(!(_loc17_ && this))
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc17_ && _loc2_))
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr491:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              addr515:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr523:
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 addr524:
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    addr534:
                                                                                                                                    §§push(§§pop() - this.§_-63§);
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr542:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr542);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(b2Math);
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§push(§§pop().§_-ZK§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    addr577:
                                                                                                                                    §§push(this.§_-5W§);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr581:
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(!(_loc17_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr589:
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr593:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          this.§_-Mz§.Set(_loc10_,_loc11_);
                                                                                                                                       }
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§_-Mz§.x);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc15_:* = §§pop();
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§_-Mz§.y);
                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                          {
                                                                                                                                             addr632:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc16_:* = §§pop();
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                   loop12:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      loop13:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§_-03A§);
                                                                                                                                                            loop15:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop17:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop18:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        loop19:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                                                                           loop20:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                              loop21:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                                                                 loop22:
                                                                                                                                                                                 while(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    loop23:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       loop24:
                                                                                                                                                                                       while(!(_loc17_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.§_-03A§);
                                                                                                                                                                                          loop25:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             loop26:
                                                                                                                                                                                             while(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                                                                         loop30:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                                                                            addr919:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc3_.§_-Dz§);
                                                                                                                                                                                                                  loop32:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        loop33:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 addr938:
                                                                                                                                                                                                                                 addr718:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr939:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc17_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr752:
                                                                                                                                                                                                                                    addr752:
                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr755:
                                                                                                                                                                                                                                       §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().a = §§pop();
                                                                                                                                                                                                                                          loop53:
                                                                                                                                                                                                                                          while(_loc18_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc17_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop54:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_.§_-da§();
                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc4_.§_-da§();
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop54;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr942:
                                                                                                                                                                                                                                                      addr942:
                                                                                                                                                                                                                                                      loop52:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_ && _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr862:
                                                                                                                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr666:
                                                                                                                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr866:
                                                                                                                                                                                                                                                            while(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                                                                               §§goto(addr666);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr780:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr796:
                                                                                                                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc4_.§_-03A§);
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr819:
                                                                                                                                                                                                                                                                              if(_loc18_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr828:
                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr837:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr840:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                continue loop52;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr910:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                             break loop53;
                                                                                                                                                                                                                                                                                             §§goto(addr840);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                          addr889:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                                                                       §§goto(addr828);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop15;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr837);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr887:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr889);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr840);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                        §§goto(addr796);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                     addr879:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr887);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(_loc18_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                                  addr871:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr879);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr869:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr871);
                                                                                                                                                                                                                                                            §§goto(addr862);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                                                                         §§goto(addr869);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().a = §§pop();
                                                                                                                                                                                                                                                         addr943:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr866);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return b2Math.§_-010§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                addr776:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr943);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr780);
                                                                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr942);
                                                                                                                                                                                                                                       §§goto(addr943);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr939);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr755);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr940:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr941:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr942);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop12;
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
                                                                                                                                          §§goto(addr776);
                                                                                                                                       }
                                                                                                                                       §§goto(addr632);
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                 }
                                                                                                                                 §§goto(addr589);
                                                                                                                              }
                                                                                                                              §§goto(addr581);
                                                                                                                           }
                                                                                                                           §§goto(addr577);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr534);
                                                                                                                  }
                                                                                                                  §§goto(addr524);
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                            }
                                                                                                            §§goto(addr523);
                                                                                                         }
                                                                                                         §§goto(addr534);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr491);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§goto(addr432);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    break loop3;
                                                                                    addr241:
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(_loc8_);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              addr348:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr384);
                                                                           }
                                                                           break;
                                                                           addr329:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr159);
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr161);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr111);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr111);
               }
               §§goto(addr72);
            }
            §§goto(addr58);
         }
         addr33:
         return true;
      }
   }
}
