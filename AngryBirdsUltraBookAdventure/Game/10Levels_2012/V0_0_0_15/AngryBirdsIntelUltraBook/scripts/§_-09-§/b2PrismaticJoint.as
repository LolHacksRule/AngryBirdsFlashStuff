package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Mat33;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-Yp§.b2Vec3;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-0-i§:b2Vec2;
      
      private var §_-07I§:b2Vec2;
      
      private var §_-o1§:Number;
      
      private var §_-DN§:b2Vec2;
      
      private var §_-0t§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-0Ax§:b2Mat33;
      
      private var §_-MK§:b2Vec3;
      
      private var §_-04m§:Number;
      
      private var §_-j§:Number;
      
      private var §_-Fr§:Number;
      
      private var §_-KV§:Number;
      
      private var §_-V§:Number;
      
      private var §_-09I§:Number;
      
      private var §_-E5§:Boolean;
      
      private var §_-sv§:Boolean;
      
      private var §_-Vb§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
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
               loop1:
               while(true)
               {
                  this.§_-0-i§ = new b2Vec2();
                  while(true)
                  {
                     this.§_-07I§ = new b2Vec2();
                     while(true)
                     {
                        this.§_-DN§ = new b2Vec2();
                        while(true)
                        {
                           this.§_-0t§ = new b2Vec2();
                           addr320:
                           while(!_loc6_)
                           {
                           }
                        }
                        addr271:
                        while(!(_loc6_ && _loc3_))
                        {
                           this.m_localAnchor2.SetV(param1.§_-0Bf§);
                           loop11:
                           for(; !(_loc6_ && _loc2_); while(_loc5_ || this)
                           {
                              §§goto(addr241);
                           })
                           {
                              this.§_-0-i§.SetV(param1.§_-v5§);
                              loop12:
                              while(!_loc6_)
                              {
                                 §§push(this.§_-07I§);
                                 while(true)
                                 {
                                    §§push(this.§_-0-i§);
                                    addr229:
                                    addr241:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       if(!_loc6_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       addr233:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop11;
                                       }
                                    }
                                    §§push(this.§_-07I§);
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    §§push(this.§_-0-i§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§pop().y = §§pop();
                                          loop17:
                                          while(true)
                                          {
                                             this.§_-o1§ = param1.§_-IW§;
                                             loop18:
                                             while(true)
                                             {
                                                this.§_-MK§.§_-el§();
                                                addr184:
                                                addr296:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      this.§_-04m§ = 0;
                                                      continue loop18;
                                                   }
                                                   continue loop12;
                                                   addr131:
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   this.§_-09I§ = param1.motorSpeed;
                                                   while(true)
                                                   {
                                                      this.§_-E5§ = param1.§_-6W§;
                                                      addr101:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         continue loop18;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   super(param1);
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr229);
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              while(_loc5_)
                              {
                                 this.§_-MK§ = new b2Vec3();
                                 §§goto(addr296);
                              }
                              §§goto(addr320);
                           }
                        }
                     }
                     if(_loc5_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               this.§_-Vb§ = b2internal::_-019;
               §§goto(addr78);
            }
         }
         while(true)
         {
            this.§_-0Ax§ = new b2Mat33();
            §§goto(addr302);
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§_-MK§.x);
            if(!_loc2_)
            {
               §§push(this.§_-0t§.x);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || this)
                  {
                     addr49:
                     §§push(this.§_-j§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§_-MK§.z);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              addr76:
                              §§push(this.§_-DN§.x);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_ || this)
                                 {
                                    addr94:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr103:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(this.§_-MK§.x);
                                          if(_loc3_)
                                          {
                                             §§push(this.§_-0t§.y);
                                             if(!_loc2_)
                                             {
                                                addr131:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc2_)
                                                {
                                                   addr134:
                                                   §§push(this.§_-j§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§_-MK§.z);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                      addr150:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr146:
                                                         §§push(this.§_-DN§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr134);
                                       }
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr150);
               }
               §§goto(addr76);
            }
            §§goto(addr49);
         }
         §§goto(addr103);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§_-MK§.y;
         }
      }
      
      public function §_-qk§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-0FB;
         var _loc2_:b2Body = b2internal::_-c9;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || this)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc11_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc10_ || _loc1_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  addr77:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§_-2R§(this.§_-0-i§)).x);
               if(!(_loc11_ && this))
               {
                  §§push(_loc6_);
                  if(_loc10_ || _loc1_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(_loc8_.y);
                        if(_loc10_ || _loc2_)
                        {
                           §§push(§§pop() * _loc7_);
                           if(_loc11_ && this)
                           {
                           }
                           §§goto(addr148);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_ && _loc1_)
                        {
                        }
                        addr147:
                        addr148:
                        var _loc9_:* = §§pop();
                        return §§pop();
                        §§push(§§pop());
                     }
                     §§goto(addr147);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr148);
               }
               §§goto(addr147);
            }
            §§goto(addr77);
         }
         §§goto(addr51);
      }
      
      public function §_-bV§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-0FB;
         var _loc2_:b2Body = b2internal::_-c9;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc21_ && _loc3_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc21_ && _loc2_))
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!(_loc21_ && _loc3_))
               {
                  addr72:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(!_loc21_)
               {
                  §§push(_loc4_);
                  if(_loc22_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc22_)
                     {
                        §§push(_loc3_.col2.x);
                        if(!(_loc21_ && _loc1_))
                        {
                           addr102:
                           §§push(§§pop() + §§pop() * _loc5_);
                           if(_loc22_ || _loc2_)
                           {
                              addr110:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr102);
                     }
                     var _loc6_:* = §§pop();
                     if(_loc22_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc22_)
                        {
                           §§push(_loc4_);
                           if(_loc22_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc21_ && _loc1_))
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!_loc21_)
                                 {
                                    addr140:
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc22_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       addr153:
                                       _loc5_ = §§pop();
                                       if(!(_loc21_ && _loc2_))
                                       {
                                          §§push(_loc6_);
                                          if(!_loc22_)
                                          {
                                          }
                                          addr165:
                                          _loc4_ = §§pop();
                                          addr166:
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc22_)
                                             {
                                                addr183:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc21_ && this))
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(_loc22_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             if(_loc22_)
                                             {
                                                §§push(_loc3_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      §§push(_loc7_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc22_ || _loc2_)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr302:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  addr303:
                                                                  addr326:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc22_ || _loc1_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc21_)
                                                                        {
                                                                           addr345:
                                                                           var _loc9_:Number = §§pop();
                                                                           addr344:
                                                                           §§push(_loc1_.m_sweep.c.y);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + _loc5_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.x);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + _loc7_);
                                                                              if(_loc22_ || _loc3_)
                                                                              {
                                                                                 addr373:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc2_.m_sweep.c.y);
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(§§pop() + _loc8_);
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    addr390:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc21_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - _loc9_);
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       addr409:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr418:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       var _loc15_:b2Vec2 = _loc1_.§_-2R§(this.§_-0-i§);
                                                                                       var _loc16_:b2Vec2 = _loc1_.§_-kZ§;
                                                                                       var _loc17_:b2Vec2 = _loc2_.§_-kZ§;
                                                                                       §§push(_loc1_.m_angularVelocity);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc18_:* = §§pop();
                                                                                       §§push(_loc2_.m_angularVelocity);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc19_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                §§push(_loc15_.y);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc22_ || this)
                                                                                                   {
                                                                                                      addr467:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc22_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         if(_loc22_ || _loc1_)
                                                                                                         {
                                                                                                            addr483:
                                                                                                            §§push(_loc18_);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc15_.x);
                                                                                                               if(!(_loc21_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc22_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc22_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr519:
                                                                                                                           §§push(_loc15_.x);
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              §§push(_loc17_.x);
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(_loc19_);
                                                                                                                                 if(_loc22_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr543:
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(_loc22_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_.x);
                                                                                                                                                if(_loc22_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                      if(_loc22_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr596:
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr599:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc21_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        addr607:
                                                                                                                                                                        §§push(_loc15_.y);
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           addr611:
                                                                                                                                                                           §§push(_loc17_.y);
                                                                                                                                                                           if(_loc22_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr620:
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr623:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr634:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc22_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_.y);
                                                                                                                                                                                          if(_loc22_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr670:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr664:
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr668:
                                                                                                                                                                                                   §§push(§§pop() * _loc4_);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                             if(_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr674:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc22_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr684:
                                                                                                                                                                                                   return Number(§§pop());
                                                                                                                                                                                                   addr683:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr683);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr684);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr670);
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr670);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr668);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr670);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr674);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr620);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr634);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr670);
                                                                                                                                             }
                                                                                                                                             §§goto(addr599);
                                                                                                                                          }
                                                                                                                                          §§goto(addr596);
                                                                                                                                       }
                                                                                                                                       §§goto(addr623);
                                                                                                                                    }
                                                                                                                                    §§goto(addr664);
                                                                                                                                 }
                                                                                                                                 §§goto(addr596);
                                                                                                                              }
                                                                                                                              §§goto(addr670);
                                                                                                                           }
                                                                                                                           §§goto(addr607);
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     §§goto(addr607);
                                                                                                                  }
                                                                                                                  §§goto(addr599);
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            }
                                                                                                            §§goto(addr611);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr684);
                                                                                                   }
                                                                                                   §§goto(addr607);
                                                                                                }
                                                                                                §§goto(addr611);
                                                                                             }
                                                                                             §§goto(addr467);
                                                                                          }
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr519);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr409);
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                            }
                                                            addr301:
                                                         }
                                                      }
                                                      addr291:
                                                   }
                                                   addr317:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr318:
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr102);
               }
               §§goto(addr110);
            }
            §§goto(addr72);
         }
         §§goto(addr53);
      }
      
      public function §_-sE§() : Boolean
      {
         return this.§_-E5§;
      }
      
      public function §_-6P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::_-0FB.SetAwake(true);
         }
         while(true)
         {
            b2internal::_-c9.SetAwake(true);
            while(!(_loc2_ && param1))
            {
               this.§_-E5§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §_-IV§() : Number
      {
         return this.§_-Fr§;
      }
      
      public function §_-7W§() : Number
      {
         return this.§_-KV§;
      }
      
      public function §_-Hl§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            b2internal::_-0FB.SetAwake(true);
            while(true)
            {
               b2internal::_-c9.SetAwake(true);
               while(_loc3_)
               {
                  while(_loc3_ || param2)
                  {
                     this.§_-KV§ = param2;
                     if(_loc3_ || param2)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§_-Fr§ = param1;
            §§goto(addr64);
         }
      }
      
      public function §_-FT§() : Boolean
      {
         return this.§_-sv§;
      }
      
      public function §_-060§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::_-0FB.SetAwake(true);
         }
         do
         {
            b2internal::_-c9.SetAwake(true);
            do
            {
               this.§_-sv§ = param1;
            }
            while(_loc2_ && param1);
            
         }
         while(_loc2_);
         
      }
      
      public function §_-02d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            b2internal::_-0FB.SetAwake(true);
            while(true)
            {
               b2internal::_-c9.SetAwake(true);
               while(!_loc2_)
               {
                  this.§_-09I§ = param1;
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §_-be§() : Number
      {
         return this.§_-09I§;
      }
      
      public function §_-h0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::_-0FB.SetAwake(true);
            do
            {
               b2internal::_-c9.SetAwake(true);
               do
               {
                  this.§_-V§ = param1;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function §_-4Y§() : Number
      {
         return this.§_-j§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         var _loc4_:b2Vec2 = _loc2_.§_-kZ§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc25_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§_-kZ§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc25_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc25_ || _loc3_)
         {
            §§push(this.§_-sv§);
            if(!(_loc26_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr658:
                     do
                     {
                        §§push(this.§_-Vb§ == b2internal::_-z3);
                        if(!_loc26_)
                        {
                           if(_loc26_ && param1)
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                        }
                     }
                     while(!_loc26_);
                     
                     continue loop0;
                  }
               }
               loop3:
               while(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§_-DN§.x);
                     if(_loc25_)
                     {
                        §§push(_loc6_.x);
                        if(_loc25_)
                        {
                           §§push(_loc4_.x);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc25_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§_-DN§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc6_.y);
                                          if(_loc25_)
                                          {
                                             §§push(_loc4_.y);
                                             if(!_loc26_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc26_)
                                                {
                                                   addr607:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc26_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr616:
                                                         addr678:
                                                         do
                                                         {
                                                            §§push(this.m_a2);
                                                         }
                                                         while(_loc25_ || param1);
                                                         
                                                         addr678:
                                                         §§push(_loc4_.x);
                                                         if(!(_loc26_ && _loc3_))
                                                         {
                                                            addr687:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc26_)
                                                            {
                                                               addr690:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc25_ || _loc3_)
                                                               {
                                                                  addr698:
                                                                  §§push(this.§_-0t§.y);
                                                                  if(!(_loc26_ && param1))
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(!(_loc26_ && this))
                                                                     {
                                                                        addr717:
                                                                        §§push(§§pop() - _loc4_.y);
                                                                        if(_loc25_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc25_ || _loc2_)
                                                                           {
                                                                              addr735:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc26_)
                                                                              {
                                                                                 addr738:
                                                                                 §§push(this.m_s2);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr742:
                                                                                    §§push(_loc7_);
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       addr745:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                       }
                                                                                       addr761:
                                                                                       §§push(§§pop() - §§pop() * _loc5_);
                                                                                       if(!(_loc26_ && param1))
                                                                                       {
                                                                                          addr770:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc12_:* = §§pop();
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc5_);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             addr779:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          if(_loc25_ || this)
                                                                                          {
                                                                                             §§push(this.§_-E5§);
                                                                                             if(_loc25_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr795:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr799:
                                                                                                         §§pop();
                                                                                                         if(_loc25_ || _loc3_)
                                                                                                         {
                                                                                                            addr807:
                                                                                                            §§push(this.§_-Vb§ == b2internal::_-019);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr814:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc25_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.§_-DN§.x);
                                                                                                                     if(_loc25_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.x);
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc25_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-DN§.y);
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       addr856:
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - _loc4_.y);
                                                                                                                                          if(_loc25_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc26_ && this))
                                                                                                                                             {
                                                                                                                                                addr878:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_a2);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr885:
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         addr888:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr924:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc25_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr904:
                                                                                                                                                               §§push(this.m_a1);
                                                                                                                                                               if(!(_loc26_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr914:
                                                                                                                                                                  §§push(§§pop() * _loc5_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            _loc19_ = this.§_-MK§.Copy();
                                                                                                                                                            _loc20_ = this.§_-0Ax§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1163:
                                                                                                                                                               this.§_-MK§.§_-M6§(_loc20_);
                                                                                                                                                               addr1165:
                                                                                                                                                               if(this.§_-Vb§ != b2internal::_-D3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§_-Vb§);
                                                                                                                                                                  if(_loc25_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == b2internal::_-Z5)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc26_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-MK§);
                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1163);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(b2Math.§_-fa§(this.§_-MK§.z,0));
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().z = §§pop();
                                                                                                                                                                                    addr1061:
                                                                                                                                                                                    addr1090:
                                                                                                                                                                                    addr1091:
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(!(_loc26_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1089:
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       §§push(this.§_-MK§.z);
                                                                                                                                                                                       §§push(_loc19_.z);
                                                                                                                                                                                       if(_loc25_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1084:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          §§push(this.§_-0Ax§.col3.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                                                                    addr1145:
                                                                                                                                                                                    if(_loc25_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc25_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(_loc25_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc25_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc25_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§_-MK§);
                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().z);
                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_.z);
                                                                                                                                                                                                                  if(_loc25_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§_-0Ax§);
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().col3);
                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1036:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1048:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1061);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc23_ = this.§_-0Ax§.Solve22(new b2Vec2(),_loc21_,_loc22_);
                                                                                                                                                                                                                                             §§push(_loc23_);
                                                                                                                                                                                                                                             §§push(_loc23_.x);
                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + _loc19_.x);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                §§push(_loc23_.y);
                                                                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + _loc19_.y);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                addr1684:
                                                                                                                                                                                                                                                this.§_-MK§.x = _loc23_.x;
                                                                                                                                                                                                                                                addr1685:
                                                                                                                                                                                                                                                addr1695:
                                                                                                                                                                                                                                                §§push(this.§_-MK§);
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc23_.y);
                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr1671:
                                                                                                                                                                                                                                                      if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         §§push(this.§_-MK§.x);
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_.x);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                               §§push(this.§_-MK§.y);
                                                                                                                                                                                                                                                               if(_loc25_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - _loc19_.y);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                               §§push(this.§_-MK§.z);
                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - _loc19_.z);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().z = §§pop();
                                                                                                                                                                                                                                                               addr1603:
                                                                                                                                                                                                                                                               addr1604:
                                                                                                                                                                                                                                                               §§push(_loc20_.x);
                                                                                                                                                                                                                                                               if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1602:
                                                                                                                                                                                                                                                                  §§push(§§pop() * this.§_-0t§.x + _loc20_.z * this.§_-DN§.x);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc8_ = Number(§§pop());
                                                                                                                                                                                                                                                               addr1555:
                                                                                                                                                                                                                                                               addr1639:
                                                                                                                                                                                                                                                               addr1622:
                                                                                                                                                                                                                                                               addr1605:
                                                                                                                                                                                                                                                               §§push(_loc20_.x);
                                                                                                                                                                                                                                                               §§push(this.§_-0t§);
                                                                                                                                                                                                                                                               if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1565:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1570:
                                                                                                                                                                                                                                                                     §§push(_loc20_.z);
                                                                                                                                                                                                                                                                     §§push(this.§_-DN§);
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1575:
                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1580:
                                                                                                                                                                                                                                                                           _loc9_ = Number(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                           addr1581:
                                                                                                                                                                                                                                                                           addr1579:
                                                                                                                                                                                                                                                                           addr1578:
                                                                                                                                                                                                                                                                           §§push(_loc20_.x);
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.m_s1);
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc25_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1519:
                                                                                                                                                                                                                                                                                          §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1529:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                             if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1539:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * this.m_a1);
                                                                                                                                                                                                                                                                                                if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1548:
                                                                                                                                                                                                                                                                                                   _loc10_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   addr1547:
                                                                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1403:
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                      §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1447:
                                                                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1450:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                              §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                                                              §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1464:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1468:
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                                       if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::_-04l * _loc8_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr1397:
                                                                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - b2internal::_-04l * _loc9_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                   addr1366:
                                                                                                                                                                                                                                                                                                                                                   if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1321:
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1326:
                                                                                                                                                                                                                                                                                                                                                            §§push(b2internal::_-gk * _loc10_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1336:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1344:
                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::_-cW * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           addr1354:
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1265:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + b2internal::_-cW * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(b2internal::_-at * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1240:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1265);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr2036:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc2_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2075);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr2081:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2083:
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr2081);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2075:
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2087:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2087:
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2083:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2087);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1581);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2075);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1403);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1321);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1468);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1336);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1240);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1602);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1581);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1547);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1240);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1671);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2083);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1366);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2075);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1579);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1468);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1464);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1555);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1639);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1622);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1605);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2083);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1580);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1539);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1539);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1548);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1450);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1602);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1519);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1447);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2087);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1565);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1602);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1578);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1604);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1548);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1570);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1539);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1602);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1580);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1602);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1685);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2075);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1695);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1684);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1682:
                                                                                                                                                                                                                                                §§goto(addr1682);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2083);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1145);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1061);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1084);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1089);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1084);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1036);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1089);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1036);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1089);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1036);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1089);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1090);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1091);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1048);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1089);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1048);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1153:
                                                                                                                                                                                       §§push(this.§_-MK§);
                                                                                                                                                                                       §§push(b2Math.§_-yL§(this.§_-MK§.z,0));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1061);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().z = §§pop();
                                                                                                                                                                                 §§goto(addr1061);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1153);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1165);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1061);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1163);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1153);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1061);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc25_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr923:
                                                                                                                                                            §§goto(addr924);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr924);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr914);
                                                                                                                                                }
                                                                                                                                                §§goto(addr904);
                                                                                                                                             }
                                                                                                                                             §§goto(addr914);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr888);
                                                                                                                                    }
                                                                                                                                    §§goto(addr885);
                                                                                                                                 }
                                                                                                                                 §§goto(addr923);
                                                                                                                              }
                                                                                                                              §§goto(addr878);
                                                                                                                           }
                                                                                                                           §§goto(addr888);
                                                                                                                        }
                                                                                                                        §§goto(addr856);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr924);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc24_ = this.§_-0Ax§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
                                                                                                                  if(_loc25_ || this)
                                                                                                                  {
                                                                                                                     addr2034:
                                                                                                                     addr2028:
                                                                                                                     addr2026:
                                                                                                                     §§push(this.§_-MK§);
                                                                                                                     §§push(this.§_-MK§.x);
                                                                                                                     if(_loc25_)
                                                                                                                     {
                                                                                                                        addr2033:
                                                                                                                        §§push(§§pop() + _loc24_.x);
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr2035:
                                                                                                                     §§push(this.§_-MK§);
                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§_-MK§);
                                                                                                                        if(_loc25_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc25_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc24_.y);
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    addr2022:
                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                    addr1986:
                                                                                                                                    addr1985:
                                                                                                                                    §§push(_loc24_.x);
                                                                                                                                    if(_loc25_ || this)
                                                                                                                                    {
                                                                                                                                       addr1984:
                                                                                                                                       §§push(§§pop() * this.§_-0t§.x);
                                                                                                                                    }
                                                                                                                                    _loc8_ = Number(§§pop());
                                                                                                                                    addr1987:
                                                                                                                                    addr2023:
                                                                                                                                    §§push(_loc24_.x);
                                                                                                                                    if(_loc25_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-0t§);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             addr1962:
                                                                                                                                             _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                             addr1960:
                                                                                                                                             addr1961:
                                                                                                                                             if(_loc25_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr1941:
                                                                                                                                                _loc10_ = Number(_loc24_.x * this.m_s1 + _loc24_.y);
                                                                                                                                                addr1921:
                                                                                                                                                §§push(_loc24_.x);
                                                                                                                                                §§push(this.m_s2);
                                                                                                                                                if(_loc25_)
                                                                                                                                                {
                                                                                                                                                   addr1919:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   §§push(_loc24_.y);
                                                                                                                                                }
                                                                                                                                                addr1937:
                                                                                                                                                addr1939:
                                                                                                                                                addr1934:
                                                                                                                                                addr1942:
                                                                                                                                                addr1940:
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr1924:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      addr1927:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         §§push(_loc4_.x);
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - b2internal::_-04l * _loc8_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         §§push(_loc4_.y);
                                                                                                                                                         if(_loc25_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - b2internal::_-04l * _loc9_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr1930:
                                                                                                                                                         addr1910:
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc25_)
                                                                                                                                                            {
                                                                                                                                                               addr1844:
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  addr1849:
                                                                                                                                                                  §§push(b2internal::_-gk * _loc10_);
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1852:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1869:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!(_loc26_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + b2internal::_-cW * _loc8_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr1839:
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1807:
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + b2internal::_-cW * _loc9_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    if(_loc25_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc25_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2internal::_-at * _loc11_);
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc25_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1762:
                                                                                                                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1772:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc25_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1807);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2036);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1987);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1930);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1910);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1839);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1807);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1962);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1937);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1844);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1772);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1960);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1939);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1921);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1849);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1941);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1919);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1852);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1869);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1762);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1962);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1930);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1877:
                                                                                                                                                                                 §§goto(addr1877);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1941);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1986);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1934);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1927);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1984);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1924);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2023);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1942);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1961);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1940);
                                                                                                                                                }
                                                                                                                                                addr1936:
                                                                                                                                                §§goto(addr1936);
                                                                                                                                                addr1970:
                                                                                                                                             }
                                                                                                                                             §§goto(addr2035);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1984);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1985);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1962);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2033);
                                                                                                                              }
                                                                                                                              §§goto(addr2034);
                                                                                                                           }
                                                                                                                           §§goto(addr2022);
                                                                                                                        }
                                                                                                                        §§goto(addr2028);
                                                                                                                     }
                                                                                                                     §§goto(addr2026);
                                                                                                                  }
                                                                                                                  §§goto(addr1970);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr814);
                                                                                                         }
                                                                                                         §§goto(addr924);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr814);
                                                                                                }
                                                                                                §§goto(addr799);
                                                                                             }
                                                                                             §§goto(addr795);
                                                                                          }
                                                                                          §§goto(addr807);
                                                                                       }
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                    §§goto(addr761);
                                                                                 }
                                                                              }
                                                                              break loop4;
                                                                           }
                                                                           addr748:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc25_ || param1)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr761);
                                                                     }
                                                                     §§goto(addr745);
                                                                  }
                                                                  §§goto(addr735);
                                                               }
                                                               break loop4;
                                                            }
                                                            §§goto(addr745);
                                                         }
                                                         §§goto(addr717);
                                                      }
                                                      addr615:
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc26_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(this.m_a1);
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr643:
                                                                           while(true)
                                                                           {
                                                                              _loc14_ = §§pop();
                                                                              addr644:
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-04m§);
                                                                                 addr519:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§_-09I§);
                                                                                    if(!(_loc26_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc14_);
                                                                                       if(_loc25_ || _loc2_)
                                                                                       {
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             addr546:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc26_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc15_ = §§pop();
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§push(this.§_-j§);
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§_-pn§);
                                                                                                                  if(_loc25_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§_-V§);
                                                                                                                     if(_loc25_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr508:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              addr509:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(b2Math);
                                                                                                                                 §§push(this.§_-j§);
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(_loc25_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr477:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          addr480:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       §§pop().§_-j§ = §§pop().§_-ZK§(§§pop(),§§pop(),_loc17_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-j§);
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       addr484:
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                                 §§goto(addr477);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop44:
                                                                                                                           for(; !(_loc26_ && this); if(!(_loc25_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(!_loc26_)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              §§goto(addr243);
                                                                                                                           },§§goto(addr362))
                                                                                                                           {
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              loop45:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    addr292:
                                                                                                                                    if(!(_loc26_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(this.m_a2);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc25_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop46:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                addr316:
                                                                                                                                                if(_loc25_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      loop40:
                                                                                                                                                      while(_loc25_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         loop41:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            addr329:
                                                                                                                                                            while(_loc25_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_a1);
                                                                                                                                                               if(!(_loc26_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     while(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        continue loop44;
                                                                                                                                                                        addr103:
                                                                                                                                                                        if(_loc25_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc25_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr127:
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    if(_loc25_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr137:
                                                                                                                                                                                          if(_loc25_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + b2internal::_-cW * _loc9_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   addr157:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop41;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr271);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                         addr243:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(b2internal::_-at * _loc11_);
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr103);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr745);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr748);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr452);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr127);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                   §§goto(addr137);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr509);
                                                                                                                                                                                                addr146:
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr509);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr326);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr157);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr745);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr451);
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc25_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop9;
                                                                                                                                                                           addr395:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop22;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop13;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr678);
                                                                                                                                                               §§goto(addr316);
                                                                                                                                                            }
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      §§push(_loc4_.x);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - b2internal::_-04l * _loc8_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      loop48:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         §§push(_loc4_.y);
                                                                                                                                                         if(_loc25_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - b2internal::_-04l * _loc9_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr271:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop44;
                                                                                                                                                               }
                                                                                                                                                               if(_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(b2internal::_-gk * _loc10_);
                                                                                                                                                                  if(!(_loc26_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop46;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop44;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr738);
                                                                                                                                                                        }
                                                                                                                                                                        break loop4;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr690);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-DN§);
                                                                                                                                                                     addr449:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr450:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr451:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr452:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr447:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr508);
                                                                                                                                                               }
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr484);
                                                                                                                                                         }
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr326:
                                                                                                                                                   §§goto(addr745);
                                                                                                                                                }
                                                                                                                                                §§goto(addr329);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr698);
                                                                                                                                       }
                                                                                                                                       §§goto(addr748);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          continue loop10;
                                                                                                                                          §§goto(addr292);
                                                                                                                                       }
                                                                                                                                       addr438:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr698);
                                                                                                                              }
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr742);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr770);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr698);
                                                                                             }
                                                                                             §§goto(addr748);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr690);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr687);
                                                                                       }
                                                                                       §§goto(addr745);
                                                                                    }
                                                                                    §§goto(addr546);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr717);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§goto(addr745);
                                             }
                                             §§goto(addr717);
                                          }
                                          §§goto(addr607);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr615);
                           }
                        }
                        §§goto(addr735);
                     }
                     break;
                     if(!(_loc25_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr146);
                  }
                  §§push(this.m_s1);
                  if(!_loc25_)
                  {
                  }
                  §§goto(addr745);
               }
               §§push(this.§_-0t§.x);
               if(!(_loc26_ && param1))
               {
                  §§push(_loc6_.x);
                  if(_loc25_ || this)
                  {
                     §§goto(addr678);
                  }
                  §§goto(addr745);
               }
               §§goto(addr770);
            }
         }
         §§goto(addr644);
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
