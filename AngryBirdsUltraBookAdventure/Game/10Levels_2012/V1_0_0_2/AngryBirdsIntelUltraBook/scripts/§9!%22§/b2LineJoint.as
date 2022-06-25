package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §;!3§:b2Vec2;
      
      private var §"A§:b2Vec2;
      
      private var §]]§:b2Vec2;
      
      private var §^^§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!u§:b2Mat22;
      
      private var §,!2§:b2Vec2;
      
      private var §<M§:Number;
      
      private var §8t§:Number;
      
      private var §,8§:Number;
      
      private var §9D§:Number;
      
      private var §&e§:Number;
      
      private var §&?§:Number;
      
      private var §5,§:Boolean;
      
      private var §-!>§:Boolean;
      
      private var §>!X§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
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
               while(true)
               {
                  this.§;!3§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§"A§ = new b2Vec2();
                     while(true)
                     {
                        this.§]]§ = new b2Vec2();
                        addr335:
                        while(true)
                        {
                           this.§^^§ = new b2Vec2();
                           continue loop0;
                        }
                        addr268:
                        while(_loc5_ || param1)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr175);
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
         if(_loc2_ || this)
         {
            §§push(this.§,!2§.x);
            if(_loc2_)
            {
               §§push(this.§^^§.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(this.§8t§);
                     if(!_loc3_)
                     {
                        §§push(this.§,!2§.y);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this.§]]§.x);
                              if(!_loc3_)
                              {
                                 addr70:
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr78:
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr81:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          addr85:
                                          §§push(this.§,!2§.x);
                                          if(_loc2_)
                                          {
                                             addr90:
                                             §§push(this.§^^§.y);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr100:
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_ || this)
                                                {
                                                   addr108:
                                                   §§push(this.§8t§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§,!2§.y);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                      addr144:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr140:
                                                         §§push(this.§]]§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr140);
                                                }
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr81);
               }
               §§goto(addr78);
            }
            §§goto(addr85);
         }
         §§goto(addr81);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§,!2§.y;
         }
      }
      
      public function §<!0§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6!G;
         var _loc2_:b2Body = b2internal::0!w;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || _loc3_)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!_loc11_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc11_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§!!U§(this.§;!3§)).x);
            if(_loc10_ || _loc3_)
            {
               §§push(_loc6_);
               if(_loc10_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc8_.y);
                     if(_loc10_ || _loc1_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc11_ && this))
                           {
                              addr146:
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop());
                        }
                     }
                  }
                  §§goto(addr146);
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr146);
         }
         §§goto(addr56);
      }
      
      public function §4!f§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6!G;
         var _loc2_:b2Body = b2internal::0!w;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc21_ && this))
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc21_ && _loc3_))
            {
               §§push(_loc4_);
               if(_loc22_ || this)
               {
                  addr100:
                  §§push(§§pop() * §§pop());
                  if(!(_loc21_ && _loc1_))
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc22_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                  }
                  var _loc6_:* = Number(§§pop());
                  if(_loc22_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc21_ && _loc2_))
                     {
                        §§push(_loc4_);
                        if(_loc22_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc21_)
                           {
                              §§push(_loc3_.col2.y);
                              if(!(_loc21_ && this))
                              {
                                 addr135:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc21_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc21_ && this))
                                 {
                                    addr153:
                                    _loc5_ = §§pop();
                                    if(_loc22_ || this)
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
                                       if(_loc22_ || _loc1_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(!(_loc21_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!(_loc21_ && this))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(_loc22_ || _loc3_)
                                          {
                                             addr217:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          if(_loc22_)
                                          {
                                             §§push(_loc3_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc21_ && _loc1_))
                                                            {
                                                               §§push(_loc8_);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.col1);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       if(!(_loc22_ || this))
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc21_ && this))
                                                                                       {
                                                                                          addr272:
                                                                                          §§push(_loc3_.col2);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc21_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc22_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc21_ && this)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                      {
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      addr226:
                                                                                                      if(_loc21_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc21_ && this))
                                                                                                      {
                                                                                                         addr241:
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_.m_sweep.c.x);
                                                                                                                  if(!(_loc21_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr375:
                                                                                                                     §§push(_loc4_);
                                                                                                                     break loop9;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            addr384:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop7;
                                                                                                            addr244:
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr375);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                              addr376:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc22_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr384);
                                                                              }
                                                                              break loop7;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     §§push(_loc1_.m_sweep.c.y);
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(§§pop() + _loc5_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(_loc2_.m_sweep.c.x);
                                                                     if(!(_loc21_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() + _loc7_);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc2_.m_sweep.c.y);
                                                                     if(_loc22_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + _loc8_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc11_);
                                                                     if(_loc22_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(_loc22_ || _loc2_)
                                                                        {
                                                                           addr454:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc13_:* = §§pop();
                                                                        §§push(_loc12_);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() - _loc10_);
                                                                           if(_loc22_)
                                                                           {
                                                                              addr468:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc14_:* = §§pop();
                                                                           var _loc15_:b2Vec2 = _loc1_.§!!U§(this.§;!3§);
                                                                           var _loc16_:b2Vec2 = _loc1_.§^O§;
                                                                           var _loc17_:b2Vec2 = _loc2_.§^O§;
                                                                           §§push(_loc1_.m_angularVelocity);
                                                                           if(_loc22_ || _loc2_)
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
                                                                           if(_loc22_ || _loc3_)
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(_loc22_ || _loc3_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc22_ || this)
                                                                                 {
                                                                                    §§push(_loc15_.y);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc22_ || this)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr543:
                                                                                                §§push(_loc18_);
                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                {
                                                                                                   addr551:
                                                                                                   §§push(_loc15_.x);
                                                                                                   if(!(_loc21_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            addr566:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               addr569:
                                                                                                               §§push(_loc15_.x);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr573:
                                                                                                                  §§push(_loc17_.x);
                                                                                                                  if(!(_loc21_ && this))
                                                                                                                  {
                                                                                                                     addr582:
                                                                                                                     §§push(_loc19_);
                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           addr593:
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc22_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc22_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc22_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr617:
                                                                                                                                    §§push(_loc16_.x);
                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          addr629:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             addr632:
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr641:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc22_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr657:
                                                                                                                                                            §§push(_loc15_.y);
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_.y);
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr665:
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_.y);
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr686:
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc22_ || _loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr715);
                                                                                                                                                                              }
                                                                                                                                                                              addr714:
                                                                                                                                                                              addr715:
                                                                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                              if(!(_loc21_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr724:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr727:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              var _loc20_:* = §§pop();
                                                                                                                                                                              return §§pop();
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr712:
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr714);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr712);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr714);
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr686);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr724);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr686);
                                                                                                                                                }
                                                                                                                                                §§goto(addr712);
                                                                                                                                             }
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                          §§goto(addr665);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr686);
                                                                                                                           }
                                                                                                                           §§goto(addr714);
                                                                                                                        }
                                                                                                                        §§goto(addr632);
                                                                                                                     }
                                                                                                                     §§goto(addr593);
                                                                                                                  }
                                                                                                                  §§goto(addr617);
                                                                                                               }
                                                                                                               §§goto(addr724);
                                                                                                            }
                                                                                                            §§goto(addr727);
                                                                                                         }
                                                                                                         §§goto(addr657);
                                                                                                      }
                                                                                                      §§goto(addr582);
                                                                                                   }
                                                                                                   §§goto(addr665);
                                                                                                }
                                                                                                §§goto(addr629);
                                                                                             }
                                                                                             §§goto(addr724);
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    §§goto(addr551);
                                                                                 }
                                                                                 §§goto(addr543);
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr569);
                                                                        }
                                                                        §§goto(addr468);
                                                                     }
                                                                     §§goto(addr454);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr384);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr166);
                                 }
                              }
                              §§goto(addr165);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr135);
                     }
                  }
                  §§goto(addr165);
               }
               §§push(§§pop() + §§pop());
               if(!_loc22_)
               {
               }
            }
            §§goto(addr100);
         }
         §§goto(addr43);
      }
      
      public function §1!B§() : Boolean
      {
         return this.§5,§;
      }
      
      public function §?j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               while(_loc3_)
               {
                  this.§5,§ = param1;
                  if(!_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §"r§() : Number
      {
         return this.§,8§;
      }
      
      public function §]!u§() : Number
      {
         return this.§9D§;
      }
      
      public function §7_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               while(_loc4_)
               {
                  this.§,8§ = param1;
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     while(true)
                     {
                        this.§9D§ = param2;
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §>o§() : Boolean
      {
         return this.§-!>§;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.§-!>§ = param1;
            if(_loc2_ || _loc2_)
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §[>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::6!G.SetAwake(true);
         }
         while(true)
         {
            b2internal::0!w.SetAwake(true);
            while(!(_loc2_ && param1))
            {
               this.§&?§ = param1;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §1!V§() : Number
      {
         return this.§&?§;
      }
      
      public function §1z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§&e§ = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §8!a§() : Number
      {
         return this.§&e§;
      }
      
      public function §!!^§() : Number
      {
         return this.§8t§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc5_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         if(!(_loc24_ && this))
         {
            b2internal::'!.SetV(_loc2_.§ !&§());
            if(_loc23_)
            {
               addr50:
               b2internal::6!#.SetV(_loc3_.§ !&§());
            }
            var _loc6_:b2Transform = _loc2_.§2!0§();
            var _loc7_:b2Transform = _loc3_.§2!0§();
            _loc4_ = _loc2_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(!(_loc24_ && _loc2_))
            {
               §§push(§§pop() - b2internal::'!.x);
               if(!(_loc24_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc24_)
            {
               §§push(§§pop() - b2internal::'!.y);
               if(!(_loc24_ && _loc2_))
               {
                  addr104:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               if(_loc23_)
               {
                  §§push(_loc4_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop1:
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc23_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_.col2);
                              addr221:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       addr230:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    addr229:
                                 }
                                 addr231:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc23_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    addr235:
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr236:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr167:
                              if(_loc24_ && this)
                              {
                                 continue;
                              }
                              §§push(_loc8_);
                              if(_loc23_)
                              {
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(_loc4_.col2);
                                    if(!(_loc23_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    if(_loc23_)
                                    {
                                       while(!_loc24_)
                                       {
                                          §§push(_loc9_);
                                          if(_loc23_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop11:
                                                   while(!(_loc24_ && this))
                                                   {
                                                      _loc9_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc23_)
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop11;
                                                         }
                                                         addr137:
                                                         _loc8_ = §§pop();
                                                         if(!_loc23_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc23_ || param1)
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc4_ = _loc3_.m_xf.R;
                                                            §§push(this.m_localAnchor2.x);
                                                            if(!_loc24_)
                                                            {
                                                               §§push(§§pop() - b2internal::6!#.x);
                                                               if(!(_loc24_ && param1))
                                                               {
                                                                  addr257:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(this.m_localAnchor2.y);
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(§§pop() - b2internal::6!#.y);
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     addr274:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc23_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc23_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc4_.col2);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr428:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc24_ && this))
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                       var _loc12_:* = §§pop();
                                                                                       §§push(_loc3_.m_sweep.c.y);
                                                                                       if(_loc23_ || _loc2_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc24_ && param1))
                                                                                             {
                                                                                                addr465:
                                                                                                §§push(_loc2_.m_sweep.c.y);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc23_ || param1)
                                                                                                   {
                                                                                                      addr480:
                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                      if(!(_loc24_ && param1))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr480);
                                                                                             }
                                                                                             var _loc13_:* = §§pop();
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                §9k§ = _loc2_.§7n§;
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §,!J§ = _loc3_.§7n§;
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §8-§ = _loc2_.§;5§;
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §]+§ = _loc3_.§;5§;
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§]]§.SetV(b2Math.§'q§(_loc6_.R,this.§;!3§));
                                                                                                            continue loop24;
                                                                                                            addr607:
                                                                                                            if(_loc24_ && _loc2_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            do
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc23_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(this.§^^§.y);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr582:
                                                                                                                           §§pop().m_s1 = §§pop();
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(this.§^^§.y);
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(!(_loc24_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr524:
                                                                                                                                                §§push(§§pop() * this.§^^§.x);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr524);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(!_loc24_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§<M§ = b2internal::9k + b2internal::,!J + b2internal::8- * this.m_a1 * this.m_a1 + b2internal::]+ * this.m_a2 * this.m_a2;
                                                                                                                                             break loop35;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop25;
                                                                                                                                       addr714:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr607);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(_loc23_)
                                                                                                                                    {
                                                                                                                                       this.§^^§.SetV(b2Math.§'q§(_loc6_.R,this.§"A§));
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]]§.y);
                                                                                                                                          if(_loc23_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr705:
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr712:
                                                                                                                                                   §§push(§§pop() - §§pop() * this.§]]§.x);
                                                                                                                                                }
                                                                                                                                                §§goto(addr712);
                                                                                                                                             }
                                                                                                                                             §§pop().m_a2 = §§pop();
                                                                                                                                             §§goto(addr714);
                                                                                                                                          }
                                                                                                                                          §§goto(addr712);
                                                                                                                                       }
                                                                                                                                       §§goto(addr705);
                                                                                                                                    }
                                                                                                                                    addr657:
                                                                                                                                    addr771:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           while(!_loc24_)
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              §§push(this);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(this.§<M§);
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() > Number.MIN_VALUE)
                                                                                                                                    {
                                                                                                                                       addr632:
                                                                                                                                       §§push(1 / this.§<M§);
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc23_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             addr655:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr646:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr646);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc23_ || this)
                                                                                                                                       {
                                                                                                                                          §§goto(addr655);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().§<M§ = §§pop();
                                                                                                                                    §§goto(addr657);
                                                                                                                                 }
                                                                                                                                 §§goto(addr646);
                                                                                                                              }
                                                                                                                              §§goto(addr632);
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        addr577:
                                                                                                                        §§goto(addr582);
                                                                                                                        §§push(§§pop() - §§pop() * this.§^^§.x);
                                                                                                                     }
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr577);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr577);
                                                                                                               }
                                                                                                               §§goto(addr582);
                                                                                                            }
                                                                                                            while(false);
                                                                                                            
                                                                                                            var _loc14_:Number = b2internal::9k;
                                                                                                            var _loc15_:Number = b2internal::,!J;
                                                                                                            var _loc16_:Number = b2internal::8-;
                                                                                                            var _loc17_:Number = b2internal::]+;
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(this.§^!u§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().col1);
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     loop38:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.m_s1);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_s1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr1996:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr1997:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc17_);
                                                                                                                                                addr1998:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_s2);
                                                                                                                                                   addr2000:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr2001:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_s2);
                                                                                                                                                         addr2003:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1995:
                                                                                                                                    }
                                                                                                                                    loop40:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       loop41:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr2006:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§^!u§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().col1);
                                                                                                                                                if(!(_loc23_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      continue loop41;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.m_s1);
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            §§push(this.m_a1);
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1895:
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.m_s2);
                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1931:
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1935:
                                                                                                                                                                                          §§push(this.m_a2);
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1938:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc23_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1946:
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§^!u§);
                                                                                                                                                                                                loop45:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().col2);
                                                                                                                                                                                                   addr1833:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§^!u§.col1.y);
                                                                                                                                                                                                      addr1837:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr2003);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1938);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1995);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2000);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1935);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1938);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1946);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1996);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1931);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1997);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1895);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1938);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1895);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2001);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr2000);
                                                                                                                              }
                                                                                                                              §§goto(addr1996);
                                                                                                                           }
                                                                                                                           §§goto(addr1997);
                                                                                                                        }
                                                                                                                        §§goto(addr1996);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!(_loc23_ || param1))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop().col2);
                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.m_a1);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1788:
                                                                                                                                          §§push(this.m_a1);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                addr1795:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr1803:
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_a2);
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1826:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.m_a2);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§5,§);
                                                                                                                                                            loop50:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§]]§.x);
                                                                                                                                                                     loop51:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        loop52:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop53:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§]]§.y);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1718:
                                                                                                                                                                              }
                                                                                                                                                                              loop55:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                    loop106:
                                                                                                                                                                                    while(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop107:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                                                                          loop80:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§,!2§);
                                                                                                                                                                                             loop135:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.m_s2);
                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1115:
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop107;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§8t§);
                                                                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§,!2§);
                                                                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1175:
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1179:
                                                                                                                                                                                                                                                   §§push(this.m_a2);
                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1189:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1213:
                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1225:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop106;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1236:
                                                                                                                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                       loop136:
                                                                                                                                                                                                                                                                                       while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc2_.§^O§);
                                                                                                                                                                                                                                                                                             loop137:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc2_.§^O§);
                                                                                                                                                                                                                                                                                                loop138:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(b2internal::9k * _loc19_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1085:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop140:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                      loop114:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc2_.§^O§);
                                                                                                                                                                                                                                                                                                         loop115:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc2_.§^O§);
                                                                                                                                                                                                                                                                                                            loop116:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               loop117:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop140;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(b2internal::9k * _loc20_);
                                                                                                                                                                                                                                                                                                                  loop118:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                     loop119:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                        loop73:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop80;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - b2internal::8- * _loc21_);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop136;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc3_.§^O§);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§^O§);
                                                                                                                                                                                                                                                                                                                                 addr969:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc23_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop116;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc23_ || param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop138;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(b2internal::,!J * _loc19_);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc23_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop118;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop118;
                                                                                                                                                                                                                                                                                                                                             addr1013:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop117;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop119;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                       continue loop74;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1036:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§^O§);
                                                                                                                                                                                                                                                                                                                                 continue loop116;
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop115;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop137;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§^O§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(b2internal::,!J * _loc20_);
                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1085);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1013);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop114;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + b2internal::]+ * _loc22_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                                                                                          loop120:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop74;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      loop65:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         loop66:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            loop67:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1573:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§-!>§);
                                                                                                                                                                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(§§pop() == false)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 this.§8t§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                 addr1592:
                                                                                                                                                                                                                                                                                                                                                                                 loop70:
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    loop71:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(param1.§[8§);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop69;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                             addr1557:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                   loop109:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                      loop110:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(param1.§87§);
                                                                                                                                                                                                                                                                                                                                                                                                               loop111:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  loop112:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1570:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1627:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop110;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(param1.§87§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1529:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          break loop136;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop112;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop111;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    break loop70;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1572);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1572:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1613:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1627:
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1503:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1619:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop71;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1627);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1651:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1626:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1627);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr1625:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1626);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1555:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop135;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§`!5§();
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop73;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§>!X§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop() != b2internal::#!F)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               this.§>!X§ = b2internal::#!F;
                                                                                                                                                                                                                                                                                                                                                                                                               addr1644:
                                                                                                                                                                                                                                                                                                                                                                                                               while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1625);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2006);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1641:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1613);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1669:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop() != b2internal::1!i)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               break loop69;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1669:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr1635:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                               addr1433:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§^^§);
                                                                                                                                                                                                                                                                                                                                                                                                                  loop123:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                     loop124:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§8t§);
                                                                                                                                                                                                                                                                                                                                                                                                                           loop126:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1448:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1449:
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1450:
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1659:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§]]§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1455:
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1456:
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1457:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(2 * b2Settings.b2_linearSlop);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      break loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1674:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1669);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1667:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1651);
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1352:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§^^§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop123;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      loop86:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      for(; !(_loc24_ && this); while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc23_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      },continue loop55)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop126;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§8t§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               loop88:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop52;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1411:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           loop91:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§]]§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1426:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    loop94:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1427:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1428:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1259:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             loop97:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.m_s1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§8t§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1307:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1718);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1302:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop106;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop94;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1460);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1274:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1352);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1350:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1625);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1326:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop106;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop91;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1454);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           this.§>!X§ = b2internal::+!t;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break loop88;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1635);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1634:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1613);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1619);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1632:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1634);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop123;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1360:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1674:
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1669);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop135;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           this.§>!X§ = b2internal::'!E;
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1693:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1838);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1432:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                      addr1541:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§8t§);
                                                                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * param1.§87§);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().§8t§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1644);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1432);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1619);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1611);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1592:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1947);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1592);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1542);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     this.§>!X§ = b2internal::1!i;
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1674);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr828);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1592);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1693);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1469:
                                                                                                                                                                                                                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1611);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1690);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop140;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(b2Math);
                                                                                                                                                                                                                                                                                                §§push(this.§9D§);
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - this.§,8§);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1729:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1685);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1541);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1674);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1570);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1433);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1360);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1457);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1426);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1274);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1225);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1283);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1302);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1310);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1449);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1307);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1456);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1189);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1411);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1326);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1179);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1448);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1410);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1306);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1334);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1175);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1444);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1385);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1213);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1189);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1427);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1115);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1259);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1659);
                                                                                                                                                                                                §§goto(addr1236);
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
                                                                                                                                                                  §§goto(addr1729);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  this.§>!X§ = b2internal::+!t;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1606);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1826);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1826);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1795);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1826);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1788);
                                                                                                                              }
                                                                                                                              §§goto(addr1837);
                                                                                                                           }
                                                                                                                           §§goto(addr1803);
                                                                                                                        }
                                                                                                                        §§goto(addr1788);
                                                                                                                     }
                                                                                                                     §§goto(addr1803);
                                                                                                                  }
                                                                                                                  §§goto(addr1833);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1667);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr716);
                                                                                          }
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       §§goto(addr465);
                                                                                       addr392:
                                                                                    }
                                                                                    addr395:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr396:
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc5_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          addr293:
                                                                                          if(!(_loc23_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          _loc10_ = §§pop();
                                                                                          if(!(_loc23_ || _loc3_))
                                                                                          {
                                                                                             loop172:
                                                                                             while(_loc23_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr283:
                                                                                                   if(_loc23_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§goto(addr293);
                                                                                                      }
                                                                                                      addr413:
                                                                                                      §§push(_loc2_.m_sweep.c.x);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         addr419:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc23_ || _loc2_)
                                                                                                         {
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr366:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         continue loop172;
                                                                                                         §§goto(addr283);
                                                                                                      }
                                                                                                      addr366:
                                                                                                   }
                                                                                                }
                                                                                                break loop18;
                                                                                             }
                                                                                             §§goto(addr400);
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§push(_loc3_.m_sweep.c.x);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                §§goto(addr428);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                 }
                                                                                 addr388:
                                                                              }
                                                                           }
                                                                           §§goto(addr428);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr428);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr257);
                                                            addr147:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr236);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc23_ || _loc2_)
                                                         {
                                                            §§goto(addr167);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr137);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             addr196:
                                          }
                                          else
                                          {
                                             §§goto(addr230);
                                          }
                                       }
                                       §§goto(addr231);
                                       addr190:
                                    }
                                    §§goto(addr196);
                                    if(!(_loc23_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr190);
                           }
                        }
                        §§goto(addr229);
                     }
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr104);
         }
         §§goto(addr50);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         var _loc4_:b2Vec2 = _loc2_.§^O§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§^O§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc24_ && _loc3_))
         {
            §§push(this.§-!>§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§]]§.x);
                                 while(true)
                                 {
                                    §§push(_loc6_.x);
                                    while(true)
                                    {
                                       §§push(_loc4_.x);
                                       if(_loc23_ || _loc2_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc24_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(this.§]]§);
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc23_ || _loc2_)
                                                   {
                                                      §§push(_loc6_.y);
                                                      if(!_loc24_)
                                                      {
                                                         §§push(_loc4_.y);
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc24_ && this))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_a2);
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc24_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc23_)
                                                                              {
                                                                                 addr640:
                                                                                 §§push(this.m_a1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr644:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr645:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr643:
                                                                                    }
                                                                                    addr763:
                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                    addr767:
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       addr766:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§push(this.§5,§);
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc23_ || this)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§>!X§ == b2internal::+!t);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         addr801:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(this.§]]§.x);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.x);
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§]]§.y);
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr852:
                                                                                                                                    §§push(§§pop() - _loc4_.y);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(this.m_a2);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                addr872:
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr880:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc23_ || this)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr1676:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr1687:
                                                                                                                                                         _loc7_ = Number(§§pop());
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr1704:
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     addr1706:
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + b2internal::,!J * _loc9_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2internal::]+ * _loc11_);
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1676);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1906:
                                                                                                                                                                                       §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                          addr1885:
                                                                                                                                                                                          addr1911:
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                          §§push(this.§^^§);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1892:
                                                                                                                                                                                             _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                                                                             addr1872:
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1870:
                                                                                                                                                                                                §§push(Number(§§pop() * this.m_s1));
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1891:
                                                                                                                                                                                             addr1890:
                                                                                                                                                                                             addr1893:
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                addr1875:
                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1837:
                                                                                                                                                                                                         §§push(§§pop() * this.m_s2);
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1840:
                                                                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1848:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                     §§push(_loc4_.x);
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - b2internal::9k * _loc8_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     addr1858:
                                                                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                           §§push(_loc4_.y);
                                                                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - b2internal::9k * _loc9_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                           addr1802:
                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1760:
                                                                                                                                                                                                                              §§push(b2internal::8- * _loc10_);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1765:
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1775:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                                                                                                                             addr1783:
                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + b2internal::,!J * _loc8_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                addr1736:
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1706);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1915:
                                                                                                                                                                                                                                                      addr1912:
                                                                                                                                                                                                                                                      §§push(this.§,!2§);
                                                                                                                                                                                                                                                      §§push(this.§,!2§.x);
                                                                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + _loc22_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1905:
                                                                                                                                                                                                                                                         §§goto(addr1906);
                                                                                                                                                                                                                                                         §§push(this.§^^§.x);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1906);
                                                                                                                                                                                                                                                      addr1928:
                                                                                                                                                                                                                                                      addr1933:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1802);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1783);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1858);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1906);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1891);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1848);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1890);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1870);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1872);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1928);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1893);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1906);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1870);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1885);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1848);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1892);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1840);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1911);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1932:
                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                             §§goto(addr1933);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1905);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1931:
                                                                                                                                                                                       §§goto(addr1932);
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1837);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1760);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1802);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1775);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1687);
                                                                                                                                                                        addr1719:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1858);
                                                                                                                                                                  }
                                                                                                                                                                  addr1934:
                                                                                                                                                                  §§push(_loc2_.§^O§);
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().SetV(_loc4_);
                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                        addr1974:
                                                                                                                                                                        _loc3_.§^O§.SetV(_loc6_);
                                                                                                                                                                        addr1980:
                                                                                                                                                                        addr1957:
                                                                                                                                                                     }
                                                                                                                                                                     _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                     addr1976:
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1980);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                        addr1970:
                                                                                                                                                                     }
                                                                                                                                                                     addr1976:
                                                                                                                                                                     §§goto(addr1976);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1974);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1875);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1736);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1706);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1765);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1687);
                                                                                                                                                }
                                                                                                                                                addr906:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc23_ || this)
                                                                                                                                                {
                                                                                                                                                   addr914:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr920:
                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§,!2§);
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               _loc18_ = §§pop().Copy();
                                                                                                                                                               _loc19_ = this.§^!u§.§3!=§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr1581:
                                                                                                                                                                  this.§,!2§.§7x§(_loc19_);
                                                                                                                                                                  addr1583:
                                                                                                                                                                  if(this.§>!X§ == b2internal::1!i)
                                                                                                                                                                  {
                                                                                                                                                                     addr1577:
                                                                                                                                                                     this.§,!2§.y = b2Math.§0!_§(this.§,!2§.y,0);
                                                                                                                                                                     addr1539:
                                                                                                                                                                     _loc20_ = -_loc12_ - (this.§,!2§.y - _loc18_.y) * this.§^!u§.col2.x;
                                                                                                                                                                     addr1569:
                                                                                                                                                                     addr1578:
                                                                                                                                                                     addr1523:
                                                                                                                                                                     addr1538:
                                                                                                                                                                     addr1529:
                                                                                                                                                                     addr1531:
                                                                                                                                                                     addr1536:
                                                                                                                                                                     addr1537:
                                                                                                                                                                     addr1526:
                                                                                                                                                                     addr1532:
                                                                                                                                                                     addr1525:
                                                                                                                                                                     addr1540:
                                                                                                                                                                     addr1571:
                                                                                                                                                                     if(this.§^!u§.col1.x != 0)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1521:
                                                                                                                                                                           _loc21_ = Number(_loc20_ / this.§^!u§.col1.x + _loc18_.x);
                                                                                                                                                                           addr1470:
                                                                                                                                                                           addr1522:
                                                                                                                                                                           addr1512:
                                                                                                                                                                           addr1516:
                                                                                                                                                                           addr1519:
                                                                                                                                                                           addr1520:
                                                                                                                                                                           addr1517:
                                                                                                                                                                           §§push(this.§,!2§);
                                                                                                                                                                           if(_loc23_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       §§push(this.§,!2§.x);
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr1493:
                                                                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                §§push(this.§,!2§.y);
                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr1441:
                                                                                                                                                                                                §§push(_loc19_.x);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1398:
                                                                                                                                                                                                      §§push(this.§^^§.x);
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1402:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1409:
                                                                                                                                                                                                            §§push(_loc19_.y * this.§]]§.x);
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1413:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1416:
                                                                                                                                                                                                                  _loc8_ = Number(§§pop());
                                                                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1318:
                                                                                                                                                                                                                     §§push(_loc19_.x);
                                                                                                                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§^^§);
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1330:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc19_.y);
                                                                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§]]§);
                                                                                                                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1354:
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1369:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc23_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1378:
                                                                                                                                                                                                                                                §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc19_.x);
                                                                                                                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1240:
                                                                                                                                                                                                                                                               §§push(this.m_s1);
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1275:
                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1281:
                                                                                                                                                                                                                                                                                       §§push(this.m_a1);
                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1287:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1302:
                                                                                                                                                                                                                                                                                                   _loc10_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1173:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                           if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1200:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1203:
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - b2internal::9k * _loc8_);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - b2internal::9k * _loc9_);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1134:
                                                                                                                                                                                                                                                                                                                                       addr1218:
                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1083:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1088:
                                                                                                                                                                                                                                                                                                                                                §§push(b2internal::8- * _loc10_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1103:
                                                                                                                                                                                                                                                                                                                                                            _loc5_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + b2internal::,!J * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::,!J * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(b2internal::]+ * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1015:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1934);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1569);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1501:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1957);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1500:
                                                                                                                                                                                                                                                                                                                                                                                                                  _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1318);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1203);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1015);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1369);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1240);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1287);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1976);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1522);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1493);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1441);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1970);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1569);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1441);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1218);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1155:
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1416);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1302);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1378);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1281);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1287);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1200);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1578);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1552:
                                                                                                                                                                                                                                                                                                      §§push(this.§,!2§);
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1560:
                                                                                                                                                                                                                                                                                                         §§pop().y = b2Math.§>M§(this.§,!2§.y,0);
                                                                                                                                                                                                                                                                                                         addr1561:
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1523);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1583);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1581);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1976);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1512);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1378);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1409);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1354);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1516);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1409);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1521);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1413);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1302);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1569);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1519);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1409);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1499:
                                                                                                                                                                                                                                                            §§goto(addr1500);
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1330);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1302);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1976);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1538);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1529);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1531);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1536);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1409);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1537);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1369);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1526);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1398);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1402);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1974);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1520);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1532);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1539);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1409);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1525);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1517);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1561);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1540);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1974);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1577);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1560);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1571);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1552);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1976);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1499);
                                                                                                                                                                     §§push(_loc18_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§>!X§);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == b2internal::#!F)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1552);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1577);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1581);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1577);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1915);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1858);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1848);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr920);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1892);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                             {
                                                                                                                                                addr896:
                                                                                                                                                §§push(this.m_a1);
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr905:
                                                                                                                                                   §§goto(addr906);
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr914);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1837);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1931);
                                                                                                                                       }
                                                                                                                                       §§goto(addr905);
                                                                                                                                    }
                                                                                                                                    §§goto(addr906);
                                                                                                                                 }
                                                                                                                                 §§goto(addr880);
                                                                                                                              }
                                                                                                                              §§goto(addr872);
                                                                                                                           }
                                                                                                                           §§goto(addr1870);
                                                                                                                        }
                                                                                                                        §§goto(addr880);
                                                                                                                     }
                                                                                                                     §§goto(addr852);
                                                                                                                  }
                                                                                                                  §§goto(addr880);
                                                                                                               }
                                                                                                               §§goto(addr896);
                                                                                                            }
                                                                                                            §§goto(addr1885);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§^!u§.col1.x);
                                                                                                            if(!(_loc24_ && param1))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§^!u§.col1.x);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr1635:
                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1912);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1704);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1870);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1848);
                                                                                                                              }
                                                                                                                              §§goto(addr1892);
                                                                                                                           }
                                                                                                                           §§goto(addr1870);
                                                                                                                        }
                                                                                                                        §§goto(addr1635);
                                                                                                                     }
                                                                                                                     §§goto(addr1915);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr1931);
                                                                                                               }
                                                                                                               §§goto(addr1765);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1932);
                                                                                                      }
                                                                                                      §§goto(addr801);
                                                                                                   }
                                                                                                   §§goto(addr1719);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr801);
                                                                                    }
                                                                                    §§goto(addr1802);
                                                                                 }
                                                                                 addr640:
                                                                              }
                                                                              addr646:
                                                                              while(true)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<M§);
                                                                                    addr523:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§&?§);
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc23_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr535:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr536:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_ = §§pop();
                                                                                                   addr537:
                                                                                                   while(!_loc24_)
                                                                                                   {
                                                                                                      §§push(this.§8t§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr518:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            addr519:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§^Z§);
                                                                                                               if(_loc23_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(this.§&e§);
                                                                                                                  if(!(_loc24_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc24_ && this)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr763);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr766);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr741:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          addr744:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc23_ || _loc3_)
                                                                                          {
                                                                                             addr752:
                                                                                             §§push(this.m_s1);
                                                                                             if(_loc23_ || param1)
                                                                                             {
                                                                                                addr761:
                                                                                                §§goto(addr763);
                                                                                                §§push(_loc5_);
                                                                                             }
                                                                                             §§goto(addr763);
                                                                                          }
                                                                                          §§goto(addr767);
                                                                                       }
                                                                                       §§goto(addr763);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr635:
                                                                        }
                                                                        §§goto(addr643);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr691);
                                                               }
                                                               §§goto(addr766);
                                                            }
                                                            §§goto(addr763);
                                                         }
                                                         §§goto(addr715);
                                                      }
                                                      §§goto(addr741);
                                                   }
                                                   §§goto(addr640);
                                                }
                                                if(_loc24_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc15_);
                                                if(_loc23_ || this)
                                                {
                                                   if(!_loc24_)
                                                   {
                                                      §§goto(addr384);
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§goto(addr640);
                                                }
                                                §§goto(addr406);
                                             }
                                          }
                                          §§goto(addr763);
                                       }
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc24_)
                                    {
                                       §§goto(addr726);
                                    }
                                    §§goto(addr744);
                                 }
                              }
                           }
                           §§goto(addr655);
                        }
                     }
                     addr564:
                  }
                  §§goto(addr653);
               }
               if(!(_loc23_ || param1))
               {
                  continue;
               }
               §§goto(addr564);
               §§push(!§§pop());
            }
         }
         §§goto(addr513);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc37_:Boolean = false;
         var _loc38_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         §§push(_loc4_.m_sweep.a);
         if(!(_loc37_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep.a);
         if(!(_loc37_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc38_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(_loc38_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         var _loc18_:Boolean = false;
         §§push(0);
         if(!(_loc37_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:* = §§pop();
         var _loc20_:b2Mat22 = b2Mat22.§>!m§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§>!m§(_loc9_);
         _loc10_ = _loc20_;
         §§push(this.m_localAnchor1.x);
         if(!(_loc37_ && param1))
         {
            §§push(§§pop() - b2internal::'!.x);
            if(!(_loc37_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc38_)
         {
            §§push(§§pop() - b2internal::'!.y);
            if(!(_loc37_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc23_:* = §§pop();
         if(_loc38_)
         {
            §§push(_loc10_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr254:
               while(true)
               {
                  §§push(_loc22_);
                  addr255:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr256:
                     while(true)
                     {
                        §§push(_loc10_.col2);
                        addr258:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr259:
                           while(true)
                           {
                              §§push(_loc23_);
                              addr260:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr261:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr262:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr263:
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          addr264:
                                          while(true)
                                          {
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
         §§goto(addr181);
      }
   }
}
