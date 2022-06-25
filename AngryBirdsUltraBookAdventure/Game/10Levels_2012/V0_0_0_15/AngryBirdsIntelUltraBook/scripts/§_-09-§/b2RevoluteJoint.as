package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Mat33;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-Yp§.b2Vec3;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-0EI§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2RevoluteJoint))
         {
            §_-0EI§ = new b2Vec2();
         }
      }
      
      private var §_-2d§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-Ra§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-MK§:b2Vec3;
      
      private var §_-j§:Number;
      
      private var §_-5W§:b2Mat33;
      
      private var §_-04m§:Number;
      
      private var §_-sv§:Boolean;
      
      private var §_-oZ§:Number;
      
      private var §_-09I§:Number;
      
      private var §_-E5§:Boolean;
      
      private var §_-nt§:Number;
      
      private var §_-0B8§:Number;
      
      private var §_-05x§:Number;
      
      private var §_-Vb§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-2d§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        continue loop1;
                        addr146:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        this.§_-j§ = 0;
                        while(true)
                        {
                           this.§_-0B8§ = param1.§_-Ch§;
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§_-05x§ = param1.§_-KH§;
                                 loop19:
                                 while(true)
                                 {
                                    this.§_-oZ§ = param1.§_-dv§;
                                    addr96:
                                    addr166:
                                    while(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          this.§_-09I§ = param1.motorSpeed;
                                          while(true)
                                          {
                                             this.§_-E5§ = param1.§_-6W§;
                                             continue loop19;
                                          }
                                          addr90:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.m_localAnchor1 = new b2Vec2();
                                             continue loop2;
                                          }
                                          addr238:
                                       }
                                    }
                                    while(_loc3_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       this.§_-nt§ = param1.§_-IW§;
                                       while(true)
                                       {
                                          this.§_-MK§.§_-el§();
                                          addr139:
                                          while(_loc3_ || this)
                                          {
                                             §§goto(addr146);
                                          }
                                       }
                                       §§goto(addr96);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§_-5W§ = new b2Mat33();
                              §§goto(addr207);
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
         §§goto(addr119);
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
         if(_loc2_ || this)
         {
            §§push(this.§_-MK§.x);
            if(!(_loc3_ && param1))
            {
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         addr56:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            addr64:
            §§push(§§pop() * this.§_-MK§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§_-MK§.z;
         }
      }
      
      public function §_-yj§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::_-c9.m_sweep.a - b2internal::_-0FB.m_sweep.a);
         if(_loc2_)
         {
            return §§pop() - this.§_-nt§;
         }
      }
      
      public function §_-bV§() : Number
      {
         return b2internal::_-c9.m_angularVelocity - b2internal::_-0FB.m_angularVelocity;
      }
      
      public function §_-sE§() : Boolean
      {
         return this.§_-E5§;
      }
      
      public function §_-6P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-E5§ = param1;
         }
      }
      
      public function §_-IV§() : Number
      {
         return this.§_-0B8§;
      }
      
      public function §_-7W§() : Number
      {
         return this.§_-05x§;
      }
      
      public function §_-Hl§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§_-0B8§ = param1;
            do
            {
               this.§_-05x§ = param2;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §_-FT§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            b2internal::_-0FB.SetAwake(true);
         }
         do
         {
            b2internal::_-c9.SetAwake(true);
         }
         while(!_loc2_);
         
         return this.§_-sv§;
      }
      
      public function §_-060§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-sv§ = param1;
         }
      }
      
      public function §_-02d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::_-0FB.SetAwake(true);
         }
         do
         {
            b2internal::_-c9.SetAwake(true);
            do
            {
               this.§_-09I§ = param1;
            }
            while(_loc2_);
            
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §_-be§() : Number
      {
         return this.§_-09I§;
      }
      
      public function §_-jK§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-oZ§ = param1;
         }
      }
      
      public function §_-R9§() : Number
      {
         return this.§_-oZ§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:* = NaN;
         var _loc7_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::_-0FB;
         _loc3_ = b2internal::_-c9;
         if(!(_loc17_ && this))
         {
            §§push(this.§_-sv§);
            if(!(_loc17_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc17_)
               {
                  if(!§§pop())
                  {
                     if(_loc18_ || _loc2_)
                     {
                        addr70:
                        §§pop();
                        if(!_loc17_)
                        {
                           addr73:
                           §§push(this.§_-E5§);
                           if(!(_loc17_ && _loc2_))
                           {
                              addr83:
                              if(§§pop())
                              {
                              }
                           }
                           §§goto(addr83);
                        }
                        _loc4_ = _loc2_.m_xf.R;
                        §§push(this.m_localAnchor1.x);
                        if(_loc18_)
                        {
                           §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                           if(_loc18_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(_loc18_ || _loc3_)
                        {
                           §§push(this.m_localAnchor1.y);
                           if(!_loc17_)
                           {
                              §§push(_loc2_.m_sweep.localCenter.y);
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              addr267:
                           }
                           loop1:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_.col1);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc17_)
                                             {
                                                §§push(_loc4_.col2);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr250:
                                                   addr197:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr251:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr252:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr253:
                                                            while(_loc18_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.col2);
                                                      if(_loc17_ && this)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(_loc18_ || this)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc18_)
                                                               {
                                                                  addr224:
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr226:
                                                                        loop15:
                                                                        while(_loc18_ || this)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           while(_loc18_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc18_ || _loc2_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr133:
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              _loc4_ = _loc3_.m_xf.R;
                                                                              §§push(this.m_localAnchor2.x);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr288:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc8_:* = §§pop();
                                                                                 §§push(this.m_localAnchor2.y);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr302:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc9_:* = §§pop();
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       §§push(_loc4_.col1);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(_loc4_.col2);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr441:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         addr442:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr443:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr444:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.col2);
                                                                                                         if(_loc17_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr402:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               while(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc17_ && this)
                                                                                                                  {
                                                                                                                     break loop29;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop31:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc17_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop31;
                                                                                                                           addr347:
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           if(!(_loc18_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_.§_-03A§);
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                              break loop31;
                                                                                                                           }
                                                                                                                           addr446:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break;
                                                                                                                        addr423:
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc3_.§_-03A§);
                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                  §§push(_loc2_.§_-Dz§);
                                                                                                                  if(!(_loc17_ && this))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc3_.§_-Dz§);
                                                                                                                  if(!(_loc17_ && this))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc13_:* = §§pop();
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     §§push(this.§_-5W§);
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().col1);
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop38:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr1695:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc17_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr1712:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop44:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-5W§);
                                                                                                                                                               loop46:
                                                                                                                                                               for(; _loc18_; if(!(_loc18_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },§§goto(addr1306))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().col2);
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           loop48:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 loop49:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr1541:
                                                                                                                                                                                    if(!(_loc18_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop149:
                                                                                                                                                                                       while(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1563:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                addr1564:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1563:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop76:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr1566:
                                                                                                                                                                                             while(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                loop78:
                                                                                                                                                                                                while(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§_-5W§);
                                                                                                                                                                                                   loop79:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().col3);
                                                                                                                                                                                                            loop80:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1447:
                                                                                                                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1463:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                addr1464:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr1465:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§_-5W§);
                                                                                                                                                                                                                                                      addr1379:
                                                                                                                                                                                                                                                      addr1581:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().col1);
                                                                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§_-5W§);
                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().col3.x);
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop38;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§_-5W§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                                                                                                                        addr1470:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                                                                              if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1487:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 loop148:
                                                                                                                                                                                                                                                                                 while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop149;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1527:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop76;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1538:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop76;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1541);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop49;
                                                                                                                                                                                                                                                                                                         addr1538:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1644:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         break loop148;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1563);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1564);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1641:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                                                                break loop149;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1527);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1640:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1641);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1563);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                    addr1646:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§_-5W§);
                                                                                                                                                                                                                                                                                       break loop79;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1487:
                                                                                                                                                                                                                                                                                 addr1645:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1563);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1487);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1292:
                                                                                                                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                                                                               addr1587:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1587);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1585:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1585);
                                                                                                                                                                                                                                                         §§push(this.§_-5W§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop36;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1463:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1617:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1618:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          addr1619:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                             break loop78;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1457:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                    if(!(_loc17_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       break loop80;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1618);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1606:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1464);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1463);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1619);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1447);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1597:
                                                                                                                                                                                                               addr1306:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1606);
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1619);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().col3);
                                                                                                                                                                                                               if(_loc17_ && _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                               if(!(_loc17_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1337:
                                                                                                                                                                                                                              §§pop().z = §§pop() + §§pop();
                                                                                                                                                                                                                              loop87:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + _loc13_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§_-04m§ = §§pop() / §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§_-sv§);
                                                                                                                                                                                                                                    loop89:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() == false)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§_-j§ = 0;
                                                                                                                                                                                                                                             addr1261:
                                                                                                                                                                                                                                             while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1465);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1258:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§_-E5§);
                                                                                                                                                                                                                                          loop93:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.m_sweep.a);
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc2_.m_sweep.a);
                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§_-nt§);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1247:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1249:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop102:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr1251:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                                                                         addr1252:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(b2Math);
                                                                                                                                                                                                                                                            §§push(this.§_-05x§);
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - this.§_-0B8§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop().§_-010§(§§pop()));
                                                                                                                                                                                                                                                            addr1200:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(2 * b2Settings.b2_angularSlop);
                                                                                                                                                                                                                                                                  loop103:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1219:
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§_-Vb§ = b2internal::_-z3;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1261);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                                                                           loop104:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§_-0B8§);
                                                                                                                                                                                                                                                                              loop105:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1179:
                                                                                                                                                                                                                                                                                    addr1177:
                                                                                                                                                                                                                                                                                    if(this.§_-Vb§ != b2internal::_-D3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1181:
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop87;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1187:
                                                                                                                                                                                                                                                                                          §§push(this.§_-MK§);
                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1375:
                                                                                                                                                                                                                                                                                       loop86:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§_-5W§);
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1292);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1379);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop79;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(§§pop().col2);
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop86;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1538);
                                                                                                                                                                                                                                                                                             addr1342:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1470);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1618);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1165:
                                                                                                                                                                                                                                                                                    this.§_-Vb§ = b2internal::_-D3;
                                                                                                                                                                                                                                                                                    break loop103;
                                                                                                                                                                                                                                                                                    addr1169:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1119:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop104;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§_-05x§);
                                                                                                                                                                                                                                                                                       if(_loc17_ && _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop105;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop103;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          this.§_-Vb§ = b2internal::_-019;
                                                                                                                                                                                                                                                                                          addr1090:
                                                                                                                                                                                                                                                                                          §§push(this.§_-MK§);
                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().z = §§pop();
                                                                                                                                                                                                                                                                                             addr1098:
                                                                                                                                                                                                                                                                                             break loop103;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop105;
                                                                                                                                                                                                                                                                                          addr1105:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1147:
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§_-Vb§);
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(§§pop() != b2internal::_-Z5)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1163:
                                                                                                                                                                                                                                                                                                this.§_-MK§.z = 0;
                                                                                                                                                                                                                                                                                                addr1164:
                                                                                                                                                                                                                                                                                                addr1160:
                                                                                                                                                                                                                                                                                                addr1162:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             this.§_-Vb§ = b2internal::_-Z5;
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop103;
                                                                                                                                                                                                                                                                                                addr1224:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop103;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1258);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1342);
                                                                                                                                                                                                                                                                                                §§goto(addr1147);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1405:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1164);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1247);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1179);
                                                                                                                                                                                                                                                                                 §§goto(addr1379);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().z = §§pop();
                                                                                                                                                                                                                                                                              addr1189:
                                                                                                                                                                                                                                                                              §§goto(addr1165);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1224);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1249);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§_-0F7§);
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop89;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop93;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr494:
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                                  addr1043:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop102;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1592);
                                                                                                                                                                                                                                                addr1229:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§_-Vb§ = b2internal::_-019;
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1085:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1043);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1617);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1616:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1457);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1618);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1463);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1464);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1337);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1616);
                                                                                                                                                                                                               §§goto(addr1447);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1580:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1581);
                                                                                                                                                                                                         continue loop79;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1597);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1580);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1639:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1640);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1644);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1564);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1639);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1645);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1696:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr1711:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1712);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1696);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1712);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1712);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1711);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1695);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1712);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr828);
                                                                                                               }
                                                                                                               §§goto(addr443);
                                                                                                               addr402:
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                         if(_loc17_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr340:
                                                                                                         if(_loc18_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr445);
                                                                                             }
                                                                                             §§goto(addr443);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr224:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr251);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  §§goto(addr257);
                                                               }
                                                               addr256:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr267);
                                                            }
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr250);
                                                }
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr252);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr236);
                     }
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr73);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
