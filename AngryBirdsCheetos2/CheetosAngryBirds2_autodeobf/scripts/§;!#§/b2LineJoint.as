package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § do§:b2Vec2;
      
      private var §@!a§:b2Vec2;
      
      private var §2d§:b2Vec2;
      
      private var §%!&§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §5!R§:b2Mat22;
      
      private var §==§:b2Vec2;
      
      private var §>!§:Number;
      
      private var §+!$§:Number;
      
      private var §1c§:Number;
      
      private var §,I§:Number;
      
      private var §99§:Number;
      
      private var §`W§:Number;
      
      private var §3!e§:Boolean;
      
      private var §2!c§:Boolean;
      
      private var §,=§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(true)
               {
                  this.§ do§ = new b2Vec2();
                  while(true)
                  {
                     this.§@!a§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§2d§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§%!&§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§5!R§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§==§ = new b2Vec2();
                                 while(true)
                                 {
                                    super(param1);
                                    addr272:
                                    while(!_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                    addr118:
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    this.§3!e§ = param1.§ c§;
                                    loop25:
                                    while(!_loc6_)
                                    {
                                       continue loop6;
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc6_ && param1)
                                          {
                                             continue loop25;
                                          }
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          this.§,=§ = b2internal::9!d;
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop26;
                                          }
                                          while(_loc5_ || this)
                                          {
                                             this.§,I§ = param1.§7o§;
                                             §§goto(addr139);
                                          }
                                          §§goto(addr178);
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       this.§ do§.SetV(param1.§=L§);
                                       §§goto(addr246);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§1c§ = param1.§&#§;
                     §§goto(addr156);
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§==§.x);
            if(_loc2_ || param1)
            {
               §§push(this.§%!&§.x);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§+!$§);
                     if(_loc2_ || this)
                     {
                        §§push(this.§==§.y);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this.§2d§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr87:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          addr90:
                                          §§push(this.§==§.x);
                                          if(!_loc3_)
                                          {
                                             addr95:
                                             §§push(this.§%!&§.y);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_ || param1)
                                                {
                                                   addr108:
                                                   §§push(this.§+!$§);
                                                   if(!_loc3_)
                                                   {
                                                      addr112:
                                                      §§push(this.§==§.y);
                                                      if(_loc2_ || this)
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr112);
                     }
                     addr140:
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        addr138:
                        §§push(§§pop() * this.§2d§.y);
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                  }
                  §§goto(addr90);
               }
               §§goto(addr95);
            }
            §§goto(addr90);
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§==§.y;
         }
      }
      
      public function § !Q§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_ || _loc3_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc10_ && _loc2_))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc11_)
               {
                  addr78:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§?!4§(this.§ do§)).x);
               if(_loc11_)
               {
                  §§push(_loc6_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc10_)
                     {
                        §§push(_loc8_.y);
                        if(!_loc11_)
                        {
                        }
                        §§goto(addr124);
                     }
                     §§push(§§pop());
                  }
                  addr124:
                  §§push(§§pop() * _loc7_);
                  if(!(_loc10_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc10_)
                     {
                        addr122:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr122);
            }
            §§goto(addr78);
         }
         §§goto(addr52);
      }
      
      public function §,&§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_ || _loc1_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc22_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc21_ && this))
            {
               §§push(_loc4_);
               if(_loc22_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc21_ && this))
                  {
                     addr95:
                     §§push(_loc3_.col2.x);
                     if(_loc22_)
                     {
                        addr102:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(!_loc21_)
                        {
                           addr105:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(!(_loc21_ && _loc2_))
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc22_ || _loc1_)
                           {
                              §§push(_loc4_);
                              if(_loc22_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc22_)
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(!_loc21_)
                                    {
                                       addr142:
                                       §§push(§§pop() + §§pop() * _loc5_);
                                       if(_loc22_)
                                       {
                                          addr145:
                                          §§push(Number(§§pop()));
                                          if(_loc22_ || _loc2_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc22_)
                                             {
                                                addr156:
                                                §§push(_loc6_);
                                                if(_loc22_)
                                                {
                                                   addr160:
                                                   _loc4_ = Number(§§pop());
                                                }
                                                §§goto(addr160);
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(_loc22_ || _loc1_)
                                                {
                                                   addr183:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!(_loc21_ && _loc1_))
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                   if(!_loc21_)
                                                   {
                                                      addr202:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!_loc21_)
                                                   {
                                                      §§push(_loc3_.col1);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc21_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc3_.col2);
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr304:
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc22_ || _loc2_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    addr318:
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.col1);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             loop7:
                                                                                             for(; _loc22_ || _loc1_; if(!(_loc21_ && _loc1_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§push(_loc1_.m_sweep.c.x);
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr335);
                                                                                                }
                                                                                                §§push(_loc4_);
                                                                                                break loop3;
                                                                                             })
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc22_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.col2);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc21_ && _loc3_)
                                                                                                               {
                                                                                                                  break loop3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr264:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  while(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc21_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     addr334:
                                                                                                                     addr334:
                                                                                                                     addr335:
                                                                                                                     addr335:
                                                                                                                     addr335:
                                                                                                                     var _loc9_:Number = §§pop();
                                                                                                                     §§push(_loc1_.m_sweep.c.y);
                                                                                                                     if(_loc22_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc5_);
                                                                                                                        if(_loc22_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr366:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc10_:* = §§pop();
                                                                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc7_);
                                                                                                                           if(_loc22_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr383:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc11_:* = §§pop();
                                                                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc8_);
                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr400:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc12_:* = §§pop();
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc22_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc9_);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    addr414:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc13_:* = §§pop();
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc10_);
                                                                                                                                    if(_loc22_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc14_:* = §§pop();
                                                                                                                                 var _loc15_:b2Vec2 = _loc1_.§?!4§(this.§ do§);
                                                                                                                                 var _loc16_:b2Vec2 = _loc1_.§2!@§;
                                                                                                                                 var _loc17_:b2Vec2 = _loc2_.§2!@§;
                                                                                                                                 §§push(_loc1_.m_angularVelocity);
                                                                                                                                 if(_loc22_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc18_:* = §§pop();
                                                                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc19_:* = §§pop();
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(!(_loc21_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_.y);
                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr632);
                                                                                                                                                }
                                                                                                                                                §§goto(addr707);
                                                                                                                                             }
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                             {
                                                                                                                                                addr516:
                                                                                                                                                §§push(_loc15_.x);
                                                                                                                                                if(_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr528:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_.x);
                                                                                                                                                            if(_loc22_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr548:
                                                                                                                                                               §§push(_loc17_.x);
                                                                                                                                                               if(!(_loc21_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr557:
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(!(_loc21_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_.x);
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr586:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr589:
                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                       if(_loc22_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr597:
                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr600:
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             if(_loc22_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc22_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr624);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr636);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr648);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr674);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr624:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr632:
                                                                                                                                                                                       §§push(_loc15_.y);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr636:
                                                                                                                                                                                          §§push(_loc17_.y);
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr640:
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             if(_loc22_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr648:
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr654);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr684);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr654);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr674);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr654:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_.y);
                                                                                                                                                                                          if(_loc22_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc22_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr674:
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(_loc22_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr684:
                                                                                                                                                                                                   §§push(§§pop() - §§pop() * _loc4_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr684);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr684);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                       if(_loc22_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr709);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr600);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr589);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr597);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr648);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr654);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr640);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr709);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr707);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr548);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr557);
                                                                                                                                                }
                                                                                                                                                §§goto(addr586);
                                                                                                                                             }
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                          §§goto(addr516);
                                                                                                                                       }
                                                                                                                                       §§goto(addr632);
                                                                                                                                    }
                                                                                                                                    addr709:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       addr707:
                                                                                                                                       return Number(§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr707);
                                                                                                                              }
                                                                                                                              §§goto(addr414);
                                                                                                                           }
                                                                                                                           §§goto(addr400);
                                                                                                                        }
                                                                                                                        §§goto(addr383);
                                                                                                                     }
                                                                                                                     §§goto(addr366);
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                                  addr287:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr317:
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc21_ && _loc3_)
                                                                        {
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr105);
               }
               §§goto(addr102);
            }
            §§goto(addr95);
         }
         §§goto(addr43);
      }
      
      public function §>!L§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::6z.SetAwake(true);
            while(true)
            {
               b2internal::3D.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§3!e§ = param1;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §+!I§() : Number
      {
         return this.§1c§;
      }
      
      public function §`m§() : Number
      {
         return this.§,I§;
      }
      
      public function §64§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            b2internal::6z.SetAwake(true);
            while(true)
            {
               b2internal::3D.SetAwake(true);
               while(true)
               {
                  this.§1c§ = param1;
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            this.§,I§ = param2;
            if(!(_loc4_ && _loc3_))
            {
               if(!(_loc4_ && param1))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      public function §;!c§() : Boolean
      {
         return this.§2!c§;
      }
      
      public function §#<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            b2internal::6z.SetAwake(true);
         }
         while(true)
         {
            b2internal::3D.SetAwake(true);
            while(!_loc3_)
            {
               this.§2!c§ = param1;
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::6z.SetAwake(true);
            while(true)
            {
               b2internal::3D.SetAwake(true);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§`W§ = param1;
            if(!(_loc2_ && param1))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function § U§() : Number
      {
         return this.§`W§;
      }
      
      public function §1!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::6z.SetAwake(true);
            while(true)
            {
               b2internal::3D.SetAwake(true);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§99§ = param1;
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;!V§() : Number
      {
         return this.§99§;
      }
      
      public function §>4§() : Number
      {
         return this.§+!$§;
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
