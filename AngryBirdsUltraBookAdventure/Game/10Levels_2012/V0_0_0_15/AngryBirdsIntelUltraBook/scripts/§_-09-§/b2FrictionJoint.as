package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-06g§:b2Vec2;
      
      private var §_-uv§:b2Vec2;
      
      public var §_-6X§:b2Mat22;
      
      public var §_-RZ§:Number;
      
      private var §_-JQ§:b2Vec2;
      
      private var §_-qX§:Number;
      
      private var §_-RK§:Number;
      
      private var §_-Ur§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-06g§ = new b2Vec2();
            while(true)
            {
               this.§_-uv§ = new b2Vec2();
               addr166:
               while(true)
               {
                  this.§_-6X§ = new b2Mat22();
               }
            }
            addr171:
         }
         loop2:
         while(true)
         {
            this.§_-JQ§ = new b2Vec2();
            while(true)
            {
               if(_loc3_)
               {
                  super(param1);
                  for(; !_loc2_; while(!(_loc2_ && param1))
                  {
                     this.§_-uv§.SetV(param1.§_-0Bf§);
                     continue loop2;
                  })
                  {
                     if(_loc3_)
                     {
                        this.§_-06g§.SetV(param1.§_-F6§);
                        continue;
                     }
                  }
                  continue;
               }
               §§goto(addr171);
               §§goto(addr166);
            }
            loop6:
            while(!(_loc2_ && this))
            {
               this.§_-6X§.§_-el§();
               loop7:
               while(!_loc2_)
               {
                  this.§_-RZ§ = 0;
                  loop8:
                  do
                  {
                     this.§_-JQ§.§_-el§();
                     loop9:
                     while(true)
                     {
                        this.§_-qX§ = 0;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop7;
                              }
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              §§goto(addr82);
                              continue loop7;
                           }
                           continue loop9;
                           addr82:
                           this.§_-RK§ = param1.§_-oX§;
                           do
                           {
                              this.§_-Ur§ = param1.maxTorque;
                           }
                           while(!(_loc3_ || _loc2_));
                           
                           if(_loc3_ || _loc2_)
                           {
                              continue loop8;
                           }
                        }
                        continue loop6;
                     }
                  }
                  while(_loc2_ && _loc2_);
                  
                  return;
               }
               §§goto(addr120);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.§_-06g§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.§_-uv§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§_-JQ§.x);
            if(_loc2_)
            {
               §§goto(addr36);
            }
            §§goto(addr44);
         }
         addr36:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr44:
            §§push(§§pop() * this.§_-JQ§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            return §§pop() * this.§_-qX§;
         }
      }
      
      public function §_-EZ§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-RK§ = param1;
         }
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-RK§;
      }
      
      public function §_-Ul§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-Ur§ = param1;
         }
      }
      
      public function §_-6M§() : Number
      {
         return this.§_-Ur§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::_-0FB;
         _loc5_ = b2internal::_-c9;
         _loc2_ = _loc4_.m_xf.R;
         if(!(_loc16_ && _loc2_))
         {
            §§push(this.§_-06g§);
            if(!_loc16_)
            {
               §§push(§§pop().x);
               if(!_loc16_)
               {
                  §§push(_loc4_.m_sweep);
                  if(!_loc16_)
                  {
                     §§push(§§pop().localCenter);
                     if(_loc17_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc16_ && _loc2_))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc17_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc16_)
                              {
                              }
                              addr106:
                              §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                              if(!(_loc16_ && param1))
                              {
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              if(_loc17_ || param1)
                              {
                                 §§push(_loc2_.col1);
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
                                             §§push(_loc2_.col2);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc17_)
                                                {
                                                   §§push(_loc7_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   addr231:
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col1);
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop11:
                                                               while(!(_loc16_ && _loc3_))
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc17_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc17_ || _loc2_))
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§push(_loc2_.col2);
                                                                        if(!_loc17_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(_loc17_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_ && _loc2_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(_loc7_);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§goto(addr231);
                                                                           addr189:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop13:
                                                                              while(_loc17_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop14:
                                                                                 for(; !(_loc16_ && _loc2_); if(_loc16_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 },if(_loc16_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 },_loc6_ = §§pop(),if(_loc16_)
                                                                                 {
                                                                                    §§goto(addr219);
                                                                                 },if(!_loc17_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 },if(false)
                                                                                 {
                                                                                    continue loop10;
                                                                                 },§§goto(addr236))
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    _loc2_ = _loc5_.m_xf.R;
                                                                                    if(!(_loc16_ && _loc3_))
                                                                                    {
                                                                                       §§push(this.§_-uv§);
                                                                                       if(!(_loc16_ && param1))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc17_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc5_.m_sweep);
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop().localCenter);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc16_ && param1))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            addr296:
                                                                                                            _loc8_ = §§pop();
                                                                                                            addr299:
                                                                                                            addr297:
                                                                                                            §§push(this.§_-uv§.y);
                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                            {
                                                                                                               addr311:
                                                                                                               addr310:
                                                                                                               addr309:
                                                                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr320:
                                                                                                               var _loc9_:* = §§pop();
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.col1);
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr451:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        addr452:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc2_.col2);
                                                                                                                              loop21:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr424:
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc16_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop28:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc16_ && param1))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr360:
                                                                                                                                                            addr349:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§_-03A§);
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr475:
                                                                                                                                                                  break loop28;
                                                                                                                                                               }
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            if(_loc16_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            if(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§_-03A§);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr475);
                                                                                                                                                               }
                                                                                                                                                               break loop28;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr360);
                                                                                                                                                            §§goto(addr475);
                                                                                                                                                         }
                                                                                                                                                         addr447:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         addr468:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr469:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr441:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       var _loc11_:* = §§pop();
                                                                                                                                       if(_loc17_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§_-Dz§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                addr510:
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.§_-Dz§);
                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr508:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push((_loc14_ = new b2Mat22()).col1);
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(!(_loc16_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(!(_loc16_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr1148:
                                                                                                                                                               _loc14_.col2.x = 0;
                                                                                                                                                               addr1141:
                                                                                                                                                               _loc14_.col1.y = 0;
                                                                                                                                                               addr1149:
                                                                                                                                                               addr1147:
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr1128:
                                                                                                                                                                  _loc14_.col2.y = _loc10_ + _loc11_;
                                                                                                                                                                  addr1125:
                                                                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1120:
                                                                                                                                                                     _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
                                                                                                                                                                     addr1088:
                                                                                                                                                                     addr1121:
                                                                                                                                                                     addr1119:
                                                                                                                                                                     addr1111:
                                                                                                                                                                     addr1117:
                                                                                                                                                                     addr1116:
                                                                                                                                                                     addr1115:
                                                                                                                                                                     addr1118:
                                                                                                                                                                     addr1113:
                                                                                                                                                                     addr1114:
                                                                                                                                                                     §§push(_loc14_.col2);
                                                                                                                                                                     §§push(_loc14_.col2.x);
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1092:
                                                                                                                                                                        §§push(-_loc12_);
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(!(_loc16_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1101:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1054:
                                                                                                                                                                           §§push(_loc14_.col1);
                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1064:
                                                                                                                                                                              §§push(_loc14_.col1.y);
                                                                                                                                                                              if(_loc17_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1072:
                                                                                                                                                                                 addr1073:
                                                                                                                                                                                 addr1078:
                                                                                                                                                                                 addr1079:
                                                                                                                                                                                 addr1080:
                                                                                                                                                                                 §§push(-_loc12_);
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1077:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                 addr1081:
                                                                                                                                                                                 §§push(_loc14_.col2);
                                                                                                                                                                                 §§push(_loc14_.col2);
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1027:
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1030:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1040:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc6_);
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr1050:
                                                                                                                                                                                                §§push(_loc14_.col1);
                                                                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr950:
                                                                                                                                                                                                   §§push(_loc14_.col1);
                                                                                                                                                                                                   if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr972:
                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                  if(_loc17_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr980:
                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                     if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr988:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr991:
                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr996:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1004:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr879:
                                                                                                                                                                                                                                             §§push(_loc14_.col2);
                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr888:
                                                                                                                                                                                                                                                §§push(_loc14_.col2.x);
                                                                                                                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr902:
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr913:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr919:
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc9_);
                                                                                                                                                                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr927:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr805:
                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr845:
                                                                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr848:
                                                                                                                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr851:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr863:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                 addr866:
                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr748:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr770:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      addr773:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         _loc14_.§_-84§(this.§_-6X§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + _loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().§_-RZ§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(this.§_-RZ§ > 0)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr646:
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        this.§_-RZ§ = 1 / this.§_-RZ§;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr654:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(param1.§_-0F7§)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr624:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§_-JQ§);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr639:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().x = this.§_-JQ§.x * param1.§_-b8§;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr583:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr640:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr636:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr638:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr635:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§_-JQ§);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§_-JQ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(param1.§_-b8§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr600:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr610:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§_-qX§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * param1.§_-b8§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().§_-qX§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr583);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§_-JQ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1474:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           _loc4_.§_-kZ§.x -= _loc10_ * _loc15_.x;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1472:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1475:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1470:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1468:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1473:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1469:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1440:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc4_.§_-kZ§.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1446:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1462:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop() - §§pop() * _loc15_.y;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1451:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1463:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1450:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1429:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1418:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1430:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1431:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§_-qX§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1301:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1432:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1310:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1330:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1333:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1341:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1349:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1219:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc5_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_.§_-kZ§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1272:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1282:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1290:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1212:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1209:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§_-qX§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1219);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1290);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1212);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1209);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1212);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1341);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1451);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1333);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1472);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1446);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1272);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1282);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1310);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1301);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1463);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1432);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1333);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1341);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1468);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1418);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1430);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1431);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1469);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1466:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1466);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1479:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().§_-el§();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1487:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           this.§_-qX§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr624);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr640);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr610);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1487);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr773);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr654);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr636);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr639);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr638);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr600);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr635);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1479);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§_-JQ§);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr654);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr866);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1490:
                                                                                                                                                                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                                                                                                                                                                         addr780:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1040);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr902);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr913);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1040);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr748);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1030);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr748);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr927);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr770);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr888);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1147);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr879);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1121);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1050);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1004);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1119);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1077);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr988);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr980);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr972);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr851);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr991);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr848);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr996);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr851);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1072);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1073);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1111);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1050);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1487);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1092);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1125);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1092);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1040);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr919);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1027);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr927);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1088);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1487);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1141);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1064);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1117);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1116);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1078);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1115);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1118);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1079);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1120);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1080);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1004);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1113);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1064);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1054);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1148);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1125);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1092);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1120);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1114);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1148);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1490);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1128);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1490);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1487);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr780);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1148);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1072);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr805);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1120);
                                                                                                                                             }
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             §§goto(addr510);
                                                                                                                                          }
                                                                                                                                          §§goto(addr508);
                                                                                                                                       }
                                                                                                                                       §§goto(addr510);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr467:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr468);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr469);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                      §§goto(addr296);
                                                                                                   }
                                                                                                   §§goto(addr311);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               continue loop7;
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
                                 }
                              }
                              §§goto(addr236);
                           }
                           _loc6_ = §§pop();
                           addr103:
                           §§push(this.§_-06g§.y);
                           if(!_loc16_)
                           {
                              §§goto(addr106);
                           }
                           §§goto(addr118);
                        }
                     }
                  }
               }
               §§goto(addr106);
            }
         }
         §§goto(addr103);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         var _loc6_:b2Vec2 = _loc4_.§_-kZ§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc26_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§_-kZ§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§_-03A§);
         if(_loc27_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§_-03A§);
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§_-Dz§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§_-Dz§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§_-06g§.x);
         if(!(_loc26_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc27_)
            {
               addr121:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§_-06g§.y);
            if(!(_loc26_ && param1))
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc26_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc26_ && param1))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!_loc26_)
                  {
                     §§push(_loc14_);
                     if(_loc27_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc27_ || param1)
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc26_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    addr278:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr277:
                              }
                              addr279:
                              addr210:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr280:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§push(_loc2_.col2);
                              if(!(_loc27_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§pop().y);
                              if(_loc27_ || _loc2_)
                              {
                                 addr227:
                                 if(!(_loc26_ && _loc3_))
                                 {
                                    §§push(_loc15_);
                                    if(!(_loc26_ && _loc2_))
                                    {
                                       addr243:
                                       §§push(§§pop() + §§pop() * §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop7:
                                          while(_loc27_ || _loc3_)
                                          {
                                             _loc15_ = §§pop();
                                             while(!_loc26_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc27_ || _loc3_)
                                                   {
                                                      if(!_loc26_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop6;
                                                }
                                                _loc2_ = _loc5_.m_xf.R;
                                                §§push(this.§_-uv§.x);
                                                if(!(_loc26_ && _loc2_))
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                   if(!(_loc26_ && _loc3_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc16_:* = §§pop();
                                                §§push(this.§_-uv§.y);
                                                if(!(_loc26_ && this))
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                   if(_loc27_)
                                                   {
                                                      addr329:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc17_:* = §§pop();
                                                   if(!(_loc26_ && this))
                                                   {
                                                      §§push(_loc2_.col1);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr471:
                                                         while(true)
                                                         {
                                                            §§push(_loc16_);
                                                            addr472:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc27_ || param1)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc26_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc17_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr487:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr495:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc27_ || this)
                                                                  {
                                                                     addr503:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc19_:* = §§pop();
                                                                  §§push(this.§_-RZ§);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() * _loc19_);
                                                                        if(_loc26_ && param1)
                                                                        {
                                                                        }
                                                                        addr527:
                                                                        var _loc20_:* = §§pop();
                                                                        §§push(this.§_-qX§);
                                                                        if(_loc27_ || _loc2_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc21_:* = §§pop();
                                                                        if(!_loc26_)
                                                                        {
                                                                           §§push(param1.§_-pn§);
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-Ur§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc18_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(b2Math);
                                                                                          §§push(this.§_-qX§);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                addr696:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(_loc18_);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                }
                                                                                             }
                                                                                             §§pop().§_-qX§ = §§pop().§_-ZK§(§§pop(),§§pop(),_loc18_);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§_-qX§);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(_loc21_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc26_ && _loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr745:
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(_loc27_ || this)
                                                                                                   {
                                                                                                      addr754:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr757:
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            addr765:
                                                                                                            §§push(§§pop() * _loc15_);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            addr775:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc22_:* = §§pop();
                                                                                                         §§push(_loc8_.y);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr802:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc27_ || this)
                                                                                                                           {
                                                                                                                              addr810:
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr813:
                                                                                                                                 §§push(§§pop() * _loc14_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc27_ || this)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr824:
                                                                                                                              var _loc23_:* = §§pop();
                                                                                                                              §§push(b2Math);
                                                                                                                              §§push(this.§_-6X§);
                                                                                                                              §§push(§§findproperty(b2Vec2));
                                                                                                                              §§push(_loc22_);
                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§push(_loc23_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              var _loc24_:b2Vec2 = §§pop().§_-S4§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                              var _loc25_:b2Vec2 = this.§_-JQ§.Copy();
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(this.§_-JQ§);
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§_-M6§(_loc24_);
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§_-pn§);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-RK§);
                                                                                                                                          loop42:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc26_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                addr923:
                                                                                                                                             }
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                loop44:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop45:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-JQ§);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§_-wN§());
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      addr904:
                                                                                                                                                      loop47:
                                                                                                                                                      while(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().Normalize();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-JQ§);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§_-mx§(_loc18_);
                                                                                                                                                               if(!(_loc26_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         if(_loc26_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue loop44;
                                                                                                                                                         }
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(true)
                                                                                                                                                            {
                                                                                                                                                               break loop45;
                                                                                                                                                            }
                                                                                                                                                            continue loop45;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   addr931:
                                                                                                                                                   _loc24_ = b2Math.§_-DO§(this.§_-JQ§,_loc25_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * _loc24_.x);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(_loc6_.y);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr1168:
                                                                                                                                                         while(_loc27_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc24_.y);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr1129:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     addr1130:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc24_.x);
                                                                                                                                                                        addr1132:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr1133:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1004:
                                                                                                                                                                  if(_loc26_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc26_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc24_.x);
                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1031:
                                                                                                                                                                                 §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!(_loc26_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1051:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                             loop65:
                                                                                                                                                                                             while(_loc27_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      §§push(_loc8_.x);
                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      addr1110:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         §§push(_loc8_.y);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            if(_loc27_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         break loop65;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1138:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1168);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             loop64:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(!(_loc26_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc24_.y);
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1004);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1031);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1129);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr1135:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  break loop64;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1134:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1031);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1051);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1110);
                                                                                                                                                                                                §§goto(addr1054);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1054:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1136:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                             §§goto(addr1138);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1137:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1136);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1051);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1135);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1132);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1130);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1133);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1031);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1134);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1135);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1137);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr923);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr877);
                                                                                                                           }
                                                                                                                           §§goto(addr824);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr813);
                                                                                                                     }
                                                                                                                     §§goto(addr810);
                                                                                                                  }
                                                                                                                  §§goto(addr802);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr813);
                                                                                                         }
                                                                                                         §§goto(addr810);
                                                                                                      }
                                                                                                      §§goto(addr775);
                                                                                                   }
                                                                                                   §§goto(addr765);
                                                                                                   addr663:
                                                                                                }
                                                                                                while(!_loc26_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      _loc20_ = §§pop();
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   §§goto(addr745);
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr696);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr745);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr656);
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr527);
                                                                  addr482:
                                                               }
                                                               addr488:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr489:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col1);
                                                            if(!(_loc27_ || _loc2_))
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(!(_loc26_ && _loc2_))
                                                            {
                                                               §§push(_loc16_);
                                                               if(_loc27_ || this)
                                                               {
                                                                  if(_loc27_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(_loc2_.col2);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc26_ && this))
                                                                           {
                                                                              if(_loc27_ || this)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc27_ || param1)
                                                                                    {
                                                                                       addr450:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop24:
                                                                                          while(_loc27_ || _loc2_)
                                                                                          {
                                                                                             if(_loc26_ && param1)
                                                                                             {
                                                                                                break loop22;
                                                                                             }
                                                                                             _loc17_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc26_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc27_ || _loc2_)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            break loop23;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          §§goto(addr488);
                                                                                       }
                                                                                       if(_loc27_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             addr494:
                                                                                             §§goto(addr495);
                                                                                             §§push(_loc7_);
                                                                                          }
                                                                                          §§goto(addr503);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr495);
                                                                                          addr490:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr495);
                                                                                 }
                                                                                 §§goto(addr486);
                                                                              }
                                                                              §§goto(addr472);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     §§goto(addr494);
                                                                  }
                                                                  §§goto(addr487);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                         §§goto(addr471);
                                                      }
                                                   }
                                                   §§goto(addr490);
                                                }
                                                §§goto(addr329);
                                             }
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       addr244:
                                    }
                                    else
                                    {
                                       §§goto(addr278);
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr282);
                                    }
                                    addr281:
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr243);
                           }
                        }
                        §§goto(addr281);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr280);
               }
            }
            §§goto(addr255);
         }
         §§goto(addr121);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
