package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §^!^§:b2Vec2;
      
      private var §<9§:Number;
      
      private var §=Z§:Number;
      
      private var §&!i§:Number;
      
      private var §]C§:Number;
      
      private var §+!P§:Number;
      
      private var §#K§:Number;
      
      private var §!!d§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.m_localAnchor1 = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            loop1:
            while(true)
            {
               this.§^!^§ = new b2Vec2();
               while(true)
               {
                  super(param1);
                  continue loop0;
                  addr124:
                  loop4:
                  for(; _loc5_ || _loc3_; if(_loc6_ && _loc2_)
                  {
                     continue;
                  },this.§+!P§ = 0,§§goto(addr62))
                  {
                     this.m_localAnchor2.SetV(param1.§^G§);
                     loop5:
                     while(true)
                     {
                        this.§!!d§ = param1.length;
                        while(!_loc6_)
                        {
                           this.§<9§ = param1.§ $§;
                           loop7:
                           while(true)
                           {
                              this.§=Z§ = param1.§7B§;
                              addr87:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop7;
                              }
                              continue loop4;
                           }
                           while(!(_loc6_ && _loc2_))
                           {
                              continue loop5;
                           }
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
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§+!P§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§^!^§.x);
                  if(!_loc3_)
                  {
                     addr63:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(this.§+!P§);
                        if(_loc2_)
                        {
                           §§goto(addr82);
                        }
                        addr82:
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           addr78:
                           §§push(this.§^!^§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr78);
               }
               §§goto(addr63);
            }
            §§goto(addr82);
         }
         §§goto(addr63);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!E§() : Number
      {
         return this.§!!d§;
      }
      
      public function §?C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!d§ = param1;
         }
      }
      
      public function §8F§() : Number
      {
         return this.§<9§;
      }
      
      public function §]!#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<9§ = param1;
         }
      }
      
      public function §]J§() : Number
      {
         return this.§=Z§;
      }
      
      public function §7!w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=Z§ = param1;
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
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::^^;
         _loc5_ = b2internal::7!<;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc20_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               addr67:
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
                                 if(_loc21_)
                                 {
                                    continue loop0;
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop12:
                                       while(!(_loc20_ && _loc3_))
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(_loc2_.col1);
                                             if(_loc20_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc21_)
                                             {
                                                if(!(_loc21_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push(_loc6_);
                                                if(_loc21_ || _loc3_)
                                                {
                                                   if(!(_loc20_ && this))
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col2);
                                                               if(!_loc20_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(_loc7_);
                                                                     if(_loc20_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr161:
                                                                        loop16:
                                                                        while(!(_loc20_ && _loc2_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc21_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc20_ && _loc2_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                                 if(!(_loc21_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc21_ || _loc2_))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 while(false)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 _loc2_ = _loc5_.m_xf.R;
                                                                                 §§push(this.m_localAnchor2.x);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc8_:* = §§pop();
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(this.m_localAnchor2.y);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_.m_sweep.localCenter.y);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.col1);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         loop28:
                                                                                                         while(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.col2);
                                                                                                               addr512:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr513:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     addr514:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr515:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           addr519:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr443:
                                                                                                               if(!(_loc21_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc2_.col2);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr475:
                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    continue loop28;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc21_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop37:
                                                                                                                                    for(; _loc21_; if(!(_loc21_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },if(_loc20_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    },_loc8_ = §§pop(),§§goto(addr397))
                                                                                                                                    {
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       loop38:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!(_loc21_ || param1))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             addr441:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr443);
                                                                                                                                                }
                                                                                                                                                §§goto(addr519);
                                                                                                                                             }
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          continue loop37;
                                                                                                                                          addr397:
                                                                                                                                          loop39:
                                                                                                                                          for(; !(_loc20_ && _loc3_); while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc20_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             §§push(this.§^!^§);
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr282);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr317);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr361);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr316);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr344);
                                                                                                                                                }
                                                                                                                                                §§goto(addr343);
                                                                                                                                             }
                                                                                                                                             §§goto(addr341);
                                                                                                                                          },§§goto(addr362))
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             loop40:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§^!^§);
                                                                                                                                                addr341:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                                                                   addr343:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      addr344:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     addr356:
                                                                                                                                                                     addr282:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              addr360:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr359:
                                                                                                                                                                        }
                                                                                                                                                                        addr361:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           addr362:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop39;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                     if(!(_loc21_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr317:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr316:
                                                                                                                                                                              §§push(§§pop() - _loc7_);
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(Math.sqrt(this.§^!^§.x * this.§^!^§.x + this.§^!^§.y * this.§^!^§.y)));
                                                                                                                                                                                       break loop38;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr360);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr362);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr316);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr356);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr362);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr359);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr362);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 addr551:
                                                                                                                                 var _loc10_:*;
                                                                                                                                 §§push(_loc10_ = §§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(b2Settings.b2_linearSlop);
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§^!^§);
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§pop().§;a§(1 / _loc10_);
                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr579:
                                                                                                                                                §§pop().§%&§();
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc21_ || this)
                                                                                                                                          {
                                                                                                                                             addr588:
                                                                                                                                             §§push(this.§^!^§.y);
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc20_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr613:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr621:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc11_:* = §§pop();
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§^!^§.y);
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               addr637:
                                                                                                                                                               §§push(§§pop() * this.§^!^§.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc21_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr650:
                                                                                                                                                               var _loc12_:Number = §§pop();
                                                                                                                                                               §§push(_loc4_.§1!X§);
                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.§^!B§);
                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr688:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.§1!X§);
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr703:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.§^!B§);
                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr720:
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc21_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr748:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * _loc12_);
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr751:
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr748);
                                                                                                                                                                                       }
                                                                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1497:
                                                                                                                                                                                                   §§push(1 / _loc13_);
                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1505:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§#K§ = §§pop();
                                                                                                                                                                                                loop52:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§<9§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§!!d§);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     addr1377:
                                                                                                                                                                                                                     if(_loc20_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc21_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(param1.§6c§);
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.§6c§);
                                                                                                                                                                                                                                             if(_loc21_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§&!i§ = §§pop();
                                                                                                                                                                                                                                       while(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§&!i§);
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1311:
                                                                                                                                                                                                                                                   §§push(1 / this.§&!i§);
                                                                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1330:
                                                                                                                                                                                                                                                         §§pop().§&!i§ = §§pop();
                                                                                                                                                                                                                                                         loop76:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(param1.§6c§);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc21_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1285:
                                                                                                                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1288:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1298:
                                                                                                                                                                                                                                                                           §§push(§§pop() * this.§&!i§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().§]C§ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + this.§&!i§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§#K§ = §§pop();
                                                                                                                                                                                                                                                                           continue loop76;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1300:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1298);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1288);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1285);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1325:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1330);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1329:
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1329);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1330);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1325);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1311);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1452:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(2);
                                                                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1418);
                                                                                                                                                                                                                                             §§push(§§pop() * this.§#K§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1437);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1433);
                                                                                                                                                                                                                              if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1122);
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                              §§goto(addr1452);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1476);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1488);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc21_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1449);
                                                                                                                                                                                                         §§push(this.§<9§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1505);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1240);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr748);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr751);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr703);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr748);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr688);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr720);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr751);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr650);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr637);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr650);
                                                                                                                                                }
                                                                                                                                                §§goto(addr621);
                                                                                                                                             }
                                                                                                                                             §§goto(addr613);
                                                                                                                                             §§push(§§pop() * this.§^!^§.x);
                                                                                                                                          }
                                                                                                                                          §§goto(addr621);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(this.§^!^§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr579);
                                                                                                                                    }
                                                                                                                                    §§goto(addr613);
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                              §§goto(addr513);
                                                                                                                           }
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                        §§goto(addr514);
                                                                                                                     }
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               §§goto(addr512);
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
                                                                                 §§goto(addr336);
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr160:
                                                                  }
                                                                  §§goto(addr160);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr198:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc20_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            addr197:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc20_ && _loc2_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§push(_loc2_.col2);
                                                            }
                                                            addr185:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr161);
                                          }
                                          continue loop11;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr67);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::^^;
         var _loc4_:b2Body = b2internal::7!<;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!_loc18_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc19_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc19_ || _loc3_)
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!_loc18_)
               {
                  §§push(_loc5_);
                  if(_loc19_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && this))
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc19_)
                        {
                           addr90:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc18_ && _loc3_))
                        {
                           addr100:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc7_:* = §§pop();
                     if(!(_loc18_ && _loc2_))
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc19_)
                        {
                           §§push(_loc5_);
                           if(!(_loc18_ && _loc2_))
                           {
                              addr150:
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                              }
                              _loc5_ = §§pop();
                              _loc2_ = _loc4_.m_xf.R;
                              §§push(this.m_localAnchor2.x);
                              if(_loc19_ || _loc3_)
                              {
                                 §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                 if(!_loc18_)
                                 {
                                    addr173:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(_loc19_ || this)
                                    {
                                       addr192:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    if(_loc19_)
                                    {
                                       §§push(_loc2_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             §§push(_loc8_);
                                             if(_loc19_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(true)
                                                {
                                                   §§push(_loc2_.col2);
                                                   addr345:
                                                   addr384:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!(_loc19_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   addr384:
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   addr389:
                                                   if(_loc19_)
                                                   {
                                                      addr388:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc10_:* = §§pop();
                                                   §§push(_loc3_.§9!§.y);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc3_.m_angularVelocity);
                                                      if(!(_loc18_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   addr265:
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc4_.§9!§.x);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc4_.m_angularVelocity);
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         §§push(-§§pop());
                                                         if(!(_loc18_ && _loc2_))
                                                         {
                                                            addr448:
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            addr453:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc4_.§9!§.y);
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(_loc4_.m_angularVelocity);
                                                            if(!(_loc18_ && this))
                                                            {
                                                               §§push(§§pop() * _loc8_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               addr484:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            §§push(this.§^!^§.x);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(this.§^!^§.y);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr508:
                                                                              §§push(_loc13_);
                                                                              if(_loc19_ || _loc3_)
                                                                              {
                                                                                 addr518:
                                                                                 §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                 if(_loc19_ || _loc2_)
                                                                                 {
                                                                                    addr527:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr518);
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(this.§#K§);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              addr536:
                                                                              §§push(_loc14_);
                                                                              if(!(_loc18_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§]C§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr564:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       §§push(this.§&!i§);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§+!P§);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_ || param1)
                                                                                    {
                                                                                       addr572:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc15_:* = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§+!P§);
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() + _loc15_);
                                                                                       }
                                                                                       §§pop().§+!P§ = §§pop();
                                                                                    }
                                                                                    §§push(_loc15_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§^!^§.x);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr598:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc16_:* = §§pop();
                                                                                       §§push(_loc15_);
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() * this.§^!^§.y);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr614:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc17_:* = §§pop();
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(_loc3_.§9!§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.§9!§);
                                                                                                addr875:
                                                                                                addr690:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr876:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.§1!X§);
                                                                                                      addr878:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         addr879:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr880:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr881:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc18_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc4_.§9!§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc4_.§1!X§);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr726:
                                                                                                                     §§push(_loc17_);
                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr735:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr738:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ && param1)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    §§push(_loc4_.m_angularVelocity);
                                                                                                                                    if(!(_loc19_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(_loc4_.§^!B§);
                                                                                                                                    if(_loc19_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(_loc19_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr668:
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr665:
                                                                                                                                                   §§push(§§pop() * _loc16_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr668);
                                                                                                                                          }
                                                                                                                                          §§goto(addr665);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr668);
                                                                                                                                 }
                                                                                                                                 addr840:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§9!§);
                                                                                                                                    loop28:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§9!§);
                                                                                                                                       addr761:
                                                                                                                                       while(_loc19_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          loop30:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§1!X§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr802:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr803:
                                                                                                                                                                        while(!(_loc18_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           continue loop28;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                     }
                                                                                                                                                                     addr802:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr879);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               §§goto(addr726);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr868:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  break loop30;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr867:
                                                                                                                                                            addr792:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr878);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr867);
                                                                                                                                                      }
                                                                                                                                                      addr866:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr802);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr866);
                                                                                                                                                }
                                                                                                                                                addr864:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             §§goto(addr738);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             break loop35;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr856:
                                                                                                                                       while(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr864);
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                       }
                                                                                                                                       §§goto(addr875);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 §§push(_loc3_.m_angularVelocity);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.§^!B§);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr838:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr831:
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr834:
                                                                                                                                                   §§push(§§pop() * _loc16_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                             §§goto(addr840);
                                                                                                                                          }
                                                                                                                                          §§goto(addr834);
                                                                                                                                       }
                                                                                                                                       §§goto(addr831);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr838);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr769);
                                                                                                                        }
                                                                                                                        §§goto(addr868);
                                                                                                                     }
                                                                                                                     §§goto(addr792);
                                                                                                                  }
                                                                                                                  §§goto(addr880);
                                                                                                               }
                                                                                                               §§goto(addr802);
                                                                                                            }
                                                                                                            §§goto(addr735);
                                                                                                         }
                                                                                                         §§goto(addr881);
                                                                                                      }
                                                                                                      §§goto(addr803);
                                                                                                   }
                                                                                                   §§goto(addr738);
                                                                                                }
                                                                                                §§goto(addr761);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr882);
                                                                                       }
                                                                                       §§goto(addr614);
                                                                                    }
                                                                                    §§goto(addr598);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr564);
                                                                           }
                                                                           §§goto(addr572);
                                                                        }
                                                                        §§goto(addr536);
                                                                     }
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               §§goto(addr508);
                                                            }
                                                            §§goto(addr527);
                                                         }
                                                         §§goto(addr484);
                                                      }
                                                      §§goto(addr448);
                                                   }
                                                   §§goto(addr453);
                                                   if(!(_loc19_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc8_);
                                                   if(_loc19_)
                                                   {
                                                      if(!(_loc18_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        addr306:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop8;
                                                                                 addr223:
                                                                                 _loc8_ = §§pop();
                                                                                 if(!(_loc19_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(_loc3_.§9!§.x);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr366:
                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc19_ || _loc3_)
                                                                                                {
                                                                                                   addr383:
                                                                                                   §§goto(addr384);
                                                                                                   §§push(_loc6_);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr238:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr360:
                                                                                 }
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr366);
                                                                           }
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr345);
                                                            }
                                                         }
                                                         addr283:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr358:
                                                         while(true)
                                                         {
                                                            §§goto(addr359);
                                                         }
                                                      }
                                                      addr357:
                                                   }
                                                   §§goto(addr384);
                                                }
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr359);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr173);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc19_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc18_)
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc18_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc18_ && _loc3_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr90);
               }
               §§goto(addr100);
            }
            §§goto(addr67);
         }
         §§goto(addr48);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(_loc18_)
         {
            if(this.§<9§ > 0)
            {
               if(!(_loc17_ && _loc3_))
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::^^;
         var _loc4_:b2Body = b2internal::7!<;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || param1)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc17_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(_loc18_)
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!(_loc17_ && param1))
            {
               §§push(_loc5_);
               if(_loc18_ || param1)
               {
                  addr126:
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && _loc2_))
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc18_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  var _loc7_:* = §§pop();
                  if(_loc18_ || _loc3_)
                  {
                     §§push(_loc2_.col1.y);
                     if(!(_loc17_ && param1))
                     {
                        §§push(_loc5_);
                        if(_loc18_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc18_ || _loc3_)
                           {
                              addr160:
                              §§push(_loc2_.col2.y);
                              if(_loc18_)
                              {
                                 addr165:
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc17_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc18_ || _loc3_)
                                 {
                                 }
                                 addr190:
                                 _loc5_ = §§pop();
                                 _loc2_ = _loc4_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                    if(_loc18_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(!_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc9_:* = §§pop();
                                 if(!(_loc17_ && param1))
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
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_)
                                             {
                                                §§push(_loc2_.col2);
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(_loc9_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr353:
                                                         addr370:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc17_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr362:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr363:
                                                                  while(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr387:
                                                         §§push(_loc8_);
                                                         if(_loc18_)
                                                         {
                                                            break loop2;
                                                         }
                                                         addr387:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc18_)
                                                         {
                                                            addr391:
                                                            §§push(§§pop() - _loc5_);
                                                            if(!(_loc17_ && param1))
                                                            {
                                                               addr399:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         addr311:
                                                         §§push(_loc4_.m_sweep.c.y);
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            §§push(_loc9_);
                                                            if(!(_loc17_ && this))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  addr423:
                                                                  §§push(_loc3_.m_sweep.c.y);
                                                                  if(_loc18_)
                                                                  {
                                                                     addr429:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        addr438:
                                                                        §§push(§§pop() - _loc6_);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr441:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!(_loc17_ && _loc3_))
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc18_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc17_ && param1))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          addr486:
                                                                                          §§push(_loc11_);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr489:
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr505:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                   {
                                                                                                      addr513:
                                                                                                      _loc11_ = §§pop();
                                                                                                      addr514:
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc18_ || _loc3_)
                                                                                                      {
                                                                                                         addr522:
                                                                                                         addr524:
                                                                                                         §§push(§§pop() - this.§!!d§);
                                                                                                         if(_loc17_ && param1)
                                                                                                         {
                                                                                                         }
                                                                                                         addr533:
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(b2Math);
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(§§pop().§5L§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  addr567:
                                                                                                                  §§push(this.§#K§);
                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr579:
                                                                                                                        §§push(§§pop() * _loc13_);
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc14_:* = §§pop();
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     this.§^!^§.Set(_loc10_,_loc11_);
                                                                                                                  }
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§^!^§.x);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        addr611:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§^!^§.y);
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           addr632:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                           loop11:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              addr1013:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                 addr1015:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    addr1016:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr1017:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§1!X§);
                                                                                                                                          addr1019:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             addr1020:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr1021:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   addr1022:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      addr1023:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                         continue loop11;
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
                                                                                                                        §§goto(addr855);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  §§goto(addr611);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr579);
                                                                                                         }
                                                                                                         §§goto(addr567);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr533);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr522);
                                                                                             }
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          §§goto(addr505);
                                                                                       }
                                                                                       §§goto(addr514);
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                              §§goto(addr522);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                               }
                                                               §§goto(addr438);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         §§goto(addr423);
                                                         addr311:
                                                         §§push(_loc9_);
                                                         if(!(_loc18_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc17_)
                                                         {
                                                            addr322:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc17_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc17_ && _loc2_))
                                                                           {
                                                                              addr256:
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr291:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(!(_loc17_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(_loc2_.col2);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       addr376:
                                                                                       §§push(_loc3_.m_sweep.c.x);
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr391);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr311);
                                                                                 §§goto(addr256);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr387);
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     addr336:
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_)
                                                {
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr391);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr387);
                                       }
                                    }
                                 }
                                 §§goto(addr336);
                              }
                              _loc6_ = §§pop();
                              if(_loc18_ || _loc3_)
                              {
                                 addr186:
                                 §§push(_loc7_);
                                 if(!_loc17_)
                                 {
                                    §§goto(addr190);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr186);
               }
               §§push(§§pop() + §§pop());
               if(_loc18_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr126);
         }
         §§goto(addr82);
      }
   }
}
