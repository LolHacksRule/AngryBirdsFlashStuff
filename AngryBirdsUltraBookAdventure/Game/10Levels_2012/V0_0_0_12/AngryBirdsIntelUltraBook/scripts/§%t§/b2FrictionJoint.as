package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §<i§:b2Vec2;
      
      private var §"3§:b2Vec2;
      
      public var §!i§:b2Mat22;
      
      public var §`!'§:Number;
      
      private var §!j§:b2Vec2;
      
      private var §1!+§:Number;
      
      private var §2!W§:Number;
      
      private var §-i§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<i§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§"3§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!i§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§!j§ = new b2Vec2();
                     while(true)
                     {
                        super(param1);
                        loop4:
                        while(true)
                        {
                           this.§<i§.SetV(param1.§`!V§);
                           loop5:
                           while(true)
                           {
                              this.§"3§.SetV(param1.§6$§);
                              loop6:
                              while(true)
                              {
                                 this.§!i§.§5b§();
                                 while(true)
                                 {
                                    this.§`!'§ = 0;
                                    while(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§!j§.§5b§();
                                          while(_loc2_ || _loc3_)
                                          {
                                             continue loop4;
                                          }
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr42:
                                    if(!(_loc3_ && this))
                                    {
                                       return;
                                       addr49:
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc2_ || _loc2_)
                        {
                           this.§1!+§ = 0;
                           loop10:
                           for(; _loc2_; if(!(_loc2_ || param1))
                           {
                              continue;
                           },§§goto(addr42))
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              this.§2!W§ = param1.§3!,§;
                              loop11:
                              while(_loc2_)
                              {
                                 continue loop1;
                                 while(true)
                                 {
                                    this.§-i§ = param1.maxTorque;
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop10;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr49);
                              }
                              §§goto(addr89);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.§<i§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.§"3§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§!j§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§!j§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§1!+§;
         }
      }
      
      public function §+"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2!W§ = param1;
         }
      }
      
      public function § <§() : Number
      {
         return this.§2!W§;
      }
      
      public function §#!I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-i§ = param1;
         }
      }
      
      public function §2!M§() : Number
      {
         return this.§-i§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:* = NaN;
         var _loc10_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = §1!G§;
         _loc5_ = §&!F§;
         _loc2_ = _loc4_.m_xf.R;
         if(_loc16_)
         {
            §§push(this.§<i§);
            if(!(_loc17_ && _loc3_))
            {
               §§push(§§pop().x);
               if(!(_loc17_ && param1))
               {
                  §§push(_loc4_.m_sweep);
                  if(!(_loc17_ && this))
                  {
                     §§push(§§pop().localCenter);
                     if(_loc16_ || param1)
                     {
                        §§push(§§pop().x);
                        if(!(_loc17_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc17_ && _loc3_))
                           {
                              addr108:
                              §§push(Number(§§pop()));
                              if(!_loc17_)
                              {
                                 addr111:
                                 _loc6_ = §§pop();
                                 §§push(this.§<i§.y);
                                 if(_loc16_)
                                 {
                                    addr117:
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(!(_loc17_ && this))
                                    {
                                       addr129:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc16_ || _loc3_)
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
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.col1);
                                                                           if(!_loc16_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc17_ && _loc3_))
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(_loc2_.col2);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc17_ && _loc3_))
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(_loc7_);
                                                                                       if(_loc17_ && this)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop13:
                                                                                    while(_loc16_)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       loop14:
                                                                                       for(; !(_loc17_ && _loc3_); _loc6_ = §§pop(),if(!(_loc16_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       },if(false)
                                                                                       {
                                                                                          continue loop11;
                                                                                       },§§goto(addr257))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc17_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(!(_loc16_ || param1))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          _loc2_ = _loc5_.m_xf.R;
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(this.§"3§);
                                                                                             if(_loc16_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop().localCenter);
                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc16_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc17_ && param1))
                                                                                                               {
                                                                                                                  addr312:
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  addr315:
                                                                                                                  addr313:
                                                                                                                  §§push(this.§"3§.y);
                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr327:
                                                                                                                     addr326:
                                                                                                                     addr325:
                                                                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr331:
                                                                                                                     var _loc9_:* = §§pop();
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.col1);
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr467:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              addr468:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_.col2);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                          addr482:
                                                                                                                                       }
                                                                                                                                       addr483:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr478:
                                                                                                                                 }
                                                                                                                                 addr484:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr485:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr466:
                                                                                                                     }
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.col1);
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    if(_loc16_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(_loc2_.col2);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop28:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               addr463:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr383:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr492:
                                                                                                                                                      var _loc11_:* = §§pop();
                                                                                                                                                      addr453:
                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§&f§);
                                                                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               addr526:
                                                                                                                                                               if(_loc16_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§&f§);
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               _loc14_ = new b2Mat22();
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr1194:
                                                                                                                                                                  _loc14_.col1.x = _loc10_ + _loc11_;
                                                                                                                                                                  addr1187:
                                                                                                                                                                  _loc14_.col2.x = 0;
                                                                                                                                                                  addr1174:
                                                                                                                                                                  _loc14_.col1.y = 0;
                                                                                                                                                                  addr1175:
                                                                                                                                                                  addr1186:
                                                                                                                                                                  addr1191:
                                                                                                                                                                  addr1173:
                                                                                                                                                                  addr1192:
                                                                                                                                                                  addr1195:
                                                                                                                                                                  addr1193:
                                                                                                                                                                  if(_loc16_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1168:
                                                                                                                                                                     _loc14_.col2.y = _loc10_ + _loc11_;
                                                                                                                                                                     addr1169:
                                                                                                                                                                     addr1166:
                                                                                                                                                                     addr1165:
                                                                                                                                                                     addr1167:
                                                                                                                                                                     §§push(_loc14_.col1);
                                                                                                                                                                     §§push(_loc14_.col1.x);
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1154:
                                                                                                                                                                        §§push(§§pop() * _loc7_);
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1160:
                                                                                                                                                                           §§pop().x = §§pop() + §§pop() * _loc7_;
                                                                                                                                                                           addr1131:
                                                                                                                                                                           addr1130:
                                                                                                                                                                           addr1128:
                                                                                                                                                                           addr1140:
                                                                                                                                                                           addr1139:
                                                                                                                                                                           §§push(_loc14_.col2);
                                                                                                                                                                           §§push(_loc14_.col2.x);
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1138:
                                                                                                                                                                              §§push(-§§pop() * _loc6_ * _loc7_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().x = §§pop() + §§pop();
                                                                                                                                                                           addr1141:
                                                                                                                                                                           addr1161:
                                                                                                                                                                           addr1159:
                                                                                                                                                                           addr1158:
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1067:
                                                                                                                                                                              §§push(_loc14_.col1);
                                                                                                                                                                              §§push(_loc14_.col1);
                                                                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          if(_loc16_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1102:
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1105:
                                                                                                                                                                                                §§push(§§pop() * _loc6_);
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1115:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1123:
                                                                                                                                                                                                      §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                      addr1028:
                                                                                                                                                                                                      addr1124:
                                                                                                                                                                                                      §§push(_loc14_.col2);
                                                                                                                                                                                                      §§push(_loc14_.col2.y);
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1033:
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1036:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc16_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1052:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc6_);
                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     addr1056:
                                                                                                                                                                                                                     if(_loc16_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr961:
                                                                                                                                                                                                                        §§push(_loc14_.col1);
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr969:
                                                                                                                                                                                                                                 §§push(_loc14_.col1);
                                                                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr986:
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr989:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr992:
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(!(_loc17_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1000:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr895:
                                                                                                                                                                                                                                                               §§push(_loc14_.col2);
                                                                                                                                                                                                                                                               if(!(_loc17_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr908:
                                                                                                                                                                                                                                                                        §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr938:
                                                                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr948:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * _loc8_ * _loc9_);
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr845:
                                                                                                                                                                                                                                                                                                                              if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr874:
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr882:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr891:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr783:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr786:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr796:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr804);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr938);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1138);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr796);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr786);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr783);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1166);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr804:
                                                                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                                                        _loc14_.§,0§(this.§!i§);
                                                                                                                                                                                                                                                                                                                                                                        addr805:
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + _loc13_);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§pop().§`!'§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              addr666:
                                                                                                                                                                                                                                                                                                                                                                              if(this.§`!'§ > 0)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       this.§`!'§ = 1 / this.§`!'§;
                                                                                                                                                                                                                                                                                                                                                                                       addr645:
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr600:
                                                                                                                                                                                                                                                                                                                                                                                          if(param1.§5h§)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§!j§);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr621:
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().x = this.§!j§.x * param1.§<!1§;
                                                                                                                                                                                                                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                                                                                                                                                                                                                   addr620:
                                                                                                                                                                                                                                                                                                                                                                                                   addr618:
                                                                                                                                                                                                                                                                                                                                                                                                   addr617:
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr568:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§!j§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§!j§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(param1.§<!1§);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr594:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        addr595:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§1!+§);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * param1.§<!1§);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().§1!+§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr568);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§!j§);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1515:
                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc4_.§45§.x -= _loc10_ * _loc15_.x;
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1516:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1513:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1514:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1510:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1511:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1509:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1471:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc4_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1487:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1503:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop() - §§pop() * _loc15_.y;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1502:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1504:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1501:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1439:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1461:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1462:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1459:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + this.§1!+§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1360:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1463:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1363:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1377:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1386:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1387:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1385:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1275:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_.§45§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1318:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1330:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1340:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1249:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1257:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1267:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + this.§1!+§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1340);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1387);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1363);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1386);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1487);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1385);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1377);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1318);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1504);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1463);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1514);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1386);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1439);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1511);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1509);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1507:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1507);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1396);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1520:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§5b§();
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1524:
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§1!+§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr891);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr622);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr595);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1056);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr620);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr618);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr621);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr594);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr617);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr645);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1520);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1520);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§!j§);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1175);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1169);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr645);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr600);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr805);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1028);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr908);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1165);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1105);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr882);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr992);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr874);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr986);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1000);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr989);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr845);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1000);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr882);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr969);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1067);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr961);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1141);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1524);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1131);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1033);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1167);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1138);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr938);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1028);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr948);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1130);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1186);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1128);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1028);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1161);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1527:
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1194);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1160);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1123);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1154);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1105);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1000);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1067);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1191);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1173);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1168);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1124);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1140);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1138);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1139);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1138);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1187);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1159);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1158);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1154);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1115);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1192);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1174);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1123);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1168);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1195);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1193);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1160);
                                                                                                                                                                  }
                                                                                                                                                                  addr1188:
                                                                                                                                                                  §§goto(addr1188);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr804);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr526);
                                                                                                                                                      addr453:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                }
                                                                                                                                                §§goto(addr453);
                                                                                                                                             }
                                                                                                                                             §§goto(addr478);
                                                                                                                                          }
                                                                                                                                          §§goto(addr485);
                                                                                                                                       }
                                                                                                                                       §§goto(addr468);
                                                                                                                                    }
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                                 §§goto(addr453);
                                                                                                                              }
                                                                                                                              §§goto(addr484);
                                                                                                                              if(_loc17_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr383);
                                                                                                                                 }
                                                                                                                                 §§push(_loc5_.§8[§);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr491);
                                                                                                                                 }
                                                                                                                                 §§goto(addr492);
                                                                                                                              }
                                                                                                                              §§goto(addr396);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                        §§goto(addr467);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr331);
                                                                                                            }
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§goto(addr325);
                                                                                                }
                                                                                                §§goto(addr312);
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr231:
                                                                              }
                                                                              if(!(_loc16_ || _loc3_))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr231);
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
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr111);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = §1!G§;
         var _loc5_:b2Body = §&!F§;
         var _loc6_:b2Vec2 = _loc4_.§45§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§45§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§8[§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§8[§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§&f§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§&f§);
         if(!(_loc26_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§<i§.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc26_ && _loc2_))
            {
               addr113:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§<i§.y);
            if(_loc27_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc27_ || this)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc14_);
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
                              loop5:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                addr179:
                                                while(true)
                                                {
                                                   §§push(_loc2_.col1);
                                                   if(!_loc27_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc26_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(_loc14_);
                                                      if(!(_loc26_ && this))
                                                      {
                                                         if(!(_loc27_ || param1))
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc27_ || _loc3_)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            if(_loc26_ && this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(!(_loc26_ && _loc2_))
                                                            {
                                                               addr232:
                                                               if(!_loc27_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(_loc15_);
                                                               if(_loc26_ && _loc3_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            if(_loc26_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop14:
                                                            while(_loc27_)
                                                            {
                                                               _loc15_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc26_)
                                                                  {
                                                                     if(!_loc26_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      §§goto(addr232);
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
               }
            }
            while(false)
            {
               §§goto(addr179);
            }
            _loc2_ = _loc5_.m_xf.R;
            §§push(this.§"3§.x);
            if(_loc27_ || param1)
            {
               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
               if(!_loc26_)
               {
                  addr292:
                  §§push(Number(§§pop()));
               }
               var _loc16_:* = §§pop();
               §§push(this.§"3§.y);
               if(_loc27_ || _loc3_)
               {
                  §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                  if(!(_loc26_ && param1))
                  {
                     addr316:
                     §§push(Number(§§pop()));
                  }
                  var _loc17_:* = §§pop();
                  if(!_loc26_)
                  {
                     §§push(_loc2_.col1);
                     loop17:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(_loc27_)
                        {
                           §§push(_loc16_);
                           if(_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              loop18:
                              while(true)
                              {
                                 §§push(_loc2_.col2);
                                 addr414:
                                 loop19:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc26_ && this))
                                    {
                                       §§push(_loc17_);
                                       loop20:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr424:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop22:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop23:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop24:
                                                   while(true)
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.col1);
                                                         if(!_loc27_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§push(_loc16_);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               loop27:
                                                               while(_loc27_ || _loc3_)
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  _loc17_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc27_)
                                                                     {
                                                                        addr441:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc26_)
                                                                        {
                                                                           if(!(_loc26_ && _loc2_))
                                                                           {
                                                                              if(_loc26_)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              _loc16_ = §§pop();
                                                                              if(_loc26_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc26_)
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                              }
                                                                              addr389:
                                                                           }
                                                                           §§push(_loc7_);
                                                                           break loop19;
                                                                        }
                                                                        var _loc19_:* = §§pop();
                                                                        §§push(this.§`!'§);
                                                                        if(_loc27_ || _loc2_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(§§pop() * _loc19_);
                                                                              if(!(_loc26_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        var _loc20_:* = §§pop();
                                                                        §§push(this.§1!+§);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc21_:* = §§pop();
                                                                        if(!(_loc26_ && param1))
                                                                        {
                                                                           §§push(param1.§`"§);
                                                                           if(!(_loc26_ && _loc3_))
                                                                           {
                                                                              §§push(this.§-i§);
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc18_ = §§pop();
                                                                                       addr661:
                                                                                       loop44:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(b2Math);
                                                                                          §§push(this.§1!+§);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                addr630:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(_loc18_);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                }
                                                                                             }
                                                                                             §§pop().§1!+§ = §§pop().§[$§(§§pop(),§§pop(),_loc18_);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                {
                                                                                                   §§push(this.§1!+§);
                                                                                                   continue loop43;
                                                                                                }
                                                                                                continue loop44;
                                                                                                addr538:
                                                                                                if(!(_loc27_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   loop50:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc26_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(_loc20_);
                                                                                                            if(_loc27_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop51:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop52:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr570:
                                                                                                                     addr615:
                                                                                                                     loop53:
                                                                                                                     while(!(_loc26_ && param1))
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    continue loop53;
                                                                                                                                 }
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    continue loop52;
                                                                                                                                 }
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(!(_loc26_ && this))
                                                                                                                                 {
                                                                                                                                    continue loop51;
                                                                                                                                 }
                                                                                                                                 addr695:
                                                                                                                                 addr695:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr728:
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc26_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             addr724:
                                                                                                                                             §§push(§§pop() * _loc15_);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr728);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr525:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr616:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc20_ = §§pop();
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc22_:* = §§pop();
                                                                                                                        §§push(_loc8_.y);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(_loc27_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr760:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!(_loc26_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr768:
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                addr773:
                                                                                                                                                addr771:
                                                                                                                                                addr772:
                                                                                                                                                §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                var _loc23_:* = §§pop();
                                                                                                                                                §§push(b2Math);
                                                                                                                                                §§push(this.§!i§);
                                                                                                                                                §§push(§§findproperty(b2Vec2));
                                                                                                                                                §§push(_loc22_);
                                                                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                                §§push(_loc23_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                                var _loc24_:b2Vec2 = §§pop().§2!b§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                var _loc25_:b2Vec2 = this.§!j§.Copy();
                                                                                                                                                if(!(_loc26_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§!j§);
                                                                                                                                                   loop32:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§4!0§(_loc24_);
                                                                                                                                                      loop33:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§`"§);
                                                                                                                                                         if(!(_loc26_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§2!W§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr904:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               addr860:
                                                                                                                                                               if(_loc26_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() > §§pop() * _loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§!j§);
                                                                                                                                                                     loop42:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().Normalize());
                                                                                                                                                                        addr880:
                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        addr905:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           addr906:
                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 do
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§!j§);
                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(false);
                                                                                                                                                                                 
                                                                                                                                                                                 addr915:
                                                                                                                                                                                 _loc24_ = b2Math.§;v§(this.§!j§,_loc25_);
                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(!(_loc26_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr1115:
                                                                                                                                                                                    addr1134:
                                                                                                                                                                                    addr1116:
                                                                                                                                                                                    addr1133:
                                                                                                                                                                                    addr1117:
                                                                                                                                                                                    addr1128:
                                                                                                                                                                                    addr1130:
                                                                                                                                                                                    addr1132:
                                                                                                                                                                                    addr1131:
                                                                                                                                                                                    addr1135:
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    §§push(_loc24_.y);
                                                                                                                                                                                    if(_loc27_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1127:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc7_ = Number(§§pop() - §§pop() * (§§pop() - §§pop() * _loc24_.x));
                                                                                                                                                                                    addr1136:
                                                                                                                                                                                    addr1189:
                                                                                                                                                                                    if(!(_loc26_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          §§push(_loc8_.x);
                                                                                                                                                                                          if(!(_loc26_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          §§push(_loc8_.y);
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          addr1092:
                                                                                                                                                                                          addr1112:
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc24_.y);
                                                                                                                                                                                                         if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc26_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1016:
                                                                                                                                                                                                                  if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc24_.x);
                                                                                                                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc27_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1044:
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1047:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1059:
                                                                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1067:
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                addr1075:
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                   addr946:
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr946);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            return;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1136);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1092);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1075);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1112);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1115);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1134);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1067);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1116);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1133);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1117);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1128);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1130);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1132);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1044);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1131);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1036);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1127);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1016);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1047);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1135);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1059);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1189);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1175:
                                                                                                                                                                                    §§goto(addr1175);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1092);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr879:
                                                                                                                                                                  }
                                                                                                                                                                  while(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§!j§);
                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§%!U§(_loc18_);
                                                                                                                                                                        if(_loc26_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr833);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr879);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr906);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr915);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr905);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr908);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr773);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr771);
                                                                                                                                    }
                                                                                                                                    §§goto(addr773);
                                                                                                                                 }
                                                                                                                                 §§goto(addr760);
                                                                                                                              }
                                                                                                                              §§goto(addr772);
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                        }
                                                                                                                        §§goto(addr768);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr616);
                                                                                                                        §§goto(addr570);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr687:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc26_ && this))
                                                                                                            {
                                                                                                               §§goto(addr695);
                                                                                                            }
                                                                                                            §§goto(addr724);
                                                                                                         }
                                                                                                         §§goto(addr695);
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc8_.x);
                                                                                                if(!(_loc26_ && this))
                                                                                                {
                                                                                                   break loop31;
                                                                                                }
                                                                                                §§goto(addr729);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr630);
                                                                                       }
                                                                                    }
                                                                                    addr660:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(_loc9_);
                                                                              if(!(_loc26_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 if(!(_loc26_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr687);
                                                                                 }
                                                                              }
                                                                              §§goto(addr724);
                                                                           }
                                                                           §§goto(addr660);
                                                                        }
                                                                        §§goto(addr661);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr441);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               continue loop23;
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop20;
                                                      }
                                                      continue loop17;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 addr432:
                                 §§push(§§pop() - §§pop());
                                 if(_loc27_ || this)
                                 {
                                    §§goto(addr440);
                                 }
                                 §§goto(addr441);
                              }
                           }
                           §§goto(addr424);
                        }
                        §§goto(addr440);
                     }
                  }
                  §§goto(addr342);
               }
               §§goto(addr316);
            }
            §§goto(addr292);
         }
         §§goto(addr113);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
